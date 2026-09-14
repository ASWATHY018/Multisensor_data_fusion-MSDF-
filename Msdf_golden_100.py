"""
MSDF Golden Model - 100-TARGET accuracy verification
====================================================
Extends the single-target golden model to a POPULATION of 100 targets to answer:
"Does the fusion hold weapons-quality accuracy across 100 tracks, not just one?"

IMPORTANT - what this does and does NOT verify
----------------------------------------------
  VERIFIES (here):   per-target ACCURACY at scale - every one of 100 targets
                     must stay tighter fused than radar-alone. Association is
                     assumed perfect (target identity known), so this isolates
                     the filter + fusion math from the association problem.
  DOES NOT verify:   TIMING (100 tracks within the fabric budget) -> that is
                     proven by HLS C/RTL co-simulation and on-hardware timers.
                     TRACK-LEVEL quality (OSPA / ID-switches) -> needs the
                     association stage, added in a later step.

Run:  python3 msdf_golden_100.py
"""

import numpy as np
import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt

RNG_SEED = 20260903
DEG = np.pi / 180.0

DT       = 0.1
T_END    = 40.0
N_TARGETS = 100
MC_PER_TGT = 5          # runs per target to stabilise its RMSE estimate
Q_SPECTRAL = 40.0
SENSOR = np.array([0.0, 0.0, 0.0])

RADAR_SIG = dict(rng=20.0,  az=0.5*DEG,  el=0.5*DEG)
IRST_SIG  = dict(az=0.05*DEG, el=0.05*DEG)
RWR_SIG   = dict(az=3.0*DEG,  el=3.0*DEG)

WEAPONS_QUALITY_M = 50.0   # illustrative accuracy gate [m] (program-defined)

# -----------------------------------------------------------------------------
def make_target(rng):
    """One random airborne target: placed in the forward sector, ~40% maneuver."""
    rng_km  = rng.uniform(20000, 60000)
    az0     = rng.uniform(-40*DEG, 40*DEG)
    alt     = rng.uniform(3000, 12000)
    rxy     = np.sqrt(max(rng_km**2 - alt**2, 1e6))
    p = np.array([rxy*np.cos(az0), rxy*np.sin(az0), alt])
    speed   = rng.uniform(150, 300)
    heading = rng.uniform(0, 2*np.pi)
    v = np.array([speed*np.cos(heading), speed*np.sin(heading),
                  rng.uniform(-20, 20)])

    maneuvers = rng.random() < 0.4
    t_turn0 = rng.uniform(8, 20); t_turn1 = t_turn0 + rng.uniform(8, 15)
    omega   = rng.choice([-1, 1]) * rng.uniform(2, 5) * DEG

    t = np.arange(0.0, T_END + DT/2, DT); n = len(t)
    pos = np.zeros((n, 3)); vel = np.zeros((n, 3))
    for k in range(n):
        pos[k] = p; vel[k] = v
        if maneuvers and t_turn0 <= t[k] < t_turn1:
            c, s = np.cos(omega*DT), np.sin(omega*DT)
            vx, vy = v[0], v[1]
            v = np.array([c*vx - s*vy, s*vx + c*vy, v[2]])
        p = p + v * DT
    return t, pos, vel

# ---- measurement models (position-only dependence) --------------------------
def h_radar(x):
    d = x[:3]-SENSOR; r = np.linalg.norm(d)
    return np.array([r, np.arctan2(d[1], d[0]),
                     np.arctan2(d[2], np.hypot(d[0], d[1]))])
def H_radar(x):
    X, Y, Z = x[:3]-SENSOR
    r2 = X*X+Y*Y+Z*Z; r = np.sqrt(r2); rxy2 = X*X+Y*Y; rxy = np.sqrt(rxy2)
    H = np.zeros((3, 6))
    H[0,0:3] = [X/r, Y/r, Z/r]
    H[1,0:3] = [-Y/rxy2, X/rxy2, 0]
    H[2,0:3] = [-X*Z/(r2*rxy), -Y*Z/(r2*rxy), rxy/r2]
    return H
def h_ang(x):
    d = x[:3]-SENSOR
    return np.array([np.arctan2(d[1], d[0]),
                     np.arctan2(d[2], np.hypot(d[0], d[1]))])
