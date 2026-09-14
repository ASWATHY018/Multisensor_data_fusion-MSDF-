#!/usr/bin/env python3
"""
sensor_sim.py  -  Stage D2 live sensor simulator (PC -> ZCU102)
================================================================
Streams per-epoch radar / IRST / RWR / IFF detections to the board over UDP
:5006 (format: sensordet.h), so the board fuses a LIVE feed instead of the
canned scenario3.h. Two sources:

  replay (default) : replays truth_s3.npy as noisy detections + friend replies.
                     Directly comparable to verify.py (same truth, same friends).
  live   (--live)  : pulls real aircraft from the OpenSky Network over a region
                     and treats them as truth, so the board tracks real flights
                     in real time. (needs `pip install requests`; a free OpenSky
                     account is recommended for usable rate limits.)

Usage:
  python sensor_sim.py --board 192.168.1.10
  python sensor_sim.py --board 192.168.1.10 --hz 10
  python sensor_sim.py --board 192.168.1.10 --live --lat 51.15 --lon 6.8 --span 3.0
         # ^ default provider adsb.lol: FREE, no account, no key. Just works.
  python sensor_sim.py --board 192.168.1.10 --live --provider airplanes   # alt free mirror
  python sensor_sim.py --board 192.168.1.10 --live --provider opensky \
         --client-id YOUR_CLIENT_ID --client-secret YOUR_CLIENT_SECRET     # OpenSky (needs OAuth2 client)

Live sources: adsblol / airplanes / adsbfi / adsbone are community ADS-B feeds
that need NO account or key (~1 req/s). OpenSky dropped username/password and
now needs an OAuth2 client_id/secret; its anonymous tier is heavily throttled
(HTTP 429), so prefer the adsb.* providers when you have no credentials.

Match the board: BOARD_IP in main_tracker_net_d2.c must equal --board, and the
board sends the air picture back to airpicture_net.c's GUI_IP (run gui.py /
verify.py on that PC).
"""
import sys, os, socket, struct, time, argparse, math
import numpy as np

HERE = os.path.dirname(os.path.abspath(__file__))
def here(n): return os.path.join(HERE, n)

# ---- must match sensordet.h ------------------------------------------------
SD_MAGIC = 0x53454E31
SD_PORT  = 5006
SD_RADAR, SD_IRST, SD_RWR, SD_IFF = 0, 1, 2, 3
HDR = struct.Struct("<IIII")            # magic, epoch, sensor, ndet

# ---- sensor error model (must match sensor_models.c R_*) -------------------
DEG = math.pi/180.0
SIG_R_RANGE, SIG_R_ANG = 20.0, 0.5*DEG        # radar: 20 m, 0.5 deg
SIG_IRST                = 0.05*DEG             # IRST : 0.05 deg
SIG_RWR                 = 3.0*DEG              # RWR  : 3 deg
SIG_IFF                 = 40.0                 # IFF position tag: 40 m
PD_RADAR, PD_IRST, PD_RWR = 0.95, 0.90, 0.85  # per-sensor detection probability
P_IFF_REPLY             = 0.90                 # friend transponder reply prob
RADAR_CLUTTER           = 3                    # false alarms per epoch (avg)

def azelr(p):
    x, y, z = p[0], p[1], p[2]
    r  = math.sqrt(x*x + y*y + z*z)
    az = math.atan2(y, x)
    el = math.atan2(z, math.hypot(x, y))
    return az, el, r

def send(sock, dst, epoch, sensor, dets):
    """dets: list of tuples (len 3 for radar/iff, len 2 for irst/rwr)."""
    n = len(dets)
    buf = HDR.pack(SD_MAGIC, epoch, sensor, n)
    if n:
        flat = [v for d in dets for v in d]
        buf += struct.pack("<%df" % len(flat), *flat)
    sock.sendto(buf, dst)

