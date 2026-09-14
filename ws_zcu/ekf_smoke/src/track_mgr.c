// ============================================================================
//  track_mgr.c  -  multi-target track management (Stage C)
// ============================================================================
#include "track_mgr.h"
#include <math.h>
#include <string.h>

#define TM_MAXCAND 20000   /* max gated (track,det) candidates per sensor */

// chi-square gates (~99%): dof3=11.34, dof2=9.21
static const float GATE3 = 11.34f, GATE2 = 9.21f;

// Gate inflation (gating ONLY, not the EKF update): a maneuver / CV-model-mismatch
// slack added to S so a fine sensor's (IRST 0.05deg) gate can't shrink so tight
// that radar's coarse 0.5deg wobble knocks its own detection out of gate.
#define DEG2RAD (3.14159265358979f/180.0f)
static void inflate_gate(int sensor, float S[3][3]) {
    const float a2 = (0.25f*DEG2RAD)*(0.25f*DEG2RAD);   // ~0.25 deg angular slack
    if (sensor==SM_RADAR) { S[0][0]+=40.f*40.f; S[1][1]+=a2; S[2][2]+=a2; }
    else                  { S[0][0]+=a2;        S[1][1]+=a2; }
}

void tm_init(TrackMgr *tm) {
    memset(tm, 0, sizeof(*tm));
    tm->next_id = 1;
}

// A track is "display quality" if confirmed AND getting radar consistently.
int tm_is_quality(const Track *t) {
    return t->status == TM_CONFIRMED &&
           __builtin_popcount(t->hist & 0xFFu) >= TM_QUALITY_HITS;
}

void tm_begin_epoch(TrackMgr *tm) {
    for (int i = 0; i < TM_MAXTRK; i++) {
        Track *t = &tm->t[i];
        if (t->status == TM_FREE) continue;
        sm_predict_state(t->x, t->xp);      // predicted state for gating
        sm_predict_cov(t->P, t->Pp);        // predicted covariance for gating
        t->associated = 0;
        t->assoc_radar = 0;
        t->nrows = 0;
    }
}

// ---- solve S k = y for n<=3, return Mahalanobis d2 = y^T S^-1 y ------------
static float mahalanobis(float S[3][3], const float y[3], int n) {
    float A[3][4];
    for (int i=0;i<n;i++){ for(int j=0;j<n;j++) A[i][j]=S[i][j]; A[i][n]=y[i]; }
    for (int c=0;c<n;c++){
        int piv=c; for(int r=c+1;r<n;r++) if(fabsf(A[r][c])>fabsf(A[piv][c])) piv=r;
        for(int j=0;j<=n;j++){ float tmp=A[c][j]; A[c][j]=A[piv][j]; A[piv][j]=tmp; }
        float d=A[c][c]; if (fabsf(d)<1e-20f) return 1e30f;
        for(int j=c;j<=n;j++) A[c][j]/=d;
        for(int r=0;r<n;r++) if(r!=c){ float f=A[r][c]; for(int j=c;j<=n;j++) A[r][j]-=f*A[c][j]; }
    }
    float d2=0; for(int i=0;i<n;i++) d2 += y[i]*A[i][n];
    return d2;
}

// gate one detection against one track's predicted state; also produce the
// scalar update rows if it passes. returns d2 (1e30 if out of gate).
static float gate(int sensor, const Track *t, const float *z,
                  float rows_out[3*8], int *nrows_out) {
    int dim = sm_meas_dim(sensor);
    float h[3], H[18], y[3], r[3], HP[3][6], S[3][3];
    sm_h(sensor, t->xp, h);
    sm_H(sensor, t->xp, H);
    sm_residual(sensor, z, h, y);
    sm_R(sensor, r);
    for (int i=0;i<dim;i++) for(int j=0;j<6;j++){ float a=0; for(int k=0;k<6;k++) a+=H[i*6+k]*t->Pp[k*6+j]; HP[i][j]=a; }
    for (int i=0;i<dim;i++) for(int j=0;j<dim;j++){ float a=0; for(int k=0;k<6;k++) a+=HP[i][k]*H[j*6+k]; S[i][j]=a+(i==j?r[i]:0.f); }
    inflate_gate(sensor, S);                 // maneuver/model slack (gating only)
    float d2 = mahalanobis(S, y, dim);
    for (int i=0;i<dim;i++){ for(int c=0;c<6;c++) rows_out[i*8+c]=H[i*6+c]; rows_out[i*8+6]=y[i]; rows_out[i*8+7]=r[i]; }
    *nrows_out = dim;
    return d2;
}

