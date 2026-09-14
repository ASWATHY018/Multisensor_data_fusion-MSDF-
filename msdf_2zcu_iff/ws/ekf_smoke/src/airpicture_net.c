// ============================================================================
//  airpicture_net.c  -  UDP air-picture sender (lwIP raw API)
// ============================================================================
#include "airpicture_net.h"
#include "lwip/udp.h"
#include "lwip/inet.h"
#include "xil_printf.h"
#include <string.h>

// >>> EDIT THIS to your PC's IP address (the machine running gui.py) <<<
#define GUI_IP  "192.168.1.100"

static struct udp_pcb *pcb = 0;
static ip_addr_t gui_ip;

void ap_udp_init(void) {
    pcb = udp_new();
    if (!pcb) { xil_printf("ap_udp_init: udp_new failed\r\n"); return; }
    inet_aton(GUI_IP, &gui_ip);
    xil_printf("air-picture -> %s:%d\r\n", GUI_IP, AP_PORT);
}

void ap_send(const ap_frame_t *f, int ntracks) {
    if (!pcb) return;
    u16_t nbytes = (u16_t)(12 + ntracks * sizeof(ap_track_t));   // header + tracks
    struct pbuf *p = pbuf_alloc(PBUF_TRANSPORT, nbytes, PBUF_RAM);
    if (!p) return;
    memcpy(p->payload, f, nbytes);
    udp_sendto(pcb, p, &gui_ip, AP_PORT);
    pbuf_free(p);
}
