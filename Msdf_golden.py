"""
MSDF Engine - Phase 0 Golden Model
==================================
Double-precision Python reference for the FPGA Multi-Sensor Data Fusion engine.

This is the "definition of correct" for the whole project. Every later stage
(HLS float, then ap_fixed, then on-hardware) is measured as error RELATIVE to
what this script produces.

What it does
------------
1. Builds a truth trajectory for one airborne target (straight -> coordinated
   turn -> straight), sampled at the fusion epoch rate.
2. Simulates three kinematic sensors with realistic, complementary errors:
       Radar : range + azimuth + elevation   (good range, moderate angles)
       IRST  : azimuth + elevation           (excellent angles, NO range)
       RWR   : azimuth + elevation           (coarse angles, NO range)
   (IFF is identity/labelling, not kinematic - handled outside the filter.)
3. Runs a sequential-update Extended Kalman Filter (CV motion model) in four
   configurations: Radar-only, IRST-only, RWR-only, and Fused (all sensors).
4. Runs a Monte-Carlo ensemble and reports the metrics that prove the claim:
       - position / velocity RMSE vs truth
       - fused RMSE must be TIGHTER than any single sensor
       - NEES filter-consistency (is the reported covariance honest?)
5. Saves plots + a stats table.

Run:  python3 msdf_golden.py
"""

import numpy as np
import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
from dataclasses import dataclass

RNG_SEED = 20260903
DEG = np.pi / 180.0

# -----------------------------------------------------------------------------
# Scenario configuration
# -----------------------------------------------------------------------------
DT      = 0.1          # epoch [s]  (10 Hz sensor reports for this demo)
T_END   = 60.0         # scenario length [s]
N_MC    = 60           # Monte-Carlo runs
SENSOR  = np.array([0.0, 0.0, 0.0])   # sensor site at origin

# Sensor 1-sigma error specs (the "materials" of this subject)
RADAR_SIG = dict(rng=20.0,  az=0.5*DEG,  el=0.5*DEG)   # metres / radians
IRST_SIG  = dict(          az=0.05*DEG, el=0.05*DEG)   # angle-only, 10x sharper
RWR_SIG   = dict(          az=3.0*DEG,  el=3.0*DEG)    # coarse angle-only

# Process-noise spectral density (discrete white-noise acceleration) [m^2/s^3]
Q_SPECTRAL = 40.0

# -----------------------------------------------------------------------------
# Truth trajectory: straight -> coordinated turn -> straight
# -----------------------------------------------------------------------------
def make_truth():
    t = np.arange(0.0, T_END + DT/2, DT)
    n = len(t)
    pos = np.zeros((n, 3))
    vel = np.zeros((n, 3))
    p = np.array([40000.0, 6000.0, 8000.0])   # start ~41 km slant range
    v = np.array([-220.0, 90.0, 0.0])         # ~237 m/s
    turn_rate = 4.0 * DEG                       # 4 deg/s horizontal turn (~1.6 g)
    for k in range(n):
        pos[k] = p
        vel[k] = v
        tk = t[k]
        if 20.0 <= tk < 40.0:                   # coordinated turn phase
            c, s = np.cos(turn_rate*DT), np.sin(turn_rate*DT)
            vx, vy = v[0], v[1]
            v = np.array([c*vx - s*vy, s*vx + c*vy, v[2]])
        p = p + v * DT
    return t, pos, vel

# -----------------------------------------------------------------------------
# Measurement models  h(x)  and Jacobians  H(x)   (functions of position only)
# -----------------------------------------------------------------------------
def _rel(x):
    return x[:3] - SENSOR

def h_radar(x):
    d = _rel(x); r = np.linalg.norm(d)
    az = np.arctan2(d[1], d[0])
    el = np.arctan2(d[2], np.hypot(d[0], d[1]))
    return np.array([r, az, el])

