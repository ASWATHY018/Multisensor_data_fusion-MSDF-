// ============================================================================
//  sensor_in.c  -  board-side inbound sensor-detection receiver (Stage D2)
// ----------------------------------------------------------------------------
//  lwIP raw-UDP callback. Each datagram is one sensor's detections for an epoch
//  (see sensordet.h). We accumulate the sensors of the current epoch into static
//  buffers; the IFF datagram (always sent last) marks the epoch complete.
//
//  The callback runs inside xemacif_input() on the main thread (bare-metal raw
//  API), so no locking is needed between the callback and sd_get_frame().
// ============================================================================
#include <string.h>
#include "sensor_in.h"
#include "lwip/udp.h"
#include "lwip/pbuf.h"

static struct udp_pcb *g_pcb;

// accumulation buffers for the epoch currently being received
static float b_radar[SD_MAXDET*3], b_irst[SD_MAXDET*2], b_rwr[SD_MAXDET*2], b_iff[SD_MAXDET*3];
static int   n_radar, n_irst, n_rwr, n_iff;
static uint32_t cur_epoch = 0xFFFFFFFFu;
static volatile int frame_ready = 0;
static uint32_t ready_epoch = 0;

// scratch to linearise a (possibly chained) pbuf
static uint8_t rxbuf[sizeof(sd_hdr_t) + SD_MAXDET*3*sizeof(float)];

static void reset_epoch(uint32_t e) {
    cur_epoch = e; n_radar = n_irst = n_rwr = n_iff = 0;
}

static void recv_cb(void *arg, struct udp_pcb *pcb, struct pbuf *p,
                    const ip_addr_t *addr, u16_t port) {
    (void)arg; (void)pcb; (void)addr; (void)port;
    if (!p) return;
    if (p->tot_len <= sizeof(sd_hdr_t) - 1 || p->tot_len > sizeof(rxbuf)) { pbuf_free(p); return; }

    u16_t got = pbuf_copy_partial(p, rxbuf, (u16_t)sizeof(rxbuf), 0);
    pbuf_free(p);
    if (got < sizeof(sd_hdr_t)) return;

    sd_hdr_t hdr; memcpy(&hdr, rxbuf, sizeof(hdr));
    if (hdr.magic != SD_MAGIC) return;
    if (hdr.ndet > SD_MAXDET) hdr.ndet = SD_MAXDET;         // clamp
    int dim = sd_dim(hdr.sensor);
    uint32_t need = (uint32_t)sizeof(sd_hdr_t) + hdr.ndet * dim * sizeof(float);
    if (got < need) return;                                 // truncated

    // a datagram for a new epoch starts a fresh accumulation
    if (hdr.epoch != cur_epoch) reset_epoch(hdr.epoch);

    const float *payload = (const float *)(rxbuf + sizeof(sd_hdr_t));
    switch (hdr.sensor) {
        case SD_RADAR: memcpy(b_radar, payload, hdr.ndet*3*sizeof(float)); n_radar=(int)hdr.ndet; break;
        case SD_IRST:  memcpy(b_irst,  payload, hdr.ndet*2*sizeof(float)); n_irst =(int)hdr.ndet; break;
        case SD_RWR:   memcpy(b_rwr,   payload, hdr.ndet*2*sizeof(float)); n_rwr  =(int)hdr.ndet; break;
        case SD_IFF:   memcpy(b_iff,   payload, hdr.ndet*3*sizeof(float)); n_iff  =(int)hdr.ndet;
                       ready_epoch = cur_epoch; frame_ready = 1;   // IFF = commit
                       break;
        default: break;
    }
}

void sd_input_init(void) {
    g_pcb = udp_new();
    if (!g_pcb) return;
    udp_bind(g_pcb, IP_ADDR_ANY, SD_PORT);
    udp_recv(g_pcb, recv_cb, NULL);
}

int sd_frame_ready(void) { return frame_ready; }

int sd_get_frame(float *radar, int *nr, float *irst, int *ni,
                 float *rwr, int *nw, float *iff, int *nf) {
    memcpy(radar, b_radar, (size_t)n_radar*3*sizeof(float)); *nr = n_radar;
    memcpy(irst,  b_irst,  (size_t)n_irst *2*sizeof(float)); *ni = n_irst;
    memcpy(rwr,   b_rwr,   (size_t)n_rwr  *2*sizeof(float)); *nw = n_rwr;
    memcpy(iff,   b_iff,   (size_t)n_iff  *3*sizeof(float)); *nf = n_iff;
    frame_ready = 0;
    return (int)ready_epoch;
}
