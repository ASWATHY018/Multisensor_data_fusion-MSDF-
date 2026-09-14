"""
export_vectors.py  -  Golden -> HLS test-vector bridge
======================================================
Generates ONE batch of 100 track-epoch records that the HLS EKF core must
reproduce.  This is "inject point #2" from the workflow map: the same synthetic
scenario, now written as files the C++ testbench replays.

It implements, in float64, the EXACT algorithm the PL core runs:
    predict  ->  sequential per-component (scalar) Joseph update
so `expected.csv` is a bit-faithful reference for `ekf_core.cpp`.

Design note - the PS/PL split this encodes
------------------------------------------
The PS does the "extended" part (nonlinear h, Jacobian H, innovation y, all in
float) and hands the PL a stack of SCALAR measurement rows (H_row[6], y, r).
Because the sensor noise is uncorrelated (diagonal R), processing the rows one
at a time is mathematically identical to a batched update - but needs NO matrix
inversion, only a scalar divide.  That is the single best simplification for a
fixed-point fabric implementation.

Output files (written next to this script):
    stimulus.csv   - 100 rows, one per track:  id, x[6], P[36], nmeas, 7x(H[6],y,r)
    expected.csv   - 100 rows:                 id, x_post[6], P_post[36]
    FORMAT.txt     - the exact column layout

Run:  python3 export_vectors.py
"""
import os, numpy as np

HERE = os.path.dirname(os.path.abspath(__file__))
DEG = np.pi/180.0
DT  = 0.1
Q_SPECTRAL = 40.0
N  = 6
MAXM = 7                     # radar(3) + IRST(2) + RWR(2)
NTRACKS = 100
SENSOR = np.zeros(3)
SEED = 20260903

RADAR_R = np.array([20.0**2, (0.5*DEG)**2, (0.5*DEG)**2])
IRST_R  = np.array([(0.05*DEG)**2, (0.05*DEG)**2])
RWR_R   = np.array([(3.0*DEG)**2, (3.0*DEG)**2])

# ---- shared constant matrices F, Q (identical to the HLS core) --------------
def F_mat():
    F = np.eye(N); F[0:3,3:6] = np.eye(3)*DT; return F
def Q_mat():
    q=Q_SPECTRAL; I3=np.eye(3); Q=np.zeros((N,N))
    Q[0:3,0:3]=q*DT**3/3*I3; Q[0:3,3:6]=q*DT**2/2*I3
    Q[3:6,0:3]=q*DT**2/2*I3; Q[3:6,3:6]=q*DT*I3; return Q
F = F_mat(); Q = Q_mat()

# ---- nonlinear measurement models (the "E", done on PS in float) ------------
def h_radar(x):
    d=x[:3]-SENSOR; r=np.linalg.norm(d)
    return np.array([r, np.arctan2(d[1],d[0]), np.arctan2(d[2],np.hypot(d[0],d[1]))])
def H_radar(x):
    X,Y,Z=x[:3]-SENSOR; r2=X*X+Y*Y+Z*Z; r=np.sqrt(r2)
    rxy2=X*X+Y*Y; rxy=np.sqrt(rxy2); H=np.zeros((3,N))
    H[0,0:3]=[X/r,Y/r,Z/r]; H[1,0:3]=[-Y/rxy2,X/rxy2,0]
    H[2,0:3]=[-X*Z/(r2*rxy),-Y*Z/(r2*rxy),rxy/r2]; return H
def h_ang(x):
    d=x[:3]-SENSOR
    return np.array([np.arctan2(d[1],d[0]), np.arctan2(d[2],np.hypot(d[0],d[1]))])
def H_ang(x):
    X,Y,Z=x[:3]-SENSOR; r2=X*X+Y*Y+Z*Z; rxy2=X*X+Y*Y; rxy=np.sqrt(rxy2)
    H=np.zeros((2,N)); H[0,0:3]=[-Y/rxy2,X/rxy2,0]
    H[1,0:3]=[-X*Z/(r2*rxy),-Y*Z/(r2*rxy),rxy/r2]; return H
def wrap(a): return (a+np.pi)%(2*np.pi)-np.pi

# ---- the EXACT PL algorithm, in float64 (this is the reference) -------------
def predict(x,P):
    xp = F @ x
    Pp = F @ P @ F.T + Q
    Pp = 0.5*(Pp+Pp.T)
    return xp, Pp

def update_scalar(x, P, Hrow, y, r):
    Ph = P @ Hrow                 # 6-vector
    s  = Hrow @ Ph + r            # scalar innovation variance
    K  = Ph / s                   # 6-vector gain  (NO matrix inverse)
    x  = x + K*y
    A  = np.eye(N) - np.outer(K, Hrow)
    P  = A @ P @ A.T + r*np.outer(K,K)     # Joseph form
    P  = 0.5*(P+P.T)
    return x, P

def ekf_step(x_prev, P_prev, rows):
    x,P = predict(x_prev, P_prev)
    for (Hrow,y,r) in rows:
        x,P = update_scalar(x,P,Hrow,y,r)
    return x,P