def H_radar(x):
    d = _rel(x); X, Y, Z = d
    r2 = X*X + Y*Y + Z*Z; r = np.sqrt(r2)
    rxy2 = X*X + Y*Y; rxy = np.sqrt(rxy2)
    H = np.zeros((3, 6))
    H[0, 0:3] = [X/r, Y/r, Z/r]                                   # d range
    H[1, 0:3] = [-Y/rxy2, X/rxy2, 0.0]                            # d az
    H[2, 0:3] = [-X*Z/(r2*rxy), -Y*Z/(r2*rxy), rxy/r2]           # d el
    return H

def h_angles(x):
    d = _rel(x)
    az = np.arctan2(d[1], d[0])
    el = np.arctan2(d[2], np.hypot(d[0], d[1]))
    return np.array([az, el])

def H_angles(x):
    d = _rel(x); X, Y, Z = d
    r2 = X*X + Y*Y + Z*Z
    rxy2 = X*X + Y*Y; rxy = np.sqrt(rxy2)
    H = np.zeros((2, 6))
    H[0, 0:3] = [-Y/rxy2, X/rxy2, 0.0]
    H[1, 0:3] = [-X*Z/(r2*rxy), -Y*Z/(r2*rxy), rxy/r2]
    return H

def wrap(a):
    return (a + np.pi) % (2*np.pi) - np.pi

@dataclass
class Sensor:
    name: str
    h: callable
    H: callable
    R: np.ndarray
    ang_idx: tuple   # which measurement rows are angles (need residual wrap)

def build_sensors():
    radar = Sensor("Radar", h_radar, H_radar,
                   np.diag([RADAR_SIG['rng']**2, RADAR_SIG['az']**2, RADAR_SIG['el']**2]),
                   ang_idx=(1, 2))
    irst  = Sensor("IRST", h_angles, H_angles,
                   np.diag([IRST_SIG['az']**2, IRST_SIG['el']**2]), ang_idx=(0, 1))
    rwr   = Sensor("RWR", h_angles, H_angles,
                   np.diag([RWR_SIG['az']**2, RWR_SIG['el']**2]), ang_idx=(0, 1))
    return radar, irst, rwr

# -----------------------------------------------------------------------------
# EKF   (constant-velocity model, sequential per-sensor update, Joseph form)
# -----------------------------------------------------------------------------
def F_matrix():
    F = np.eye(6); F[0:3, 3:6] = np.eye(3) * DT
    return F

def Q_matrix():
    q = Q_SPECTRAL
    I3 = np.eye(3)
    Q = np.zeros((6, 6))
    Q[0:3, 0:3] = q * DT**3 / 3 * I3
    Q[0:3, 3:6] = q * DT**2 / 2 * I3
    Q[3:6, 0:3] = q * DT**2 / 2 * I3
    Q[3:6, 3:6] = q * DT * I3
    return Q

class EKF:
    def __init__(self, x0, P0):
        self.x = x0.copy(); self.P = P0.copy()
        self.F = F_matrix(); self.Q = Q_matrix()

    def predict(self):
        self.x = self.F @ self.x
        self.P = self.F @ self.P @ self.F.T + self.Q
        self.P = 0.5 * (self.P + self.P.T)     # enforce symmetry

    def update(self, z, sensor: Sensor):
        H = sensor.H(self.x); R = sensor.R
        y = z - sensor.h(self.x)
        for i in sensor.ang_idx:
            y[i] = wrap(y[i])
        S = H @ self.P @ H.T + R
        # Solve, don't invert:  K = P H^T S^-1   via  K S = P H^T
        PHt = self.P @ H.T
        K = np.linalg.solve(S.T, PHt.T).T
        self.x = self.x + K @ y
        # Joseph-form covariance update (symmetric, positive-definite preserving)
        I = np.eye(6)
        A = I - K @ H
        self.P = A @ self.P @ A.T + K @ R @ K.T
        self.P = 0.5 * (self.P + self.P.T)

# -----------------------------------------------------------------------------
# One Monte-Carlo run for one sensor configuration
# -----------------------------------------------------------------------------
def simulate_measurements(pos, rng):
    """Pre-generate noisy measurements for every sensor at every epoch."""
    n = len(pos)
    radar, irst, rwr = build_sensors()
    meas = {"Radar": [], "IRST": [], "RWR": []}
    for k in range(n):
        x = np.concatenate([pos[k], np.zeros(3)])
        for s in (radar, irst, rwr):
            noise = rng.multivariate_normal(np.zeros(len(s.R)), s.R)
            meas[s.name].append(s.h(x) + noise)
    return meas, (radar, irst, rwr)

