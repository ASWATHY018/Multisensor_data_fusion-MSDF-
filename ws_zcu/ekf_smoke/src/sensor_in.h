// ============================================================================
//  sensor_in.h  -  board-side inbound sensor-detection receiver (Stage D2)
// ----------------------------------------------------------------------------
//  Opens a UDP socket on SD_PORT (:5006) and accumulates the four per-sensor
//  datagrams of each epoch into flat buffers the tracker consumes directly.
//  The IFF datagram (sent last) completes an epoch and raises the ready flag.
// ============================================================================
#ifndef SENSOR_IN_H
#define SENSOR_IN_H
#include "sensordet.h"

void sd_input_init(void);      // create + bind the UDP recv PCB (call after lwip_init)

// Non-zero once a full epoch (through its IFF datagram) has been received.
int  sd_frame_ready(void);

// Hand the completed epoch to the caller and clear the ready flag. Returns the
// epoch number; fills the sensor detection buffers and their counts. The float
// pointers must have room for SD_MAXDET*3 (radar/iff) or SD_MAXDET*2 (irst/rwr).
int  sd_get_frame(float *radar, int *nr,
                  float *irst,  int *ni,
                  float *rwr,   int *nw,
                  float *iff,   int *nf);

#endif // SENSOR_IN_H
