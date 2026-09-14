#!/usr/bin/env python3
"""
verify.py  -  on-hardware verification of the MSDF trusted air picture
======================================================================
Captures the ZCU102's live UDP air picture and scores every fused track
against truth (truth_s3.npy, full state), reporting the full error breakdown:

    position RMSE (3D)      range / azimuth / elevation RMSE
    velocity RMSE (3D)      target hold rate
    + fused-vs-single-sensor position comparison (golden-model baselines)

  python verify.py            # capture from the board (UDP :5005), one full pass
  python verify.py --selftest # validate the scorer with synthetic data (no board)
"""
import sys, os, socket, struct
import numpy as np
import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt

HERE = os.path.dirname(os.path.abspath(__file__))   # this script's folder
def here(name): return os.path.join(HERE, name)

HDR = struct.Struct("<III")
TRK = struct.Struct("<IffffffB3xf")
AP_MAGIC = 0x4D534446
MATCH_GATE_M = 1000.0
GOLDEN = {"Radar only": 97.1, "IRST only": 5763.0, "RWR only": 4234.0}   # position RMSE [m]

IFF_NAME = {0:"UNKNOWN", 1:"FRIEND", 2:"HOSTILE"}

def parse(data):
    magic, epoch, n = HDR.unpack_from(data, 0)
    if magic != AP_MAGIC: return None
    tr=[]; off=HDR.size
    for _ in range(n):
        tid,x,y,z,vx,vy,vz,iff,sig = TRK.unpack_from(data, off); off+=TRK.size
        tr.append((x,y,z,vx,vy,vz,iff))     # keep IFF label for Stage E scoring
    return epoch, tr

def azel(p):
    x,y,z=p[0],p[1],p[2]
    return np.arctan2(y,x), np.arctan2(z,np.hypot(x,y)), np.sqrt(x*x+y*y+z*z)
def wrap(a): return (a+np.pi)%(2*np.pi)-np.pi

def score(frames, truth, friend=None):
    acc = dict(pos=0.0, rng=0.0, az=0.0, el=0.0, vel=0.0, n=0, active=0)
    iff = dict(fr_hit=0, fr_tot=0, fr_host=0, foe_ff=0, foe_tot=0)  # Stage E (if friend given)
    per=[]
    for epoch, tracks in frames:
        if epoch<40 or epoch>=truth.shape[0]: continue   # steady-state only (skip per-pass warm-up)
        tp = truth[epoch]; mask=~np.isnan(tp[:,0]); act=tp[mask]; oidx=np.where(mask)[0]
        acc['active'] += len(act); used=np.zeros(len(act),bool); e_pos=0.0; e_n=0
        for tk in tracks:
            if len(act)==0: continue
            d2=np.sum((act[:,:3]-np.array(tk[:3]))**2,axis=1); j=int(np.argmin(d2))
            if d2[j]<MATCH_GATE_M**2 and not used[j]:
                used[j]=True; g=act[j]
                acc['pos'] += d2[j]
                a1,e1,r1 = azel(tk); a2,e2,r2 = azel(g)
                acc['az'] += wrap(a1-a2)**2; acc['el'] += wrap(e1-e2)**2; acc['rng'] += (r1-r2)**2
                acc['vel'] += (tk[3]-g[3])**2 + (tk[4]-g[4])**2 + (tk[5]-g[5])**2
                acc['n'] += 1; e_pos+=d2[j]; e_n+=1
                if friend is not None and len(tk)>6:
                    lab=tk[6]; is_fr=bool(friend[oidx[j]])
                    if is_fr:
                        iff['fr_tot']+=1
                        if lab==1: iff['fr_hit']+=1
                        elif lab==2: iff['fr_host']+=1
                    else:
                        iff['foe_tot']+=1
                        if lab==1: iff['foe_ff']+=1
        per.append((epoch, np.sqrt(e_pos/e_n) if e_n else np.nan, int(used.sum()), len(act)))
    n=max(acc['n'],1)
    R=dict(pos=np.sqrt(acc['pos']/n), rng=np.sqrt(acc['rng']/n),
           az=np.degrees(np.sqrt(acc['az']/n)), el=np.degrees(np.sqrt(acc['el']/n)),
           vel=np.sqrt(acc['vel']/n), hold=100.0*acc['n']/max(acc['active'],1))
    if friend is not None and (iff['fr_tot']+iff['foe_tot'])>0:
        R['iff']=iff
    return R, per