def run_config(pos, vel, meas, sensors, use_names, x0, P0):
    n = len(pos)
    ekf = EKF(x0, P0)
    est = np.zeros((n, 6)); nees = np.zeros(n)
    sensors_by_name = {s.name: s for s in sensors}
    for k in range(n):
        ekf.predict()
        for name in use_names:
            s = sensors_by_name[name]
            ekf.update(np.asarray(meas[name][k]), s)
        est[k] = ekf.x
        truth = np.concatenate([pos[k], vel[k]])
        e = ekf.x - truth
        nees[k] = e @ np.linalg.solve(ekf.P, e)
    return est, nees

# -----------------------------------------------------------------------------
# Monte-Carlo driver
# -----------------------------------------------------------------------------
def main():
    t, pos, vel = make_truth()
    n = len(t)
    configs = {
        "Radar only": ["Radar"],
        "IRST only":  ["IRST"],
        "RWR only":   ["RWR"],
        "Fused (all)": ["Radar", "IRST", "RWR"],
    }
    # Common initialisation for a fair comparison of steady-state tracking
    P0 = np.diag([120.0**2]*3 + [60.0**2]*3)

    sq_pos = {c: np.zeros(n) for c in configs}   # accumulate squared pos error
    sq_vel = {c: np.zeros(n) for c in configs}
    nees_acc = {c: np.zeros(n) for c in configs}

    master = np.random.default_rng(RNG_SEED)
    example_est = {}   # keep one run for the trajectory plot

    for mc in range(N_MC):
        rng = np.random.default_rng(master.integers(1 << 31))
        meas, sensors = simulate_measurements(pos, rng)
        # start each filter from truth + a random offset drawn from P0
        x0_truth = np.concatenate([pos[0], vel[0]])
        x0 = x0_truth + rng.multivariate_normal(np.zeros(6), P0)
        for c, names in configs.items():
            est, nees = run_config(pos, vel, meas, sensors, names, x0, P0)
            perr = est[:, 0:3] - pos
            verr = est[:, 3:6] - vel
            sq_pos[c] += np.sum(perr**2, axis=1)
            sq_vel[c] += np.sum(verr**2, axis=1)
            nees_acc[c] += nees
            if mc == 0:
                example_est[c] = est

    rmse_pos = {c: np.sqrt(sq_pos[c] / N_MC) for c in configs}
    rmse_vel = {c: np.sqrt(sq_vel[c] / N_MC) for c in configs}
    nees_avg = {c: nees_acc[c] / N_MC for c in configs}

    # ---- steady-state stats (ignore first 5 s of convergence) ----
    ss = t >= 5.0
    print("\n" + "="*66)
    print("  MSDF GOLDEN MODEL - fused-vs-truth statistics")
    print(f"  {N_MC} Monte-Carlo runs | {n} epochs @ {1/DT:.0f} Hz | "
          f"target ~{np.linalg.norm(pos[0])/1000:.0f} km")
    print("="*66)
    print(f"  {'Configuration':<15}{'Pos RMSE [m]':>14}{'Vel RMSE [m/s]':>16}"
          f"{'mean NEES':>12}")
    print("  " + "-"*62)
    for c in configs:
        p_rmse = np.sqrt(np.mean(rmse_pos[c][ss]**2))
        v_rmse = np.sqrt(np.mean(rmse_vel[c][ss]**2))
        nz = np.mean(nees_avg[c][ss])
        print(f"  {c:<15}{p_rmse:>14.1f}{v_rmse:>16.2f}{nz:>12.2f}")
    print("  " + "-"*62)
    print("  NEES consistency target ~ 6.0 (state dimension)")

    best_single = min(
        np.sqrt(np.mean(rmse_pos[c][ss]**2)) for c in configs if c != "Fused (all)")
    fused = np.sqrt(np.mean(rmse_pos["Fused (all)"][ss]**2))
    print("="*66)
    print(f"  CLAIM CHECK: fused pos RMSE = {fused:.1f} m  vs  "
          f"best single sensor = {best_single:.1f} m")
    verdict = "PASS - fused is tighter" if fused < best_single else "FAIL"
    print(f"  --> {verdict}  ({100*(1-fused/best_single):.0f}% tighter)")
    print("="*66 + "\n")

    make_plots(t, pos, vel, example_est, rmse_pos, nees_avg, configs)
    return fused, best_single