def H_ang(x):
    X, Y, Z = x[:3]-SENSOR
    r2 = X*X+Y*Y+Z*Z; rxy2 = X*X+Y*Y; rxy = np.sqrt(rxy2)
    H = np.zeros((2, 6))
    H[0,0:3] = [-Y/rxy2, X/rxy2, 0]
    H[1,0:3] = [-X*Z/(r2*rxy), -Y*Z/(r2*rxy), rxy/r2]
    return H
def wrap(a): return (a+np.pi) % (2*np.pi) - np.pi

SENSORS = {
    "Radar": dict(h=h_radar, H=H_radar,
                  R=np.diag([RADAR_SIG['rng']**2, RADAR_SIG['az']**2, RADAR_SIG['el']**2]),
                  ang=(1,2)),
    "IRST":  dict(h=h_ang, H=H_ang, R=np.diag([IRST_SIG['az']**2, IRST_SIG['el']**2]), ang=(0,1)),
    "RWR":   dict(h=h_ang, H=H_ang, R=np.diag([RWR_SIG['az']**2, RWR_SIG['el']**2]),  ang=(0,1)),
}

def F_mat():
    F = np.eye(6); F[0:3,3:6] = np.eye(3)*DT; return F
def Q_mat():
    q=Q_SPECTRAL; I3=np.eye(3); Q=np.zeros((6,6))
    Q[0:3,0:3]=q*DT**3/3*I3; Q[0:3,3:6]=q*DT**2/2*I3
    Q[3:6,0:3]=q*DT**2/2*I3; Q[3:6,3:6]=q*DT*I3; return Q
F = F_mat(); Q = Q_mat()

def run_filter(pos, vel, meas, use, x0, P0):
    x = x0.copy(); P = P0.copy(); n = len(pos)
    err2 = np.zeros(n)
    for k in range(n):
        x = F @ x; P = F @ P @ F.T + Q; P = 0.5*(P+P.T)
        for name in use:
            s = SENSORS[name]; H = s['H'](x); R = s['R']
            y = meas[name][k] - s['h'](x)
            for i in s['ang']: y[i] = wrap(y[i])
            S = H @ P @ H.T + R
            K = np.linalg.solve(S.T, (P @ H.T).T).T
            x = x + K @ y
            A = np.eye(6) - K @ H
            P = A @ P @ A.T + K @ R @ K.T; P = 0.5*(P+P.T)
        err2[k] = np.sum((x[0:3]-pos[k])**2)
    return err2

# -----------------------------------------------------------------------------
def main():
    master = np.random.default_rng(RNG_SEED)
    P0 = np.diag([120.0**2]*3 + [60.0**2]*3)
    ss = None
    fused_rmse = np.zeros(N_TARGETS)
    radar_rmse = np.zeros(N_TARGETS)
    all_truth = []

    for ti in range(N_TARGETS):
        rng = np.random.default_rng(master.integers(1 << 31))
        t, pos, vel = make_target(rng)
        all_truth.append(pos)
        if ss is None: ss = t >= 5.0
        f_e2 = np.zeros(len(t)); r_e2 = np.zeros(len(t))
        for _ in range(MC_PER_TGT):
            meas = {name: [SENSORS[name]['h'](np.concatenate([pos[k], np.zeros(3)]))
                           + rng.multivariate_normal(np.zeros(len(SENSORS[name]['R'])),
                                                     SENSORS[name]['R'])
                           for k in range(len(t))] for name in SENSORS}
            x0 = np.concatenate([pos[0], vel[0]]) + rng.multivariate_normal(np.zeros(6), P0)
            f_e2 += run_filter(pos, vel, meas, ["Radar","IRST","RWR"], x0, P0)
            r_e2 += run_filter(pos, vel, meas, ["Radar"], x0, P0)
        fused_rmse[ti] = np.sqrt(np.mean((f_e2/MC_PER_TGT)[ss]))
        radar_rmse[ti] = np.sqrt(np.mean((r_e2/MC_PER_TGT)[ss]))

    # ---- population statistics ----
    def pct(a, p): return np.percentile(a, p)
    frac_better = np.mean(fused_rmse < radar_rmse) * 100
    frac_wq = np.mean(fused_rmse <= WEAPONS_QUALITY_M) * 100

    print("\n" + "="*70)
    print(f"  100-TARGET ACCURACY VERIFICATION  ({N_TARGETS} targets, "
          f"{MC_PER_TGT} runs each, perfect association)")
    print("="*70)
    print(f"  {'Metric':<34}{'Fused':>12}{'Radar only':>14}")
    print("  " + "-"*60)
    print(f"  {'Mean position RMSE   [m]':<34}{np.mean(fused_rmse):>12.1f}{np.mean(radar_rmse):>14.1f}")
    print(f"  {'Median position RMSE [m]':<34}{np.median(fused_rmse):>12.1f}{np.median(radar_rmse):>14.1f}")
    print(f"  {'95th-pctile RMSE     [m]':<34}{pct(fused_rmse,95):>12.1f}{pct(radar_rmse,95):>14.1f}")
    print(f"  {'Worst-case RMSE      [m]':<34}{np.max(fused_rmse):>12.1f}{np.max(radar_rmse):>14.1f}")
    print("  " + "-"*60)
    print(f"  Targets where fused < radar-alone : {frac_better:.0f} %  "
          f"(must be ~100%)")
    print(f"  Targets within {WEAPONS_QUALITY_M:.0f} m gate (fused): {frac_wq:.0f} %")
    print("="*70)
    verdict = "PASS" if frac_better > 99 else "REVIEW"
    print(f"  POPULATION VERDICT: {verdict} - fusion tighter across the fleet")
    print("="*70 + "\n")

    make_plots(fused_rmse, radar_rmse, all_truth)

