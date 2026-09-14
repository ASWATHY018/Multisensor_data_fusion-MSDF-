// ============================================================================
//  main_iff_host.c  -  Stage E verification on the PC (no hardware)
// ----------------------------------------------------------------------------
//  Runs the full tracker + IFF interrogation over the scenario and scores the
//  friend/foe labeling against truth (s3_friend[]):
//    - friend detection rate  (truth-friend tracks correctly labeled FRIEND)
//    - false-friend rate      (truth-foe tracks wrongly labeled FRIEND)
//    - foe declaration rate   (truth-foe tracks labeled HOSTILE)
//    - overall label accuracy
//
//  Build & run:
//    g++ -O2 -x c++ main_iff_host.c track_mgr.c sensor_models.c ekf_core.cpp -o iffhost && ./iffhost
// ============================================================================
#include <stdio.h>
#include <math.h>
#include "ekf_core.hpp"
#include "track_mgr.h"
#include "scenario3.h"
#include "iff3.h"

void ekf_batch(data_t *data, const int *nmeas, int num_tracks);

static float data_buf[TM_MAXTRK * TM_STRIDE];
static int   nmeas_buf[TM_MAXTRK];
static int   slot2trk[TM_MAXTRK];
static TrackMgr TM;

int main(void) {
    tm_init(&TM);
    long fr_hit=0, fr_host=0, fr_tot=0;  // friend tracks: FRIEND / wrongly-HOSTILE / total
    long foe_ff=0, foe_host=0, foe_tot=0;  // foe tracks: wrongly-friend / hostile / total
    long correct=0, all=0;
    int scored=0;

    for (int e=0; e<S2_NEPOCH; e++) {
        const float *rd=&s2_radar_det[e*S2_MAXDET*3]; int nr=s2_radar_ndet[e];
        const float *id=&s2_irst_det [e*S2_MAXDET*2]; int ni=s2_irst_ndet[e];
        const float *wd=&s2_rwr_det  [e*S2_MAXDET*2]; int nw=s2_rwr_ndet[e];

        tm_begin_epoch(&TM);
        tm_associate(&TM, rd, nr, id, ni, wd, nw);
        int np = tm_build_batch(&TM, data_buf, nmeas_buf, slot2trk);
        ekf_batch((data_t*)data_buf, nmeas_buf, np);
        tm_finish_epoch(&TM, data_buf, slot2trk, np);
        tm_iff_update(&TM, &s3_iff_det[e*S3_IFF_MAXDET*3], s3_iff_ndet[e]);

        if (e < 40) continue;                    // score once labels have settled
        scored++;
        int ntgt=s2_ntgt[e];
        char used[S2_MAXTGT]={0};
        for (int i=0;i<TM_MAXTRK;i++) {
            if (!tm_is_quality(&TM.t[i])) continue;   // score the displayed picture
            int best=-1; float bd2=1e18f;
            for (int g=0; g<ntgt; g++) {
                const float *tp=&s2_truth[(e*S2_MAXTGT+g)*3];
                float dx=TM.t[i].x[0]-tp[0], dy=TM.t[i].x[1]-tp[1], dz=TM.t[i].x[2]-tp[2];
                float d2=dx*dx+dy*dy+dz*dz; if (d2<bd2){bd2=d2;best=g;}
            }
            if (best<0 || bd2 >= 1000.0f*1000.0f || used[best]) continue;
            used[best]=1;
            int truth_friend = s3_friend[best];
            int lab = TM.t[i].iff;
            all++;
            if (truth_friend) {
                fr_tot++;
                if (lab==TM_IFF_FRIEND) { fr_hit++; correct++; }
                else if (lab==TM_IFF_HOSTILE) fr_host++;   // friendly-fire risk
            } else {
                foe_tot++;
                if (lab==TM_IFF_FRIEND) foe_ff++;
                else { correct++; if (lab==TM_IFF_HOSTILE) foe_host++; }
            }
        }
    }

    printf("\n  ===== Stage E IFF labeling results (%d scored epochs) =====\n", scored);
    printf("  friend detection rate : %.1f %%  (truth-friend labeled FRIEND, %ld/%ld)\n",
           100.0*fr_hit/(fr_tot>0?fr_tot:1), fr_hit, fr_tot);
    printf("  false-friend rate     : %.2f %%  (truth-foe wrongly FRIEND - lets a hostile through, %ld/%ld)\n",
           100.0*foe_ff/(foe_tot>0?foe_tot:1), foe_ff, foe_tot);
    printf("  friendly-fire rate    : %.2f %%  (truth-friend wrongly HOSTILE, %ld/%ld)\n",
           100.0*fr_host/(fr_tot>0?fr_tot:1), fr_host, fr_tot);
    printf("  foe declaration rate  : %.1f %%  (truth-foe labeled HOSTILE, %ld/%ld)\n",
           100.0*foe_host/(foe_tot>0?foe_tot:1), foe_host, foe_tot);
    printf("  overall label accuracy: %.1f %%  (%ld/%ld quality tracks)\n",
           100.0*correct/(all>0?all:1), correct, all);
    double ff  = 100.0*foe_ff/(foe_tot>0?foe_tot:1);
    double frf = 100.0*fr_host/(fr_tot>0?fr_tot:1);
    double det = 100.0*fr_hit/(fr_tot>0?fr_tot:1);
    // Safety-first thresholds: almost never call a friend hostile (frf), rarely let
    // a hostile pass as friend (ff), identify most friends (det); uncertain -> UNKNOWN.
    int pass = (frf < 1.0) && (ff < 5.0) && (det > 88.0);
    printf("  RESULT: %s\n", pass ? "PASS - friendly-fire ~0, few foes as friend, most friends IDed"
                                   : "REVIEW - check IFF gate / declare threshold");
    return 0;
}