// greedy nearest-neighbour association for one sensor
static void assoc_sensor(TrackMgr *tm, int sensor, const float *det, int ndet, int *det_used) {
    int dim = sm_meas_dim(sensor);
    float gatev = (dim==3) ? GATE3 : GATE2;
    // candidate list
    static struct { int tr, dj; float d2, rows[3*8]; int nrows; } cand[TM_MAXCAND];
    int nc = 0;
    for (int i=0;i<TM_MAXTRK;i++) {
        if (tm->t[i].status==TM_FREE) continue;
        if (tm->t[i].nrows + dim > TM_MAXROWS) continue;   // already full this epoch
        for (int dj=0; dj<ndet; dj++) {
            if (det_used[dj]) continue;
            float rows[3*8]; int nr;
            float d2 = gate(sensor, &tm->t[i], &det[dj*dim], rows, &nr);
            if (d2 < gatev && nc < (int)(sizeof(cand)/sizeof(cand[0]))) {
                cand[nc].tr=i; cand[nc].dj=dj; cand[nc].d2=d2; cand[nc].nrows=nr;
                for (int q=0;q<nr*8;q++) cand[nc].rows[q]=rows[q];
                nc++;
            }
        }
    }
    // greedy: repeatedly take the smallest-d2 unused pair (best per-detection fit)
    char tr_used[TM_MAXTRK]; memset(tr_used,0,sizeof(tr_used));
    for (;;) {
        int best=-1; float bd=1e30f;
        for (int c=0;c<nc;c++)
            if (!tr_used[cand[c].tr] && !det_used[cand[c].dj] && cand[c].d2<bd) { bd=cand[c].d2; best=c; }
        if (best<0) break;
        Track *t = &tm->t[cand[best].tr];
        for (int q=0;q<cand[best].nrows*8;q++) t->rows[t->nrows*8 + q] = cand[best].rows[q];
        t->nrows += cand[best].nrows;
        t->associated = 1;
        if (sensor == SM_RADAR) t->assoc_radar = 1;   // radar = the range anchor
        tr_used[cand[best].tr] = 1;
        det_used[cand[best].dj] = 1;
    }
}

// is a candidate position within dmax of any existing track? (birth suppression)
static int near_existing(const TrackMgr *tm, const float pos[3], float dmax) {
    for (int i=0;i<TM_MAXTRK;i++) {
        if (tm->t[i].status==TM_FREE) continue;
        float dx=tm->t[i].x[0]-pos[0], dy=tm->t[i].x[1]-pos[1], dz=tm->t[i].x[2]-pos[2];
        if (dx*dx+dy*dy+dz*dz < dmax*dmax) return 1;
    }
    return 0;
}

static void birth_from_radar(TrackMgr *tm, const float *radar_det, int nr, const int *used) {
    for (int dj=0; dj<nr; dj++) {
        if (used[dj]) continue;
        float p0pos[6]; sm_cmkf_init(&radar_det[dj*3], p0pos);
        // don't birth on top of an existing track (that's a missed association, not a new target)
        if (near_existing(tm, p0pos, 2500.0f)) continue;
        int slot=-1; for (int i=0;i<TM_MAXTRK;i++) if (tm->t[i].status==TM_FREE){ slot=i; break; }
        if (slot<0) return;
        Track *t=&tm->t[slot];
        memset(t,0,sizeof(*t));
        for (int i=0;i<6;i++) t->x[i]=p0pos[i];
        float p0[6]={400.f*400.f,400.f*400.f,400.f*400.f,200.f*200.f,200.f*200.f,200.f*200.f};
        for (int i=0;i<6;i++) t->P[i*6+i]=p0[i];
        t->status=TM_TENTATIVE; t->id=tm->next_id++;
        t->hits=1; t->misses=0; t->age=0; t->hist=1u; t->associated=1; t->nrows=0;
    }
}

// remove duplicate tracks: two tracks on the same target -> keep the stronger
static void tm_prune(TrackMgr *tm) {
    for (int i=0;i<TM_MAXTRK;i++) {
        if (tm->t[i].status==TM_FREE) continue;
        for (int j=i+1;j<TM_MAXTRK;j++) {
            if (tm->t[j].status==TM_FREE) continue;
            float dx=tm->t[i].x[0]-tm->t[j].x[0], dy=tm->t[i].x[1]-tm->t[j].x[1], dz=tm->t[i].x[2]-tm->t[j].x[2];
            if (dx*dx+dy*dy+dz*dz < 800.0f*800.0f) {
                // weaker = lower status, then fewer hits
                int weak;
                if (tm->t[i].status != tm->t[j].status)
                    weak = (tm->t[i].status < tm->t[j].status) ? i : j;
                else
                    weak = (tm->t[i].hits <= tm->t[j].hits) ? i : j;
                tm->t[weak].status = TM_FREE;
                if (weak==i) break;   // track i gone, move on
            }
        }
    }
}

void tm_associate(TrackMgr *tm,
                  const float *radar_det, int nr,
                  const float *irst_det,  int ni,
                  const float *rwr_det,   int nw) {
    static int ru[TM_MAXTRK*4], iu[TM_MAXTRK*4], wu[TM_MAXTRK*4];
    memset(ru,0,sizeof(ru)); memset(iu,0,sizeof(iu)); memset(wu,0,sizeof(wu));
    assoc_sensor(tm, SM_RADAR, radar_det, nr, ru);
    assoc_sensor(tm, SM_IRST,  irst_det,  ni, iu);
    assoc_sensor(tm, SM_RWR,   rwr_det,   nw, wu);
    birth_from_radar(tm, radar_det, nr, ru);            // unassociated radar -> new tracks
}

