set moduleName ekf_batch_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_42_2
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {ekf_batch_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_42_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ F_32_out float 32 regular {pointer 1}  }
	{ F_31_out float 32 regular {pointer 1}  }
	{ F_30_out float 32 regular {pointer 1}  }
	{ F_29_out float 32 regular {pointer 1}  }
	{ F_28_out float 32 regular {pointer 1}  }
	{ F_27_out float 32 regular {pointer 1}  }
	{ F_26_out float 32 regular {pointer 1}  }
	{ F_25_out float 32 regular {pointer 1}  }
	{ F_24_out float 32 regular {pointer 1}  }
	{ F_23_out float 32 regular {pointer 1}  }
	{ F_22_out float 32 regular {pointer 1}  }
	{ F_21_out float 32 regular {pointer 1}  }
	{ F_20_out float 32 regular {pointer 1}  }
	{ F_19_out float 32 regular {pointer 1}  }
	{ F_18_out float 32 regular {pointer 1}  }
	{ F_17_out float 32 regular {pointer 1}  }
	{ F_16_out float 32 regular {pointer 1}  }
	{ F_15_out float 32 regular {pointer 1}  }
	{ F_14_out float 32 regular {pointer 1}  }
	{ F_13_out float 32 regular {pointer 1}  }
	{ F_12_out float 32 regular {pointer 1}  }
	{ F_11_out float 32 regular {pointer 1}  }
	{ F_10_out float 32 regular {pointer 1}  }
	{ F_9_out float 32 regular {pointer 1}  }
	{ F_8_out float 32 regular {pointer 1}  }
	{ F_7_out float 32 regular {pointer 1}  }
	{ F_6_out float 32 regular {pointer 1}  }
	{ F_5_out float 32 regular {pointer 1}  }
	{ F_4_out float 32 regular {pointer 1}  }
	{ F_3_out float 32 regular {pointer 1}  }
	{ F_2_out float 32 regular {pointer 1}  }
	{ F_1_out float 32 regular {pointer 1}  }
	{ F_out float 32 regular {pointer 1}  }
}
set hasAXIMCache 0
set C_modelArgMapList {[ 
	{ "Name" : "F_32_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "F_31_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "F_30_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "F_29_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "F_28_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "F_27_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "F_26_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "F_25_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "F_24_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "F_23_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "F_22_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "F_21_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "F_20_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "F_19_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "F_18_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "F_17_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "F_16_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "F_15_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "F_14_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "F_13_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "F_12_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "F_11_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "F_10_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "F_9_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "F_8_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "F_7_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "F_6_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "F_5_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "F_4_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "F_3_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "F_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "F_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "F_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 72
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ F_32_out sc_out sc_lv 32 signal 0 } 
	{ F_32_out_ap_vld sc_out sc_logic 1 outvld 0 } 
	{ F_31_out sc_out sc_lv 32 signal 1 } 
	{ F_31_out_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ F_30_out sc_out sc_lv 32 signal 2 } 
	{ F_30_out_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ F_29_out sc_out sc_lv 32 signal 3 } 
	{ F_29_out_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ F_28_out sc_out sc_lv 32 signal 4 } 
	{ F_28_out_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ F_27_out sc_out sc_lv 32 signal 5 } 
	{ F_27_out_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ F_26_out sc_out sc_lv 32 signal 6 } 
	{ F_26_out_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ F_25_out sc_out sc_lv 32 signal 7 } 
	{ F_25_out_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ F_24_out sc_out sc_lv 32 signal 8 } 
	{ F_24_out_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ F_23_out sc_out sc_lv 32 signal 9 } 
	{ F_23_out_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ F_22_out sc_out sc_lv 32 signal 10 } 
	{ F_22_out_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ F_21_out sc_out sc_lv 32 signal 11 } 
	{ F_21_out_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ F_20_out sc_out sc_lv 32 signal 12 } 
	{ F_20_out_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ F_19_out sc_out sc_lv 32 signal 13 } 
	{ F_19_out_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ F_18_out sc_out sc_lv 32 signal 14 } 
	{ F_18_out_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ F_17_out sc_out sc_lv 32 signal 15 } 
	{ F_17_out_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ F_16_out sc_out sc_lv 32 signal 16 } 
	{ F_16_out_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ F_15_out sc_out sc_lv 32 signal 17 } 
	{ F_15_out_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ F_14_out sc_out sc_lv 32 signal 18 } 
	{ F_14_out_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ F_13_out sc_out sc_lv 32 signal 19 } 
	{ F_13_out_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ F_12_out sc_out sc_lv 32 signal 20 } 
	{ F_12_out_ap_vld sc_out sc_logic 1 outvld 20 } 
	{ F_11_out sc_out sc_lv 32 signal 21 } 
	{ F_11_out_ap_vld sc_out sc_logic 1 outvld 21 } 
	{ F_10_out sc_out sc_lv 32 signal 22 } 
	{ F_10_out_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ F_9_out sc_out sc_lv 32 signal 23 } 
	{ F_9_out_ap_vld sc_out sc_logic 1 outvld 23 } 
	{ F_8_out sc_out sc_lv 32 signal 24 } 
	{ F_8_out_ap_vld sc_out sc_logic 1 outvld 24 } 
	{ F_7_out sc_out sc_lv 32 signal 25 } 
	{ F_7_out_ap_vld sc_out sc_logic 1 outvld 25 } 
	{ F_6_out sc_out sc_lv 32 signal 26 } 
	{ F_6_out_ap_vld sc_out sc_logic 1 outvld 26 } 
	{ F_5_out sc_out sc_lv 32 signal 27 } 
	{ F_5_out_ap_vld sc_out sc_logic 1 outvld 27 } 
	{ F_4_out sc_out sc_lv 32 signal 28 } 
	{ F_4_out_ap_vld sc_out sc_logic 1 outvld 28 } 
	{ F_3_out sc_out sc_lv 32 signal 29 } 
	{ F_3_out_ap_vld sc_out sc_logic 1 outvld 29 } 
	{ F_2_out sc_out sc_lv 32 signal 30 } 
	{ F_2_out_ap_vld sc_out sc_logic 1 outvld 30 } 
	{ F_1_out sc_out sc_lv 32 signal 31 } 
	{ F_1_out_ap_vld sc_out sc_logic 1 outvld 31 } 
	{ F_out sc_out sc_lv 32 signal 32 } 
	{ F_out_ap_vld sc_out sc_logic 1 outvld 32 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "F_32_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "F_32_out", "role": "default" }} , 
 	{ "name": "F_32_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "F_32_out", "role": "ap_vld" }} , 
 	{ "name": "F_31_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "F_31_out", "role": "default" }} , 
 	{ "name": "F_31_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "F_31_out", "role": "ap_vld" }} , 
 	{ "name": "F_30_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "F_30_out", "role": "default" }} , 
 	{ "name": "F_30_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "F_30_out", "role": "ap_vld" }} , 
 	{ "name": "F_29_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "F_29_out", "role": "default" }} , 
 	{ "name": "F_29_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "F_29_out", "role": "ap_vld" }} , 
 	{ "name": "F_28_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "F_28_out", "role": "default" }} , 
 	{ "name": "F_28_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "F_28_out", "role": "ap_vld" }} , 
 	{ "name": "F_27_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "F_27_out", "role": "default" }} , 
 	{ "name": "F_27_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "F_27_out", "role": "ap_vld" }} , 
 	{ "name": "F_26_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "F_26_out", "role": "default" }} , 
 	{ "name": "F_26_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "F_26_out", "role": "ap_vld" }} , 
 	{ "name": "F_25_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "F_25_out", "role": "default" }} , 
 	{ "name": "F_25_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "F_25_out", "role": "ap_vld" }} , 
 	{ "name": "F_24_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "F_24_out", "role": "default" }} , 
 	{ "name": "F_24_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "F_24_out", "role": "ap_vld" }} , 
 	{ "name": "F_23_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "F_23_out", "role": "default" }} , 
 	{ "name": "F_23_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "F_23_out", "role": "ap_vld" }} , 
 	{ "name": "F_22_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "F_22_out", "role": "default" }} , 
 	{ "name": "F_22_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "F_22_out", "role": "ap_vld" }} , 
 	{ "name": "F_21_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "F_21_out", "role": "default" }} , 
 	{ "name": "F_21_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "F_21_out", "role": "ap_vld" }} , 
 	{ "name": "F_20_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "F_20_out", "role": "default" }} , 
 	{ "name": "F_20_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "F_20_out", "role": "ap_vld" }} , 
 	{ "name": "F_19_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "F_19_out", "role": "default" }} , 
 	{ "name": "F_19_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "F_19_out", "role": "ap_vld" }} , 
 	{ "name": "F_18_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "F_18_out", "role": "default" }} , 
 	{ "name": "F_18_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "F_18_out", "role": "ap_vld" }} , 
 	{ "name": "F_17_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "F_17_out", "role": "default" }} , 
 	{ "name": "F_17_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "F_17_out", "role": "ap_vld" }} , 
 	{ "name": "F_16_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "F_16_out", "role": "default" }} , 
 	{ "name": "F_16_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "F_16_out", "role": "ap_vld" }} , 
 	{ "name": "F_15_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "F_15_out", "role": "default" }} , 
 	{ "name": "F_15_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "F_15_out", "role": "ap_vld" }} , 
 	{ "name": "F_14_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "F_14_out", "role": "default" }} , 
 	{ "name": "F_14_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "F_14_out", "role": "ap_vld" }} , 
 	{ "name": "F_13_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "F_13_out", "role": "default" }} , 
 	{ "name": "F_13_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "F_13_out", "role": "ap_vld" }} , 
 	{ "name": "F_12_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "F_12_out", "role": "default" }} , 
 	{ "name": "F_12_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "F_12_out", "role": "ap_vld" }} , 
 	{ "name": "F_11_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "F_11_out", "role": "default" }} , 
 	{ "name": "F_11_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "F_11_out", "role": "ap_vld" }} , 
 	{ "name": "F_10_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "F_10_out", "role": "default" }} , 
 	{ "name": "F_10_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "F_10_out", "role": "ap_vld" }} , 
 	{ "name": "F_9_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "F_9_out", "role": "default" }} , 
 	{ "name": "F_9_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "F_9_out", "role": "ap_vld" }} , 
 	{ "name": "F_8_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "F_8_out", "role": "default" }} , 
 	{ "name": "F_8_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "F_8_out", "role": "ap_vld" }} , 
 	{ "name": "F_7_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "F_7_out", "role": "default" }} , 
 	{ "name": "F_7_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "F_7_out", "role": "ap_vld" }} , 
 	{ "name": "F_6_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "F_6_out", "role": "default" }} , 
 	{ "name": "F_6_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "F_6_out", "role": "ap_vld" }} , 
 	{ "name": "F_5_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "F_5_out", "role": "default" }} , 
 	{ "name": "F_5_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "F_5_out", "role": "ap_vld" }} , 
 	{ "name": "F_4_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "F_4_out", "role": "default" }} , 
 	{ "name": "F_4_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "F_4_out", "role": "ap_vld" }} , 
 	{ "name": "F_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "F_3_out", "role": "default" }} , 
 	{ "name": "F_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "F_3_out", "role": "ap_vld" }} , 
 	{ "name": "F_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "F_2_out", "role": "default" }} , 
 	{ "name": "F_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "F_2_out", "role": "ap_vld" }} , 
 	{ "name": "F_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "F_1_out", "role": "default" }} , 
 	{ "name": "F_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "F_1_out", "role": "ap_vld" }} , 
 	{ "name": "F_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "F_out", "role": "default" }} , 
 	{ "name": "F_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "F_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "ekf_batch_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_42_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "38", "EstimateLatencyMax" : "38",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "F_32_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "F_31_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "F_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "F_29_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "F_28_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "F_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "F_26_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "F_25_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "F_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "F_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "F_22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "F_21_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "F_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "F_19_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "F_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "F_17_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "F_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "F_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "F_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "F_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "F_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "F_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "F_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "F_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "F_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "F_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "F_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "F_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "F_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "F_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "F_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "F_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "F_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_41_1_VITIS_LOOP_42_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	ekf_batch_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_42_2 {
		F_32_out {Type O LastRead -1 FirstWrite 0}
		F_31_out {Type O LastRead -1 FirstWrite 0}
		F_30_out {Type O LastRead -1 FirstWrite 0}
		F_29_out {Type O LastRead -1 FirstWrite 0}
		F_28_out {Type O LastRead -1 FirstWrite 0}
		F_27_out {Type O LastRead -1 FirstWrite 0}
		F_26_out {Type O LastRead -1 FirstWrite 0}
		F_25_out {Type O LastRead -1 FirstWrite 0}
		F_24_out {Type O LastRead -1 FirstWrite 0}
		F_23_out {Type O LastRead -1 FirstWrite 0}
		F_22_out {Type O LastRead -1 FirstWrite 0}
		F_21_out {Type O LastRead -1 FirstWrite 0}
		F_20_out {Type O LastRead -1 FirstWrite 0}
		F_19_out {Type O LastRead -1 FirstWrite 0}
		F_18_out {Type O LastRead -1 FirstWrite 0}
		F_17_out {Type O LastRead -1 FirstWrite 0}
		F_16_out {Type O LastRead -1 FirstWrite 0}
		F_15_out {Type O LastRead -1 FirstWrite 0}
		F_14_out {Type O LastRead -1 FirstWrite 0}
		F_13_out {Type O LastRead -1 FirstWrite 0}
		F_12_out {Type O LastRead -1 FirstWrite 0}
		F_11_out {Type O LastRead -1 FirstWrite 0}
		F_10_out {Type O LastRead -1 FirstWrite 0}
		F_9_out {Type O LastRead -1 FirstWrite 0}
		F_8_out {Type O LastRead -1 FirstWrite 0}
		F_7_out {Type O LastRead -1 FirstWrite 0}
		F_6_out {Type O LastRead -1 FirstWrite 0}
		F_5_out {Type O LastRead -1 FirstWrite 0}
		F_4_out {Type O LastRead -1 FirstWrite 0}
		F_3_out {Type O LastRead -1 FirstWrite 0}
		F_2_out {Type O LastRead -1 FirstWrite 0}
		F_1_out {Type O LastRead -1 FirstWrite 0}
		F_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "38", "Max" : "38"}
	, {"Name" : "Interval", "Min" : "38", "Max" : "38"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	F_32_out { ap_vld {  { F_32_out out_data 1 32 }  { F_32_out_ap_vld out_vld 1 1 } } }
	F_31_out { ap_vld {  { F_31_out out_data 1 32 }  { F_31_out_ap_vld out_vld 1 1 } } }
	F_30_out { ap_vld {  { F_30_out out_data 1 32 }  { F_30_out_ap_vld out_vld 1 1 } } }
	F_29_out { ap_vld {  { F_29_out out_data 1 32 }  { F_29_out_ap_vld out_vld 1 1 } } }
	F_28_out { ap_vld {  { F_28_out out_data 1 32 }  { F_28_out_ap_vld out_vld 1 1 } } }
	F_27_out { ap_vld {  { F_27_out out_data 1 32 }  { F_27_out_ap_vld out_vld 1 1 } } }
	F_26_out { ap_vld {  { F_26_out out_data 1 32 }  { F_26_out_ap_vld out_vld 1 1 } } }
	F_25_out { ap_vld {  { F_25_out out_data 1 32 }  { F_25_out_ap_vld out_vld 1 1 } } }
	F_24_out { ap_vld {  { F_24_out out_data 1 32 }  { F_24_out_ap_vld out_vld 1 1 } } }
	F_23_out { ap_vld {  { F_23_out out_data 1 32 }  { F_23_out_ap_vld out_vld 1 1 } } }
	F_22_out { ap_vld {  { F_22_out out_data 1 32 }  { F_22_out_ap_vld out_vld 1 1 } } }
	F_21_out { ap_vld {  { F_21_out out_data 1 32 }  { F_21_out_ap_vld out_vld 1 1 } } }
	F_20_out { ap_vld {  { F_20_out out_data 1 32 }  { F_20_out_ap_vld out_vld 1 1 } } }
	F_19_out { ap_vld {  { F_19_out out_data 1 32 }  { F_19_out_ap_vld out_vld 1 1 } } }
	F_18_out { ap_vld {  { F_18_out out_data 1 32 }  { F_18_out_ap_vld out_vld 1 1 } } }
	F_17_out { ap_vld {  { F_17_out out_data 1 32 }  { F_17_out_ap_vld out_vld 1 1 } } }
	F_16_out { ap_vld {  { F_16_out out_data 1 32 }  { F_16_out_ap_vld out_vld 1 1 } } }
	F_15_out { ap_vld {  { F_15_out out_data 1 32 }  { F_15_out_ap_vld out_vld 1 1 } } }
	F_14_out { ap_vld {  { F_14_out out_data 1 32 }  { F_14_out_ap_vld out_vld 1 1 } } }
	F_13_out { ap_vld {  { F_13_out out_data 1 32 }  { F_13_out_ap_vld out_vld 1 1 } } }
	F_12_out { ap_vld {  { F_12_out out_data 1 32 }  { F_12_out_ap_vld out_vld 1 1 } } }
	F_11_out { ap_vld {  { F_11_out out_data 1 32 }  { F_11_out_ap_vld out_vld 1 1 } } }
	F_10_out { ap_vld {  { F_10_out out_data 1 32 }  { F_10_out_ap_vld out_vld 1 1 } } }
	F_9_out { ap_vld {  { F_9_out out_data 1 32 }  { F_9_out_ap_vld out_vld 1 1 } } }
	F_8_out { ap_vld {  { F_8_out out_data 1 32 }  { F_8_out_ap_vld out_vld 1 1 } } }
	F_7_out { ap_vld {  { F_7_out out_data 1 32 }  { F_7_out_ap_vld out_vld 1 1 } } }
	F_6_out { ap_vld {  { F_6_out out_data 1 32 }  { F_6_out_ap_vld out_vld 1 1 } } }
	F_5_out { ap_vld {  { F_5_out out_data 1 32 }  { F_5_out_ap_vld out_vld 1 1 } } }
	F_4_out { ap_vld {  { F_4_out out_data 1 32 }  { F_4_out_ap_vld out_vld 1 1 } } }
	F_3_out { ap_vld {  { F_3_out out_data 1 32 }  { F_3_out_ap_vld out_vld 1 1 } } }
	F_2_out { ap_vld {  { F_2_out out_data 1 32 }  { F_2_out_ap_vld out_vld 1 1 } } }
	F_1_out { ap_vld {  { F_1_out out_data 1 32 }  { F_1_out_ap_vld out_vld 1 1 } } }
	F_out { ap_vld {  { F_out out_data 1 32 }  { F_out_ap_vld out_vld 1 1 } } }
}
