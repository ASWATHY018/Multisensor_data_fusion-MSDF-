// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.1 (64-bit)
// Tool Version Limit: 2023.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XEKF_BATCH_H
#define XEKF_BATCH_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xekf_batch_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u64 Control_BaseAddress;
} XEkf_batch_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XEkf_batch;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XEkf_batch_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XEkf_batch_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XEkf_batch_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XEkf_batch_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XEkf_batch_Initialize(XEkf_batch *InstancePtr, u16 DeviceId);
XEkf_batch_Config* XEkf_batch_LookupConfig(u16 DeviceId);
int XEkf_batch_CfgInitialize(XEkf_batch *InstancePtr, XEkf_batch_Config *ConfigPtr);
#else
int XEkf_batch_Initialize(XEkf_batch *InstancePtr, const char* InstanceName);
int XEkf_batch_Release(XEkf_batch *InstancePtr);
#endif

void XEkf_batch_Start(XEkf_batch *InstancePtr);
u32 XEkf_batch_IsDone(XEkf_batch *InstancePtr);
u32 XEkf_batch_IsIdle(XEkf_batch *InstancePtr);
u32 XEkf_batch_IsReady(XEkf_batch *InstancePtr);
void XEkf_batch_EnableAutoRestart(XEkf_batch *InstancePtr);
void XEkf_batch_DisableAutoRestart(XEkf_batch *InstancePtr);

void XEkf_batch_Set_data(XEkf_batch *InstancePtr, u64 Data);
u64 XEkf_batch_Get_data(XEkf_batch *InstancePtr);
void XEkf_batch_Set_nmeas(XEkf_batch *InstancePtr, u64 Data);
u64 XEkf_batch_Get_nmeas(XEkf_batch *InstancePtr);
void XEkf_batch_Set_num_tracks(XEkf_batch *InstancePtr, u32 Data);
u32 XEkf_batch_Get_num_tracks(XEkf_batch *InstancePtr);

void XEkf_batch_InterruptGlobalEnable(XEkf_batch *InstancePtr);
void XEkf_batch_InterruptGlobalDisable(XEkf_batch *InstancePtr);
void XEkf_batch_InterruptEnable(XEkf_batch *InstancePtr, u32 Mask);
void XEkf_batch_InterruptDisable(XEkf_batch *InstancePtr, u32 Mask);
void XEkf_batch_InterruptClear(XEkf_batch *InstancePtr, u32 Mask);
u32 XEkf_batch_InterruptGetEnabled(XEkf_batch *InstancePtr);
u32 XEkf_batch_InterruptGetStatus(XEkf_batch *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