def make_plots(fused, radar, truth):
    # 1) scatter: fused vs radar per target
    fig, ax = plt.subplots(figsize=(6.6, 6))
    lim = max(radar.max(), fused.max())*1.1
    ax.plot([0, lim], [0, lim], 'k--', lw=1, alpha=.6, label="equal accuracy")
    ax.scatter(radar, fused, c="#0d7d94", s=28, alpha=.75, edgecolor='white', lw=.5)
    ax.axhline(WEAPONS_QUALITY_M, color="#b23b3b", ls=':', lw=1.2,
               label=f"{WEAPONS_QUALITY_M:.0f} m gate")
    ax.set_xlabel("Radar-only position RMSE  [m]")
    ax.set_ylabel("Fused position RMSE  [m]")
    ax.set_title("Every target: fused vs radar-alone\n(points below the line = fusion wins)")
    ax.set_xlim(0, lim); ax.set_ylim(0, lim); ax.legend(fontsize=8); ax.grid(alpha=.3)
    fig.tight_layout(); fig.savefig("msdf100_scatter.png", dpi=130)

    # 2) histogram of fused RMSE across the fleet
    fig, ax = plt.subplots(figsize=(8, 4.4))
    ax.hist(fused, bins=22, color="#0d7d94", alpha=.85, edgecolor='white')
    ax.axvline(WEAPONS_QUALITY_M, color="#b23b3b", ls='--', lw=1.5,
               label=f"{WEAPONS_QUALITY_M:.0f} m weapons-quality gate")
    ax.axvline(np.median(fused), color="#b9752a", ls='-', lw=1.5,
               label=f"median {np.median(fused):.0f} m")
    ax.set_xlabel("Fused position RMSE per target  [m]")
    ax.set_ylabel("Number of targets")
    ax.set_title("Fused accuracy distribution across 100 targets")
    ax.legend(fontsize=8); ax.grid(alpha=.3, axis='y')
    fig.tight_layout(); fig.savefig("msdf100_hist.png", dpi=130)

    # 3) the 100-target scene (truth tracks, top-down)
    fig, ax = plt.subplots(figsize=(7.5, 6.4))
    for pos in truth:
        ax.plot(pos[:,0]/1000, pos[:,1]/1000, lw=.8, alpha=.55, color="#3a5a9c")
        ax.scatter(pos[0,0]/1000, pos[0,1]/1000, s=6, color="#0d7d94")
    ax.scatter([0],[0], c='#b23b3b', marker='^', s=110, zorder=6, label="Sensor site")
    ax.set_xlabel("East  [km]"); ax.set_ylabel("North  [km]")
    ax.set_title("100-target scenario (truth trajectories)")
    ax.legend(fontsize=8); ax.grid(alpha=.3); ax.set_aspect('equal', 'datalim')
    fig.tight_layout(); fig.savefig("msdf100_scene.png", dpi=130)
    print("Saved: msdf100_scatter.png, msdf100_hist.png, msdf100_scene.png")

if __name__ == "__main__":
    main()