// ============================================================================
//  platform.h  -  network platform bring-up API (ZynqMP / ZCU102)
// ----------------------------------------------------------------------------
//  Implemented in platform.c. main_tracker_net.c calls init_platform() and
//  platform_enable_interrupts() during network start-up.
// ============================================================================
#ifndef __PLATFORM_H_
#define __PLATFORM_H_

void init_platform(void);              // set up GIC + TTC tick for lwIP
void platform_enable_interrupts(void); // enable ARM IRQ exceptions
void cleanup_platform(void);           // disable caches on shutdown

#endif