int tm_build_batch(TrackMgr *tm, float *data_buf, int *nmeas, int *slot2trk) {
    int s=0;
    for (int i=0;i<TM_MAXTRK;i++) {
        Track *t=&tm->t[i];
        if (t->status==TM_FREE) continue;
        float *blk=&data_buf[s*TM_STRIDE];
        for (int k=0;k<6;k++)  blk[SM_OFF_X+k]=t->x[k];
        for (int k=0;k<36;k++) blk[SM_OFF_P+k]=t->P[k];
        for (int k=0;k<t->nrows*8;k++) blk[SM_OFF_M+k]=t->rows[k];
        nmeas[s]=t->nrows;
        slot2trk[s]=i;
        s++;
    }
    return s;
}

void tm_finish_epoch(TrackMgr *tm, const float *data_buf, const int *slot2trk, int npack) {
    for (int s=0;s<npack;s++) {
        Track *t=&tm->t[slot2trk[s]];
        const float *blk=&data_buf[s*TM_STRIDE];
        for (int k=0;k<6;k++)  t->x[k]=blk[SM_OFF_X+k];    // posterior state
        for (int k=0;k<36;k++) t->P[k]=blk[SM_OFF_P+k];    // posterior covariance
        // life & confirmation run on RADAR only (the sole range-bearing sensor);
        // IRST/RWR add accuracy but cannot keep a wrong-range ghost alive.
        t->hist = (t->hist << 1) | (t->assoc_radar ? 1u : 0u);
        if (t->assoc_radar) { t->hits++; t->misses=0; } else { t->misses++; }
        t->age++;
        int last5 = __builtin_popcount(t->hist & 0x1Fu);   // radar hits in last 5 epochs
        if (t->status==TM_TENTATIVE) {
            if (last5 >= TM_CONFIRM_HITS) t->status = TM_CONFIRMED;      // M-of-N confirm
            else if (t->age>=6 || t->misses>=3) t->status = TM_FREE;     // give up early
        }
        if (t->status==TM_CONFIRMED && t->misses>=TM_DEL_CONF_MISS) t->status = TM_FREE;
    }
    tm_prune(tm);   // drop duplicate tracks on the same target
}

int tm_count(const TrackMgr *tm, int status) {
    int n=0; for (int i=0;i<TM_MAXTRK;i++) if (tm->t[i].status==status) n++;
    return n;
}

// ---- Stage E: IFF friend/foe labeling -------------------------------------
// Correlate friend replies to confirmed tracks over a recent window, then derive
// each label. Runs on the PS; touches no kinematics and no PL.
void tm_iff_update(TrackMgr *tm, const float *iff_det, int nf) {
    // 1) age the reply history one epoch for every confirmed (interrogated) track
    for (int i=0;i<TM_MAXTRK;i++) {
        Track *t=&tm->t[i];
        if (t->status!=TM_CONFIRMED) continue;
        t->iff_hist <<= 1;                       // this epoch's bit starts at 0
        if (t->iff_seen < 1000000) t->iff_seen++;
    }

    // 2) assign each friend reply to its nearest confirmed track within the gate,
    //    setting that track's current-epoch reply bit
    const float g2 = TM_IFF_GATE_M*TM_IFF_GATE_M;
    for (int dj=0; dj<nf; dj++) {
        const float *p = &iff_det[dj*3];
        int best=-1; float bd=g2;
        for (int i=0;i<TM_MAXTRK;i++) {
            if (tm->t[i].status!=TM_CONFIRMED) continue;
            float dx=tm->t[i].x[0]-p[0], dy=tm->t[i].x[1]-p[1], dz=tm->t[i].x[2]-p[2];
            float d2=dx*dx+dy*dy+dz*dz;
            if (d2<bd){ bd=d2; best=i; }
        }
        if (best>=0) tm->t[best].iff_hist |= 1u;
    }

    // 3) derive the label from the recent window (not lifetime)
    for (int i=0;i<TM_MAXTRK;i++) {
        Track *t=&tm->t[i];
        if (t->status!=TM_CONFIRMED) continue;
        int recent = __builtin_popcount(t->iff_hist & TM_IFF_WIN);
        int silent = (t->iff_hist & TM_IFF_HOSTWIN) == 0u;   // no reply in the long window
        if      (recent >= TM_IFF_MINREPLY)                          t->iff = TM_IFF_FRIEND;
        else if (silent && t->iff_seen >= TM_IFF_DECLARE)           t->iff = TM_IFF_HOSTILE;
        else                                                        t->iff = TM_IFF_UNKNOWN;
    }
}