def epoch_detections(pos_list, friend_list, rng):
    """Turn a list of target positions into one epoch of sensor detections."""
    radar, irst, rwr, iff = [], [], [], []
    for p, is_fr in zip(pos_list, friend_list):
        az, el, r = azelr(p)
        if rng.random() < PD_RADAR:
            radar.append((r + rng.normal(0, SIG_R_RANGE),
                          az + rng.normal(0, SIG_R_ANG),
                          el + rng.normal(0, SIG_R_ANG)))
        if rng.random() < PD_IRST:
            irst.append((az + rng.normal(0, SIG_IRST), el + rng.normal(0, SIG_IRST)))
        if rng.random() < PD_RWR:
            rwr.append((az + rng.normal(0, SIG_RWR), el + rng.normal(0, SIG_RWR)))
        if is_fr and rng.random() < P_IFF_REPLY:
            q = np.array(p[:3]) + rng.normal(0, SIG_IFF, 3)
            iff.append((float(q[0]), float(q[1]), float(q[2])))
    # radar clutter (false alarms scattered in the surveillance volume)
    for _ in range(rng.poisson(RADAR_CLUTTER)):
        rr = rng.uniform(20000, 110000); aa = rng.uniform(-math.pi, math.pi); ee = rng.uniform(-0.2, 0.3)
        radar.append((rr, aa, ee))
    return radar, irst, rwr, iff

# ---- replay source ---------------------------------------------------------
def replay_frames():
    truth = np.load(here("truth_s3.npy"))               # (E, T, 6)
    fmask = np.load(here("friend_mask.npy")) if os.path.exists(here("friend_mask.npy")) \
            else np.zeros(truth.shape[1], bool)
    E = truth.shape[0]
    def gen(e):
        p = truth[e]; m = ~np.isnan(p[:, 0]); idx = np.where(m)[0]
        return [tuple(p[k, :3]) for k in idx], [bool(fmask[k]) for k in idx]
    return E, gen

# ---- live OpenSky source (OAuth2 client-credentials) -----------------------
# OpenSky discontinued basic auth; the REST API now requires an OAuth2 token
# obtained from a client_id / client_secret (create an API client in your
# OpenSky account). Anonymous access still works but is heavily rate-limited
# (most-recent states only, 10 s resolution). We therefore fetch at most every
# few seconds and DEAD-RECKON aircraft between fetches (using their velocity /
# heading) so the board still sees smooth motion at the epoch rate.
TOKEN_URL  = "https://auth.opensky-network.org/auth/realms/opensky-network/protocol/openid-connect/token"
STATES_URL = "https://opensky-network.org/api/states/all"

