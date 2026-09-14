// ============================================================================
//  track_mgr.h  -  multi-target track management (Stage C)
// ----------------------------------------------------------------------------
//  Turns a pile of per-sensor detections (with clutter, misses, births/deaths)
//  into a maintained list of tracks. Sits on top of the verified EKF core:
//    per epoch -> predict+gate+associate (PS) -> EKF update (PL) -> birth/M-of-N/death
//
//  Pipeline per epoch:
//    tm_begin_epoch()   predict every track (for gating), clear per-epoch state
//    tm_associate()     gate + nearest-neighbour assign detections; birth from
//                       unassociated radar returns
//    tm_build_batch()   pack active tracks (+ their assigned rows) for the PL
//    <run EKF IP>
//    tm_finish_epoch()  read posteriors back; hits/misses; confirm/coast/delete
// ============================================================================
#ifndef TRACK_MGR_H
#define TRACK_MGR_H

#include "sensor_models.h"

#define TM_MAXTRK   160               // room for 100 targets + tentatives + clutter
#define TM_MAXROWS  7                     // radar3+IRST2+RWR2 per track/epoch
#define TM_STRIDE   SM_STRIDE             // 98

// track status
#define TM_FREE      0
#define TM_TENTATIVE 1
#define TM_CONFIRMED 2

// management thresholds
#define TM_CONFIRM_HITS   3               // tentative -> confirmed
#define TM_DEL_TENT_MISS  2               // drop unconfirmed track after N misses
#define TM_DEL_CONF_MISS  8               // drop confirmed track after N misses

// IFF label (values match airpicture.h IFF_* so build_frame can copy directly)
#define TM_IFF_UNKNOWN 0
#define TM_IFF_FRIEND  1
#define TM_IFF_HOSTILE 2

typedef struct {
    int   status;
    int   id;
    float x[6], P[36];                    // prior (becomes posterior after EKF)
    float xp[6], Pp[36];                  // predicted (this epoch, for gating)
    int   hits, misses, age;
    unsigned hist;                        // RADAR hit history bitmask (for M-of-N)
    int   associated;                     // got >=1 detection (any sensor) this epoch?
    int   assoc_radar;                    // got a RADAR (range) detection this epoch?
    float rows[TM_MAXROWS * 8];           // scalar (H[6],y,r) rows this epoch
    int   nrows;
    int      iff;                         // TM_IFF_* current label
    unsigned iff_hist;                    // friend-reply history bitmask (recent window)
    int      iff_seen;                    // epochs interrogated (confirmed) - for declare
} Track;

typedef struct {
    Track t[TM_MAXTRK];
    int   next_id;
} TrackMgr;

// Track-quality gate for the DISPLAYED air picture. Real tracks get radar
// almost every epoch (~7/8); lagging "ghost" duplicates only intermittently
// (~4/8). Gating the OUTPUT on hit-consistency cleans the picture without
// touching the tracker. Tune TM_QUALITY_HITS (hits required in last 8 epochs).
#define TM_QUALITY_HITS 5
int tm_is_quality(const Track *t);

// IFF interrogation (Stage E). Call AFTER tm_finish_epoch (needs posteriors).
// iff_det: flat [x,y,z] per friend reply this epoch; nf replies. Each reply is
// correlated to the nearest CONFIRMED track within TM_IFF_GATE_M; a per-epoch
// reply bit is shifted into each track's history. Labeling uses a RECENT WINDOW
// (last 8 epochs), not lifetime counts, so a spurious reply grabbed by a young,
// high-covariance track ages out instead of sticking forever:
//   >= TM_IFF_MINREPLY replies in the window        -> FRIEND
//   interrogated >= TM_IFF_DECLARE epochs, none now  -> HOSTILE (non-responder)
//   otherwise                                        -> UNKNOWN
#define TM_IFF_GATE_M   700.0f
// FRIEND from a SHORT window so a switched track's stale friend label clears fast;
// HOSTILE only for a PERSISTENT non-responder (silent across a LONG window) so a
// friend with an occasional transponder dropout is never called hostile.
#define TM_IFF_WIN      0x07u    // FRIEND window = last 3 epochs
#define TM_IFF_MINREPLY 2        // replies in that window to call FRIEND (rejects a lone hit)
#define TM_IFF_HOSTWIN  0xFFFu   // HOSTILE needs zero replies across last 12 epochs
#define TM_IFF_DECLARE  12       // and at least this many interrogations first
void tm_iff_update(TrackMgr *tm, const float *iff_det, int nf);

void tm_init(TrackMgr *tm);
void tm_begin_epoch(TrackMgr *tm);
// detections: flat arrays, det i is &det[i*dim]; dim = 3 radar, 2 irst/rwr
void tm_associate(TrackMgr *tm,
                  const float *radar_det, int nr,
                  const float *irst_det,  int ni,
                  const float *rwr_det,   int nw);
int  tm_build_batch(TrackMgr *tm, float *data_buf, int *nmeas, int *slot2trk);
void tm_finish_epoch(TrackMgr *tm, const float *data_buf, const int *slot2trk, int npack);
int  tm_count(const TrackMgr *tm, int status);

#endif // TRACK_MGR_H
