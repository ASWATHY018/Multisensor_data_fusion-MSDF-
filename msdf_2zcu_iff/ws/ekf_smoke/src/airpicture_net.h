// ============================================================================
//  airpicture_net.h  -  send the air picture over UDP to the GUI (Stage D1)
// ----------------------------------------------------------------------------
//  Thin wrapper over lwIP raw UDP. The heavy network bring-up (MAC, interrupts,
//  lwip_init) is done in main_tracker_net.c / the lwIP template's platform code;
//  this module just owns the UDP socket and sends one air-picture frame.
// ============================================================================
#ifndef AIRPICTURE_NET_H
#define AIRPICTURE_NET_H
#include "airpicture.h"

void ap_udp_init(void);                            // create the UDP socket + GUI dest
void ap_send(const ap_frame_t *f, int ntracks);    // send one air-picture datagram

#endif // AIRPICTURE_NET_H