def report(R, per, tag):
    print("\n"+"="*58)
    print(f"  ON-HARDWARE VERIFICATION  ({tag}, steady-state)")
    print("="*58)
    print("  Fused track error vs truth:")
    print(f"    Position RMSE (3D)   : {R['pos']:8.1f}  m")
    print(f"    Range    RMSE        : {R['rng']:8.1f}  m")
    print(f"    Azimuth  RMSE        : {R['az']:8.3f}  deg")
    print(f"    Elevation RMSE       : {R['el']:8.3f}  deg")
    print(f"    Velocity RMSE (3D)   : {R['vel']:8.1f}  m/s")
    print(f"    Target hold rate     : {R['hold']:8.1f}  %")
    print("  " + "-"*54)
    print("  Fused vs single sensor (position RMSE):")
    best=min(GOLDEN.values())
    print(f"    FUSED (this board)   : {R['pos']:8.1f}  m")
    for k,v in GOLDEN.items():
        print(f"    {k:<20} : {v:8.1f}  m   ({v/R['pos']:.1f}x worse)")
    if 'iff' in R:
        f=R['iff']; frt=max(f['fr_tot'],1); fot=max(f['foe_tot'],1)
        print("  " + "-"*54)
        print("  IFF labeling (Stage E) vs truth:")
        print(f"    Friend detection     : {100.0*f['fr_hit']/frt:8.1f}  %  (friends labeled FRIEND)")
        print(f"    False-friend         : {100.0*f['foe_ff']/fot:8.2f}  %  (foe labeled FRIEND - lets a hostile through)")
        print(f"    Friendly-fire        : {100.0*f['fr_host']/frt:8.2f}  %  (friend labeled HOSTILE)")
    print("="*58)
    print("  VERDICT:", "PASS - fused beats every single sensor"
          if R['pos']<best else "REVIEW", f"({R['pos']:.0f} m vs {best:.0f} m)\n")

    ep=[p[0] for p in per]; rm=[p[1] for p in per]
    fig,(a1,a2)=plt.subplots(1,2,figsize=(11,4.3)); fig.patch.set_facecolor("white")
    a1.plot(ep,rm,color="#0d7d94",lw=1.8); a1.axhline(R['pos'],color="#b9752a",ls="--",lw=1,label=f"mean {R['pos']:.0f} m")
    a1.set_xlabel("epoch"); a1.set_ylabel("position RMSE [m]"); a1.set_title("On-hardware fused position error")
    a1.legend(); a1.grid(alpha=.3)
    labels=["Position\n[m]","Range\n[m]","Azimuth\n[deg]","Elev\n[deg]","Velocity\n[m/s]"]
    vals=[R['pos'],R['rng'],R['az'],R['el'],R['vel']]
    a2.bar(range(5),vals,color=["#0d7d94","#3a5a9c","#5a7d2f","#8a6d3b","#b9752a"])
    a2.set_xticks(range(5)); a2.set_xticklabels(labels,fontsize=8); a2.set_title("Fused RMSE breakdown")
    for i,v in enumerate(vals): a2.text(i,v,f"{v:.2f}" if v<10 else f"{v:.0f}",ha='center',va='bottom',fontsize=8)
    out=here("verify_report.png"); fig.tight_layout(); fig.savefig(out,dpi=130); print("Saved report to:", out)

def collect_from_board():
    s=socket.socket(socket.AF_INET,socket.SOCK_DGRAM); s.bind(("0.0.0.0",5005))
    print("capturing one full scenario pass from the board (UDP :5005) ...")
    frames=[]; last=-1; wraps=0
    while True:
        data,_=s.recvfrom(65535); p=parse(data)
        if not p: continue
        e,tr=p; frames.append((e,tr))
        if e<last: wraps+=1
        last=e
        if wraps>=1 and len(frames)>=70: break
    return frames

def selftest(truth, friend=None):
    rng=np.random.default_rng(0); frames=[]
    for e in range(truth.shape[0]):
        mask=~np.isnan(truth[e][:,0]); act=truth[e][mask]; oidx=np.where(mask)[0]; tr=[]
        for n,g in enumerate(act):
            if rng.random()<0.97:
                pos=g[:3]+rng.normal(0,15,3); vel=g[3:6]+rng.normal(0,8,3)   # ~15 m/axis, ~8 m/s
                lab=0
                if friend is not None:                                       # synthesize plausible IFF labels
                    if friend[oidx[n]]: lab=1 if rng.random()<0.90 else 0
                    else:               lab=1 if rng.random()<0.04 else (2 if rng.random()<0.85 else 0)
                tr.append((pos[0],pos[1],pos[2],vel[0],vel[1],vel[2],lab))
        frames.append((e,tr))
    return frames

def main():
    truth=np.load(here("truth_s3.npy"))
    friend=None
    fpath=here("friend_mask.npy")
    if os.path.exists(fpath): friend=np.load(fpath)     # enables Stage E IFF scoring
    if "--selftest" in sys.argv:
        frames=selftest(truth, friend); tag="SELF-TEST (synthetic)"
    else:
        frames=collect_from_board(); tag="live board capture"
    R,per=score(frames,truth,friend); report(R,per,tag)

if __name__=="__main__":
    main()