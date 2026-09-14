// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.1 (64-bit)
// Tool Version Limit: 2023.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xekf_batch.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XEkf_batch_CfgInitialize(XEkf_batch *InstancePtr, XEkf_batch_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XEkf_batch_Start(XEkf_batch *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEkf_batch_ReadReg(InstancePtr->Control_BaseAddress, XEKF_BATCH_CONTROL_ADDR_AP_CTRL) & 0x80;
    XEkf_batch_WriteReg(InstancePtr->Control_BaseAddress, XEKF_BATCH_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XEkf_batch_IsDone(XEkf_batch *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEkf_batch_ReadReg(InstancePtr->Control_BaseAddress, XEKF_BATCH_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XEkf_batch_IsIdle(XEkf_batch *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEkf_batch_ReadReg(InstancePtr->Control_BaseAddress, XEKF_BATCH_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XEkf_batch_IsReady(XEkf_batch *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEkf_batch_ReadReg(InstancePtr->Control_BaseAddress, XEKF_BATCH_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XEkf_batch_EnableAutoRestart(XEkf_batch *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEkf_batch_WriteReg(InstancePtr->Control_BaseAddress, XEKF_BATCH_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XEkf_batch_DisableAutoRestart(XEkf_batch *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEkf_batch_WriteReg(InstancePtr->Control_BaseAddress, XEKF_BATCH_CONTROL_ADDR_AP_CTRL, 0);
}

void XEkf_batch_Set_data(XEkf_batch *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEkf_batch_WriteReg(InstancePtr->Control_BaseAddress, XEKF_BATCH_CONTROL_ADDR_DATA_DATA, (u32)(Data));
    XEkf_batch_WriteReg(InstancePtr->Control_BaseAddress, XEKF_BATCH_CONTROL_ADDR_DATA_DATA + 4, (u32)(Data >> 32));
}

u64 XEkf_batch_Get_data(XEkf_batch *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEkf_batch_ReadReg(InstancePtr->Control_BaseAddress, XEKF_BATCH_CONTROL_ADDR_DATA_DATA);
    Data += (u64)XEkf_batch_ReadReg(InstancePtr->Control_BaseAddress, XEKF_BATCH_CONTROL_ADDR_DATA_DATA + 4) << 32;
    return Data;
}

void XEkf_batch_Set_nmeas(XEkf_batch *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEkf_batch_WriteReg(InstancePtr->Control_BaseAddress, XEKF_BATCH_CONTROL_ADDR_NMEAS_DATA, (u32)(Data));
    XEkf_batch_WriteReg(InstancePtr->Control_BaseAddress, XEKF_BATCH_CONTROL_ADDR_NMEAS_DATA + 4, (u32)(Data >> 32));
}

u64 XEkf_batch_Get_nmeas(XEkf_batch *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEkf_batch_ReadReg(InstancePtr->Control_BaseAddress, XEKF_BATCH_CONTROL_ADDR_NMEAS_DATA);
    Data += (u64)XEkf_batch_ReadReg(InstancePtr->Control_BaseAddress, XEKF_BATCH_CONTROL_ADDR_NMEAS_DATA + 4) << 32;
    return Data;
}

void XEkf_batch_Set_num_tracks(XEkf_batch *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEkf_batch_WriteReg(InstancePtr->Control_BaseAddress, XEKF_BATCH_CONTROL_ADDR_NUM_TRACKS_DATA, Data);
}

u32 XEkf_batch_Get_num_tracks(XEkf_batch *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEkf_batch_ReadReg(InstancePtr->Control_BaseAddress, XEKF_BATCH_CONTROL_ADDR_NUM_TRACKS_DATA);
    return Data;
}

void XEkf_batch_InterruptGlobalEnable(XEkf_batch *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEkf_batch_WriteReg(InstancePtr->Control_BaseAddress, XEKF_BATCH_CONTROL_ADDR_GIE, 1);
}

void XEkf_batch_InterruptGlobalDisable(XEkf_batch *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEkf_batch_WriteReg(InstancePtr->Control_BaseAddress, XEKF_BATCH_CONTROL_ADDR_GIE, 0);
}

void XEkf_batch_InterruptEnable(XEkf_batch *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XEkf_batch_ReadReg(InstancePtr->Control_BaseAddress, XEKF_BATCH_CONTROL_ADDR_IER);
    XEkf_batch_WriteReg(InstancePtr->Control_BaseAddress, XEKF_BATCH_CONTROL_ADDR_IER, Register | Mask);
}

void XEkf_batch_InterruptDisable(XEkf_batch *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XEkf_batch_ReadReg(InstancePtr->Control_BaseAddress, XEKF_BATCH_CONTROL_ADDR_IER);
    XEkf_batch_WriteReg(InstancePtr->Control_BaseAddress, XEKF_BATCH_CONTROL_ADDR_IER, Register & (~Mask));
}

void XEkf_batch_InterruptClear(XEkf_batch *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEkf_batch_WriteReg(InstancePtr->Control_BaseAddress, XEKF_BATCH_CONTROL_ADDR_ISR, Mask);
}

u32 XEkf_batch_InterruptGetEnabled(XEkf_batch *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEkf_batch_ReadReg(InstancePtr->Control_BaseAddress, XEKF_BATCH_CONTROL_ADDR_IER);
}

u32 XEkf_batch_InterruptGetStatus(XEkf_batch *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEkf_batch_ReadReg(InstancePtr->Control_BaseAddress, XEKF_BATCH_CONTROL_ADDR_ISR);
}

