// ============================================================================
//  main_tracker_net_d2.c  -  Stage D2: LIVE sensor input over UDP
// ----------------------------------------------------------------------------
//  Drop-in replacement for main_tracker_net.c. Instead of looping the canned
//  scenario3.h, the board now RECEIVES per-epoch sensor detections over UDP
//  :5006 (see sensordet.h / sensor_in.c), runs the same fuse-track-IFF pipeline,
//  and streams the trusted air picture out UDP :5005 to the GUI (unchanged).
//
//  Data flow:
//     PC sensor_sim.py --UDP:5006--> [ this board ] --UDP:5005--> gui.py / verify.py
//
//  App src/: main_tracker_net_d2.c, sensor_in.c/.h, sensordet.h,
//            airpicture_net.c/.h, airpicture.h, track_mgr.c/.h,
//            sensor_models.c/.h, iff3.h (only for TM_* build; not read here),
//            + platform.c/platform_config.h (lwIP template).
//  NOTE: scenario3.h and iff3.h are NO LONGER the data source - detections and
//        friend replies both arrive live. (iff3.h can be removed from the build.)
// ============================================================================
#include <stdio.h>
#include <math.h>
#include "xparameters.h"
#include "xil_printf.h"
#include "xil_cache.h"
#include "xstatus.h"
#include "netif/xadapter.h"
#include "platform.h"
#include "platform_config.h"
#include "lwip/init.h"
#include "lwip/inet.h"
#include "xekf_batch.h"
#include "track_mgr.h"
#include "sensordet.h"
#include "sensor_in.h"
#include "airpicture.h"
#include "airpicture_net.h"

// ---- board network config (EDIT to match your LAN) -------------------------
#define BOARD_IP  "192.168.1.10"
#define NETMASK   "255.255.255.0"
#define GATEWAY   "192.168.1.1"
static unsigned char mac_ethernet_address[] = { 0x00,0x0a,0x35,0x00,0x01,0x02 };
struct netif server_netif;

// ---- EKF IP + tracker state ------------------------------------------------
#define IP_WAVE 100
static float data_buf[TM_MAXTRK * TM_STRIDE] __attribute__((aligned(64)));
static int   nmeas_buf[TM_MAXTRK]            __attribute__((aligned(64)));
static int   slot2trk[TM_MAXTRK];
static TrackMgr TM;
static XEkf_batch Ekf;
static ap_frame_t frame;

// receive buffers for one epoch's detections
static float rx_radar[SD_MAXDET*3], rx_irst[SD_MAXDET*2], rx_rwr[SD_MAXDET*2], rx_iff[SD_MAXDET*3];

static int ekf_init(void) {
    XEkf_batch_Config *cfg = XEkf_batch_LookupConfig(XPAR_XEKF_BATCH_0_DEVICE_ID);
    if (!cfg || XEkf_batch_CfgInitialize(&Ekf, cfg) != XST_SUCCESS) {
        xil_printf("EKF driver init failed\r\n"); return XST_FAILURE;
    }
    return XST_SUCCESS;
}
static void run_ip(int ntrk) {
    if (ntrk <= 0) return;
    Xil_DCacheFlushRange((UINTPTR)data_buf,  sizeof(data_buf));
    Xil_DCacheFlushRange((UINTPTR)nmeas_buf, sizeof(nmeas_buf));
    for (int off = 0; off < ntrk; off += IP_WAVE) {
        int c = ntrk - off; if (c > IP_WAVE) c = IP_WAVE;
        XEkf_batch_Set_data(&Ekf,       (u64)(UINTPTR)&data_buf[off * TM_STRIDE]);
        XEkf_batch_Set_nmeas(&Ekf,      (u64)(UINTPTR)&nmeas_buf[off]);
        XEkf_batch_Set_num_tracks(&Ekf, (u32)c);
        XEkf_batch_Start(&Ekf);
        while (!XEkf_batch_IsDone(&Ekf)) { }
    }
    Xil_DCacheInvalidateRange((UINTPTR)data_buf, sizeof(data_buf));
}

static int build_frame(int epoch) {
    int n = 0;
    for (int i = 0; i < TM_MAXTRK && n < AP_MAXTRK; i++) {
        if (!tm_is_quality(&TM.t[i])) continue;
        ap_track_t *a = &frame.track[n++];
        a->id = (uint32_t)TM.t[i].id;
        a->x = TM.t[i].x[0]; a->y = TM.t[i].x[1]; a->z = TM.t[i].x[2];
        a->vx= TM.t[i].x[3]; a->vy= TM.t[i].x[4]; a->vz= TM.t[i].x[5];
        a->iff = (uint8_t)TM.t[i].iff;
        a->pos_sigma = sqrtf(TM.t[i].P[0] + TM.t[i].P[7] + TM.t[i].P[14]);
    }
    frame.magic = AP_MAGIC; frame.epoch = (uint32_t)epoch; frame.ntracks = (uint32_t)n;
    return n;
}

// process one received epoch of detections through the full pipeline
static void process_epoch(void) {
    int nr, ni, nw, nf;
    int epoch = sd_get_frame(rx_radar,&nr, rx_irst,&ni, rx_rwr,&nw, rx_iff,&nf);

    if (epoch == 0) tm_init(&TM);        // simulator restarts a pass at epoch 0

    tm_begin_epoch(&TM);
    tm_associate(&TM, rx_radar, nr, rx_irst, ni, rx_rwr, nw);
    int np = tm_build_batch(&TM, data_buf, nmeas_buf, slot2trk);
    run_ip(np);
    tm_finish_epoch(&TM, data_buf, slot2trk, np);
    tm_iff_update(&TM, rx_iff, nf);

    int n = build_frame(epoch);
    ap_send(&frame, n);
    if (epoch % 20 == 0)
        xil_printf("epoch %3d  in: R%d I%d W%d F%d  out %d tracks\r\n", epoch, nr, ni, nw, nf, n);
}

int main(void) {
    init_platform();

    ip_addr_t ipaddr, netmask, gw;
    inet_aton(BOARD_IP, &ipaddr); inet_aton(NETMASK, &netmask); inet_aton(GATEWAY, &gw);

    lwip_init();
    if (!xemac_add(&server_netif, &ipaddr, &netmask, &gw,
                   mac_ethernet_address, PLATFORM_EMAC_BASEADDR)) {
        xil_printf("xemac_add failed\r\n"); return -1;
    }
    netif_set_default(&server_netif);
    platform_enable_interrupts();
    netif_set_up(&server_netif);

    ap_udp_init();       // outbound air picture -> GUI  (:5005)
    sd_input_init();     // inbound sensor detections    (:5006)
    xil_printf("network up: board %s  (listening for sensor input on :%d)\r\n", BOARD_IP, SD_PORT);

    if (ekf_init() != XST_SUCCESS) return -1;
    tm_init(&TM);

    // receive-driven: process an epoch as soon as its IFF (commit) datagram lands
    while (1) {
        xemacif_input(&server_netif);            // pump lwIP -> fires sensor_in recv_cb
        if (sd_frame_ready()) process_epoch();
    }
    cleanup_platform();
    return 0;
}
