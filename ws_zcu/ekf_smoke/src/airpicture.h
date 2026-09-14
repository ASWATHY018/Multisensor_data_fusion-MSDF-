// ============================================================================
//  airpicture.h  -  UDP air-picture packet format (shared: PS board <-> GUI)
// ----------------------------------------------------------------------------
//  One datagram per fusion epoch. The board fills this from its quality tracks
//  and sends it to the GUI host; the GUI parses and displays it.
//  Little-endian, packed. Keep this file identical on both sides (the Python
//  GUI mirrors this layout in struct format strings).
// ============================================================================
#ifndef AIRPICTURE_H
#define AIRPICTURE_H
#include <stdint.h>

#define AP_MAGIC   0x4D534446u      // 'MSDF'
#define AP_PORT    5005             // UDP port the GUI listens on
#define AP_MAXTRK  128              // max tracks per datagram

#define IFF_UNKNOWN 0
#define IFF_FRIEND  1
#define IFF_HOSTILE 2

#pragma pack(push,1)
typedef struct {
    uint32_t id;                    // track id
    float    x, y, z;               // position [m], sensor-centred ENU
    float    vx, vy, vz;            // velocity [m/s]
    uint8_t  iff;                   // IFF_*
    uint8_t  _pad[3];
    float    pos_sigma;            // position 1-sigma [m]
} ap_track_t;                       // 32 bytes

typedef struct {
    uint32_t   magic;               // AP_MAGIC
    uint32_t   epoch;               // fusion epoch counter
    uint32_t   ntracks;             // number of tracks following
    ap_track_t track[AP_MAXTRK];    // ntracks valid
} ap_frame_t;
#pragma pack(pop)

#endif // AIRPICTURE_H