def opensky_source(lat, lon, span, client_id, client_secret, hz):
    import requests
    ref_lat, ref_lon = math.radians(lat), math.radians(lon)
    R = 6371000.0
    box = dict(lamin=lat-span/2, lamax=lat+span/2, lomin=lon-span/2, lomax=lon+span/2)
    refresh = 6.0 if client_id else 12.0                  # seconds between real fetches
    dt = 1.0 / hz
    st = {"tok": None, "exp": 0.0, "last": 0.0, "ac": []}

    def enu(la, lo, alt):
        dlat = math.radians(la) - ref_lat; dlon = math.radians(lo) - ref_lon
        return [R*dlon*math.cos(ref_lat), R*dlat, alt or 8000.0]   # East, North, Up

    def token():
        if not client_id: return None
        if st["tok"] and time.time() < st["exp"] - 30: return st["tok"]
        try:
            r = requests.post(TOKEN_URL, timeout=8, data={
                "grant_type": "client_credentials",
                "client_id": client_id, "client_secret": client_secret})
            if r.status_code != 200:
                print(f"  OpenSky auth failed (HTTP {r.status_code}) - using anonymous"); return None
            j = r.json(); st["tok"] = j["access_token"]; st["exp"] = time.time() + j.get("expires_in", 1800)
            print("  OpenSky: authenticated (token good ~30 min)")
            return st["tok"]
        except Exception as ex:
            print("  OpenSky auth error:", ex); return None

    def fetch():
        hdr = {}; tok = token()
        if tok: hdr["Authorization"] = "Bearer " + tok
        try:
            r = requests.get(STATES_URL, params=box, headers=hdr, timeout=8)
        except Exception as ex:
            print("  OpenSky fetch error:", ex, "- keeping last aircraft"); return
        if r.status_code != 200 or "json" not in r.headers.get("content-type", ""):
            print(f"  OpenSky HTTP {r.status_code} (not JSON) - keeping last aircraft"); return
        try:
            states = r.json().get("states") or []
        except Exception:
            print("  OpenSky bad JSON - keeping last aircraft"); return
        ac = []
        for s in states:
            lo, la = s[5], s[6]
            if lo is None or la is None: continue
            alt = s[13] or s[7] or 8000.0
            v = s[9] or 0.0; trk = math.radians(s[10] or 0.0); vr = s[11] or 0.0
            ac.append([enu(la, lo, alt), [v*math.sin(trk), v*math.cos(trk), vr], (hash(s[0]) % 5) < 2])
        if ac: st["ac"] = ac
        print(f"  OpenSky: {len(st['ac'])} aircraft in box")

    def gen(_e):
        now = time.time()
        if not st["ac"] or now - st["last"] >= refresh:
            fetch(); st["last"] = now
        else:                                             # dead-reckon between fetches
            for a in st["ac"]:
                a[0][0] += a[1][0]*dt; a[0][1] += a[1][1]*dt; a[0][2] += a[1][2]*dt
        return [tuple(a[0]) for a in st["ac"]], [a[2] for a in st["ac"]]
    return 10**9, gen                                     # effectively endless

# ---- free, NO-ACCOUNT live source (community ADS-B aggregators) -------------
# adsb.lol / airplanes.live / adsb.fi / adsb.one share the readsb "re-api"
# format: GET a radius query, get {"ac":[{hex,lat,lon,alt_baro,gs,track,...}]}.
# No API key, no account; ~1 request/sec, so we throttle + dead-reckon exactly
# like the OpenSky path. This is the one to use when you have no credentials.
FT, KT = 0.3048, 0.514444                                  # feet->m, knots->m/s
ADSB_URL = {
    "adsblol":    lambda la,lo,r: f"https://api.adsb.lol/v2/lat/{la}/lon/{lo}/dist/{r}",
    "airplanes":  lambda la,lo,r: f"https://api.airplanes.live/v2/point/{la}/{lo}/{r}",
    "adsbfi":     lambda la,lo,r: f"https://opendata.adsb.fi/api/v2/lat/{la}/lon/{lo}/dist/{r}",
    "adsbone":    lambda la,lo,r: f"https://api.adsb.one/v2/point/{la}/{lo}/{r}",
}

