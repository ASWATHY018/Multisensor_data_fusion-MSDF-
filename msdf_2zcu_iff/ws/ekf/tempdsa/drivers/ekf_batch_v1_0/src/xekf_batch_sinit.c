// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.1 (64-bit)
// Tool Version Limit: 2023.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xekf_batch.h"

extern XEkf_batch_Config XEkf_batch_ConfigTable[];

XEkf_batch_Config *XEkf_batch_LookupConfig(u16 DeviceId) {
	XEkf_batch_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XEKF_BATCH_NUM_INSTANCES; Index++) {
		if (XEkf_batch_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XEkf_batch_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XEkf_batch_Initialize(XEkf_batch *InstancePtr, u16 DeviceId) {
	XEkf_batch_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XEkf_batch_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XEkf_batch_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