# -----------------------------------------------------------------------------
# Plots
# -----------------------------------------------------------------------------
COL = {"Radar only":"#b9752a", "IRST only":"#3a5a9c",
       "RWR only":"#8a8f98", "Fused (all)":"#0d7d94"}

def make_plots(t, pos, vel, est, rmse_pos, nees_avg, configs):
    # 1) top-down trajectory (one example run)
    fig, ax = plt.subplots(figsize=(7.5, 6))
    ax.plot(pos[:,0]/1000, pos[:,1]/1000, 'k-', lw=2.2, label="Truth", zorder=5)
    for c in configs:
        e = est[c]
        ax.plot(e[:,0]/1000, e[:,1]/1000, color=COL[c], lw=1.1, alpha=.85, label=c)
    ax.scatter([0],[0], c='#b23b3b', marker='^', s=90, zorder=6, label="Sensor site")
    ax.set_xlabel("East  [km]"); ax.set_ylabel("North  [km]")
    ax.set_title("Top-down track estimates (one Monte-Carlo run)")
    ax.legend(fontsize=8, loc="best"); ax.grid(alpha=.3); ax.set_aspect('equal', 'datalim')
    fig.tight_layout(); fig.savefig("msdf_trajectory.png", dpi=130)

    # 2) position RMSE vs time
    fig, ax = plt.subplots(figsize=(8, 4.6))
    for c in configs:
        ax.plot(t, rmse_pos[c], color=COL[c], lw=1.8, label=c)
    ax.axvspan(20, 40, color='#000', alpha=.05, label="maneuver")
    ax.set_yscale('log')
    ax.set_xlabel("Time  [s]"); ax.set_ylabel("Position RMSE  [m]  (log)")
    ax.set_title(f"Position RMSE vs truth  ({N_MC} MC runs)")
    ax.legend(fontsize=8, ncol=2); ax.grid(alpha=.3, which='both')
    fig.tight_layout(); fig.savefig("msdf_rmse.png", dpi=130)

    # 3) bar chart (steady-state) + NEES consistency
    ss = t >= 5.0
    fig, (a1, a2) = plt.subplots(1, 2, figsize=(11, 4.4))
    names = list(configs.keys())
    vals = [np.sqrt(np.mean(rmse_pos[c][ss]**2)) for c in names]
    bars = a1.bar(range(len(names)), vals, color=[COL[c] for c in names])
    a1.set_xticks(range(len(names))); a1.set_xticklabels(names, rotation=20, ha='right', fontsize=8)
    a1.set_ylabel("Steady-state position RMSE  [m]")
    a1.set_title("Fused beats every single sensor")
    for b, v in zip(bars, vals):
        a1.text(b.get_x()+b.get_width()/2, v, f"{v:.0f}", ha='center', va='bottom', fontsize=8)

    for c in configs:
        a2.plot(t, nees_avg[c], color=COL[c], lw=1.3, label=c, alpha=.85)
    a2.axhline(6.0, color='k', ls='--', lw=1, label="ideal (n=6)")
    a2.set_ylim(0, 20)
    a2.set_xlabel("Time  [s]"); a2.set_ylabel("mean NEES")
    a2.set_title("Filter consistency (covariance honesty)")
    a2.legend(fontsize=7, ncol=2); a2.grid(alpha=.3)
    fig.tight_layout(); fig.savefig("msdf_stats.png", dpi=130)
    print("Saved: msdf_trajectory.png, msdf_rmse.png, msdf_stats.png")

if __name__ == "__main__":
    main()