// ============================================================================
//  sensordet.h  -  inbound sensor-detection packet format (PC sim -> ZCU102)
// ----------------------------------------------------------------------------
//  Stage D2: the board no longer reads the canned scenario3.h. Instead a sensor
//  simulator (or real sensor front-ends) streams per-epoch detections to the
//  board on UDP :5006. Keep this file identical on both sides (the Python
//  simulator mirrors this layout in struct format strings).
//
//  One datagram per SENSOR per epoch, so every datagram stays under the 1500-byte
//  Ethernet MTU (no IP fragmentation / reassembly needed on the board):
//     [ sd_hdr_t ][ ndet * dim floats ]
//  dim = 3 (radar: range,az,el) | 2 (IRST: az,el) | 2 (RWR: az,el) | 3 (IFF: x,y,z)
//
//  The four sensors for one epoch are sent in order RADAR, IRST, RWR, IFF.
//  IFF is sent LAST every epoch (even with 0 replies) and acts as the "commit":
//  when the board receives the IFF datagram it runs the tracker for that epoch.
//  Angles are radians; range/position are metres; ENU, sensor-centred.
// ============================================================================
#ifndef SENSORDET_H
#define SENSORDET_H
#include <stdint.h>

#define SD_MAGIC   0x53454E31u     // 'SEN1'
#define SD_PORT    5006            // UDP port the board listens on
#define SD_MAXDET  220             // per-sensor detection cap (>= scenario max 170)

#define SD_RADAR   0               // dim 3: range, az, el
#define SD_IRST    1               // dim 2: az, el
#define SD_RWR     2               // dim 2: az, el
#define SD_IFF     3               // dim 3: x, y, z  (friend replies; commit marker)

#pragma pack(push,1)
typedef struct {
    uint32_t magic;                // SD_MAGIC
    uint32_t epoch;                // fusion epoch (0..N-1, wraps each pass)
    uint32_t sensor;               // SD_RADAR / SD_IRST / SD_RWR / SD_IFF
    uint32_t ndet;                 // number of detections following
    // float payload[ndet * dim] follows immediately
} sd_hdr_t;
#pragma pack(pop)

static inline int sd_dim(uint32_t sensor) { return (sensor==SD_RADAR||sensor==SD_IFF)?3:2; }

#endif // SENSORDET_H
