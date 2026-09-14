// ============================================================================
//  platform_config.h  -  ZCU102 (Zynq UltraScale+ MPSoC, psu_cortexa53_0)
// ----------------------------------------------------------------------------
//  Board-specific address for the Ethernet MAC used by lwIP.
//  VERIFY: open your BSP's xparameters.h and search for XPAR_XEMACPS.
//    - If only one GEM is enabled it is usually XPAR_XEMACPS_0_BASEADDR.
//    - ZCU102 routes Ethernet through GEM3; its base is 0xFF0E0000. If your
//      xparameters.h names it XPAR_XEMACPS_3_BASEADDR, use that instead.
// ============================================================================
#ifndef __PLATFORM_CONFIG_H_
#define __PLATFORM_CONFIG_H_

#define PLATFORM_EMAC_BASEADDR   XPAR_XEMACPS_0_BASEADDR

#endif