def adsb_source(lat, lon, span, provider, hz):
    import requests
    if provider not in ADSB_URL: provider = "adsblol"
    ref_lat, ref_lon = math.radians(lat), math.radians(lon)
    R = 6371000.0
    rad_nm = min(int(round(span/2 * 60)), 250)             # deg -> nautical miles, capped
    url = ADSB_URL[provider](lat, lon, rad_nm)
    ua = {"User-Agent": "msdf-zcu102-sim/1.0"}             # some mirrors reject the default UA
    refresh = 3.0; dt = 1.0/hz
    st = {"last": 0.0, "ac": []}

    def enu(la, lo, alt_m):
        dlat = math.radians(la)-ref_lat; dlon = math.radians(lo)-ref_lon
        return [R*dlon*math.cos(ref_lat), R*dlat, alt_m]

    def fetch():
        try:
            r = requests.get(url, headers=ua, timeout=8)
        except Exception as ex:
            print("  ADSB fetch error:", ex, "- keeping last aircraft"); return
        if r.status_code != 200 or "json" not in r.headers.get("content-type", ""):
            print(f"  ADSB HTTP {r.status_code} - keeping last aircraft"); return
        try:
            acs = r.json().get("ac") or []
        except Exception:
            print("  ADSB bad JSON - keeping last aircraft"); return
        out = []
        for s in acs:
            la, lo = s.get("lat"), s.get("lon")
            if la is None or lo is None: continue
            alt = s.get("alt_baro"); alt_m = 0.0 if (alt is None or alt == "ground") else float(alt)*FT
            gs  = (s.get("gs") or 0.0)*KT; trk = math.radians(s.get("track") or 0.0)
            vr  = (s.get("baro_rate") or 0.0)*FT/60.0
            out.append([enu(la, lo, alt_m), [gs*math.sin(trk), gs*math.cos(trk), vr], (hash(s.get("hex","")) % 5) < 2])
        if out: st["ac"] = out
        print(f"  ADSB [{provider}]: {len(st['ac'])} aircraft within {rad_nm} nm")

    def gen(_e):
        now = time.time()
        if not st["ac"] or now - st["last"] >= refresh:
            fetch(); st["last"] = now
        else:
            for a in st["ac"]:
                a[0][0] += a[1][0]*dt; a[0][1] += a[1][1]*dt; a[0][2] += a[1][2]*dt
        return [tuple(a[0]) for a in st["ac"]], [a[2] for a in st["ac"]]
    return 10**9, gen

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--board", required=True, help="board IP (BOARD_IP in the firmware)")
    ap.add_argument("--hz", type=float, default=10.0)
    ap.add_argument("--live", action="store_true", help="use live aircraft as truth")
    ap.add_argument("--provider", default="adsblol",
                    choices=["adsblol","airplanes","adsbfi","adsbone","opensky"],
                    help="live source (default adsblol: free, NO account/key)")
    ap.add_argument("--lat", type=float, default=51.15); ap.add_argument("--lon", type=float, default=6.8)
    ap.add_argument("--span", type=float, default=3.0, help="degrees box side for --live")
    ap.add_argument("--client-id", default=None, help="OpenSky OAuth2 client id (only for --provider opensky)")
    ap.add_argument("--client-secret", default=None, help="OpenSky OAuth2 client secret")
    a = ap.parse_args()

    dst = (a.board, SD_PORT)
    sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    rng = np.random.default_rng()

    if a.live:
        if a.provider == "opensky":
            E, gen = opensky_source(a.lat, a.lon, a.span, a.client_id, a.client_secret, a.hz)
            src = "OpenSky " + ("authenticated" if a.client_id else "ANONYMOUS")
        else:
            E, gen = adsb_source(a.lat, a.lon, a.span, a.provider, a.hz)
            src = a.provider + " (free, no account)"
        print(f"LIVE {src} around ({a.lat},{a.lon}) span {a.span} deg -> board {a.board}:{SD_PORT}")
    else:
        E, gen = replay_frames()
        print(f"REPLAY truth_s3.npy ({E} epochs) -> board {a.board}:{SD_PORT}")

    dt = 1.0 / a.hz
    e = 0
    try:
        while True:
            pos, fr = gen(e % E)
            radar, irst, rwr, iff = epoch_detections(pos, fr, rng)
            send(sock, dst, e % E, SD_RADAR, radar)
            send(sock, dst, e % E, SD_IRST,  irst)
            send(sock, dst, e % E, SD_RWR,   rwr)
            send(sock, dst, e % E, SD_IFF,   iff)         # IFF last = commit
            if e % 20 == 0:
                print(f"epoch {e%E:3d}  sent  R{len(radar)} I{len(irst)} W{len(rwr)} F{len(iff)}")
            e += 1
            time.sleep(dt)
    except KeyboardInterrupt:
        print("\nstopped.")

if __name__ == "__main__":
    main()