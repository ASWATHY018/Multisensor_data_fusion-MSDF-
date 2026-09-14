#!/usr/bin/env python3
"""
gui.py  -  MSDF trusted air-picture display (Stage D)
=====================================================
Listens for UDP air-picture datagrams from the ZCU102 (format: airpicture.h)
and renders a live tactical plan view: sensor-centred East-North, range rings,
bearing lines, tracks coloured by IFF with velocity leaders and id labels.

Run live:   python3 gui.py                 # listens on UDP :5005
Demo frame: python3 gui.py --demo out.png  # render one synthetic frame to PNG

Packet layout (must match airpicture.h, little-endian, packed):
  header : uint32 magic(0x4D534446) , uint32 epoch , uint32 ntracks
  track  : uint32 id, float x,y,z, float vx,vy,vz, uint8 iff, 3x pad, float sigma
"""
import sys, socket, struct
import numpy as np
import matplotlib
matplotlib.use("Agg" if "--demo" in sys.argv else "TkAgg")
import matplotlib.pyplot as plt
from matplotlib.patches import Circle

AP_MAGIC = 0x4D534446
AP_PORT  = 5005
HDR = struct.Struct("<III")
TRK = struct.Struct("<IffffffB3xf")     # 36 bytes
IFF_COL = {0:("#8b98a8","UNKNOWN"), 1:("#39c5c8","FRIEND"), 2:("#e0524c","HOSTILE")}

def parse(data):
    magic, epoch, n = HDR.unpack_from(data, 0)
    if magic != AP_MAGIC: return None
    tr=[]
    off = HDR.size
    for _ in range(n):
        tid,x,y,z,vx,vy,vz,iff,sig = TRK.unpack_from(data, off); off += TRK.size
        tr.append(dict(id=tid,x=x,y=y,z=z,vx=vx,vy=vy,vz=vz,iff=iff,sig=sig))
    return epoch, tr

# ---- rendering -------------------------------------------------------------
def style_axes(ax, rng_km=120):
    ax.set_facecolor("#0a1017")
    ax.set_xlim(-rng_km, rng_km); ax.set_ylim(-rng_km, rng_km)     # full all-around scope
    ax.set_aspect("equal")
    for r in range(20, rng_km+1, 20):                       # range rings
        ax.add_patch(Circle((0,0), r, fill=False, ec="#1c3040", lw=0.8, zorder=1))
        ax.text(0, r, f"{r}", color="#3d5568", fontsize=7, ha="center", va="bottom", zorder=1)
    for b in range(0, 360, 30):                             # bearing spokes
        a=np.radians(b); ax.plot([0, rng_km*np.sin(a)],[0, rng_km*np.cos(a)],
                                 color="#152430", lw=0.6, zorder=1)
    ax.plot(0,0, marker="^", ms=11, color="#e0a54c", zorder=6)  # sensor site
    ax.tick_params(colors="#3d5568", labelsize=7)
    for s in ax.spines.values(): s.set_color("#1c3040")

def draw(ax, epoch, tracks):
    ax.clear(); style_axes(ax)
    counts={0:0,1:0,2:0}
    for t in tracks:
        ex,ny = t["x"]/1000.0, t["y"]/1000.0           # m -> km, East/North
        col,_ = IFF_COL.get(t["iff"], IFF_COL[0]); counts[t["iff"]]=counts.get(t["iff"],0)+1
        # velocity leader (10 s ahead)
        lx,ly = (t["x"]+t["vx"]*10)/1000.0, (t["y"]+t["vy"]*10)/1000.0
        ax.plot([ex,lx],[ny,ly], color=col, lw=1.1, alpha=.8, zorder=4)
        ax.add_patch(Circle((ex,ny), max(t["sig"]/1000.0,0.4), fill=False, ec=col, lw=0.7, alpha=.5, zorder=3))
        ax.plot(ex,ny, marker="o", ms=5, color=col, zorder=5)
        ax.text(ex+1.5, ny+1.5, f"{t['id']:04d}", color=col, fontsize=6.5, zorder=5)
    # header / legend
    ax.set_title(f"TRUSTED AIR PICTURE   epoch {epoch:>4}   |   {len(tracks)} tracks",
                 color="#cdd9e5", fontsize=11, family="monospace", loc="left", pad=10)
    leg = f"FRIEND {counts.get(1,0)}   HOSTILE {counts.get(2,0)}   UNKNOWN {counts.get(0,0)}"
    ax.text(-0.99, -0.99, leg, transform=ax.transAxes, color="#8b98a8",
            fontsize=8, family="monospace", va="bottom")
    ax.set_xlabel("East [km]", color="#3d5568", fontsize=8)
    ax.set_ylabel("North [km]", color="#3d5568", fontsize=8)

# ---- demo synthetic frame --------------------------------------------------
def demo_tracks(n=28, seed=7):
    rng=np.random.default_rng(seed); tr=[]
    for k in range(n):
        rs=rng.uniform(25,110)*1000; al=rng.uniform(2,14)*1000
        rxy=np.sqrt(max(rs**2-al**2,1e6))
        az=rng.uniform(0,2*np.pi)                          # full 360-degree spread
        x=rxy*np.cos(az); y=rxy*np.sin(az)                # East, North [m]
        sp=rng.uniform(160,300); hd=rng.uniform(0,2*np.pi)
        iff=int(rng.choice([0,1,2],p=[0.3,0.4,0.3]))
        tr.append(dict(id=100+k,x=x,y=y,z=al,vx=sp*np.cos(hd),vy=sp*np.sin(hd),vz=0,iff=iff,sig=rng.uniform(15,40)))
    return tr

def main():
    if "--demo" in sys.argv:
        out = sys.argv[sys.argv.index("--demo")+1] if len(sys.argv)>sys.argv.index("--demo")+1 else "gui_demo.png"
        fig=plt.figure(figsize=(8.4,8.4)); fig.patch.set_facecolor("#0a1017")
        ax=fig.add_axes([0.08,0.06,0.88,0.88])
        draw(ax, 137, demo_tracks())
        fig.savefig(out, dpi=130, facecolor="#0a1017"); print("wrote", out); return
    # live
    sock=socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    sock.bind(("0.0.0.0", AP_PORT)); sock.setblocking(False)
    fig=plt.figure(figsize=(8.4,8.4)); fig.patch.set_facecolor("#0a1017")
    ax=fig.add_axes([0.08,0.06,0.88,0.88])
    state={"epoch":0,"tracks":[]}
    def update(_):
        try:
            while True:
                data,_a=sock.recvfrom(65535)
                p=parse(data)
                if p: state["epoch"],state["tracks"]=p
        except BlockingIOError: pass
        draw(ax, state["epoch"], state["tracks"])
    from matplotlib.animation import FuncAnimation
    ani=FuncAnimation(fig, update, interval=100)   # 10 Hz refresh
    plt.show()

if __name__=="__main__":
    main()