# ---- scenario: make a target, run the filter to a random epoch, snapshot ----
def make_target(rng):
    rng_slant=rng.uniform(20000,60000); az0=rng.uniform(-40*DEG,40*DEG)
    alt=rng.uniform(3000,12000); rxy=np.sqrt(max(rng_slant**2-alt**2,1e6))
    p=np.array([rxy*np.cos(az0),rxy*np.sin(az0),alt])
    speed=rng.uniform(150,300); hd=rng.uniform(0,2*np.pi)
    v=np.array([speed*np.cos(hd),speed*np.sin(hd),rng.uniform(-20,20)])
    return p,v

def build_rows(x_pred, x_true, rng):
    """PS-side linearization: stack scalar measurement rows for all 3 sensors."""
    rows=[]
    # Radar (range, az, el)
    zt=h_radar(x_true); zt[0]+=rng.normal(0,np.sqrt(RADAR_R[0]))
    zt[1]+=rng.normal(0,np.sqrt(RADAR_R[1])); zt[2]+=rng.normal(0,np.sqrt(RADAR_R[2]))
    hp=h_radar(x_pred); Hr=H_radar(x_pred)
    for i in range(3):
        y=zt[i]-hp[i]
        if i>0: y=wrap(y)
        rows.append((Hr[i].copy(), y, RADAR_R[i]))
    # IRST (az, el) - very accurate angles
    zt=h_ang(x_true)+rng.normal(0,np.sqrt(IRST_R))
    hp=h_ang(x_pred); Ha=H_ang(x_pred)
    for i in range(2):
        rows.append((Ha[i].copy(), wrap(zt[i]-hp[i]), IRST_R[i]))
    # RWR (az, el) - coarse
    zt=h_ang(x_true)+rng.normal(0,np.sqrt(RWR_R))
    hp=h_ang(x_pred); Ha=H_ang(x_pred)
    for i in range(2):
        rows.append((Ha[i].copy(), wrap(zt[i]-hp[i]), RWR_R[i]))
    return rows   # exactly MAXM = 7 rows

def main():
    master=np.random.default_rng(SEED)
    P0=np.diag([120.0**2]*3+[60.0**2]*3)
    stim=np.zeros((NTRACKS, 1+N+N*N+1+MAXM*(N+2)))
    exp =np.zeros((NTRACKS, 1+N+N*N))

    for t in range(NTRACKS):
        rng=np.random.default_rng(master.integers(1<<31))
        p,v=make_target(rng)
        x=np.concatenate([p,v])+rng.multivariate_normal(np.zeros(N),P0)
        P=P0.copy()
        stop=rng.integers(80,250)          # warm up the covariance
        xt=np.concatenate([p,v])
        for k in range(stop):               # advance truth + filter
            xt=F@xt
            rows=build_rows(F@x, xt, rng)
            x,P=ekf_step(x,P,rows)
        # snapshot this epoch as the test record
        x_prev,P_prev=x.copy(),P.copy()
        xt=F@xt
        rows=build_rows(F@x_prev, xt, rng)
        x_post,P_post=ekf_step(x_prev,P_prev,rows)

        # ---- pack stimulus row ----
        col=[t]; col+=list(x_prev); col+=list(P_prev.flatten()); col+=[MAXM]
        for (Hrow,y,r) in rows: col+=list(Hrow)+[y,r]
        stim[t]=col
        exp[t]=[t]+list(x_post)+list(P_post.flatten())

    np.savetxt(os.path.join(HERE,"stimulus.csv"), stim, delimiter=",",
               fmt="%.10e", header="see FORMAT.txt", comments="# ")
    np.savetxt(os.path.join(HERE,"expected.csv"), exp, delimiter=",",
               fmt="%.10e", header="see FORMAT.txt", comments="# ")
    with open(os.path.join(HERE,"FORMAT.txt"),"w") as f:
        f.write(
"stimulus.csv  - %d rows, %d cols each:\n"
"  col 0        : track_id\n"
"  col 1..6     : x_prev[0..5]           (prior state)\n"
"  col 7..42    : P_prev[0..35]          (prior cov, row-major 6x6)\n"
"  col 43       : nmeas                  (= %d)\n"
"  col 44..99   : %d measurement rows, each 8 values: H[0..5], y, r\n"
"                 order: radar(rng,az,el), IRST(az,el), RWR(az,el)\n\n"
"expected.csv  - %d rows, 43 cols each:\n"
"  col 0        : track_id\n"
"  col 1..6     : x_post[0..5]           (posterior state)\n"
"  col 7..42    : P_post[0..35]          (posterior cov)\n\n"
"Constants (also hard-coded in ekf_core): DT=%.3f  Q_SPECTRAL=%.1f\n"
% (NTRACKS, stim.shape[1], MAXM, MAXM, NTRACKS, DT, Q_SPECTRAL))

    print(f"Wrote stimulus.csv ({stim.shape}), expected.csv ({exp.shape}), FORMAT.txt")
    print(f"  -> {os.path.join(HERE,'stimulus.csv')}")

if __name__=="__main__":
    main()