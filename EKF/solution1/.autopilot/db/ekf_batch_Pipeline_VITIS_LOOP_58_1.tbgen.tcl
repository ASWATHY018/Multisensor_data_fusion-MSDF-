set moduleName ekf_batch_Pipeline_VITIS_LOOP_58_1
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
set C_modelName {ekf_batch_Pipeline_VITIS_LOOP_58_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ F_reload float 32 regular  }
	{ F_5_reload float 32 regular  }
	{ F_10_reload float 32 regular  }
	{ F_15_reload float 32 regular  }
	{ F_21_reload float 32 regular  }
	{ F_27_reload float 32 regular  }
	{ x_reload float 32 regular  }
	{ F_1_reload float 32 regular  }
	{ F_6_reload float 32 regular  }
	{ F_11_reload float 32 regular  }
	{ F_16_reload float 32 regular  }
	{ F_22_reload float 32 regular  }
	{ F_28_reload float 32 regular  }
	{ x_1_reload float 32 regular  }
	{ F_2_reload float 32 regular  }
	{ F_7_reload float 32 regular  }
	{ F_12_reload float 32 regular  }
	{ F_17_reload float 32 regular  }
	{ F_23_reload float 32 regular  }
	{ F_29_reload float 32 regular  }
	{ x_2_reload float 32 regular  }
	{ F_8_reload float 32 regular  }
	{ F_13_reload float 32 regular  }
	{ F_18_reload float 32 regular  }
	{ F_24_reload float 32 regular  }
	{ F_30_reload float 32 regular  }
	{ x_3_reload float 32 regular  }
	{ F_3_reload float 32 regular  }
	{ F_14_reload float 32 regular  }
	{ F_19_reload float 32 regular  }
	{ F_25_reload float 32 regular  }
	{ F_31_reload float 32 regular  }
	{ x_4_reload float 32 regular  }
	{ F_4_reload float 32 regular  }
	{ F_9_reload float 32 regular  }
	{ F_20_reload float 32 regular  }
	{ F_26_reload float 32 regular  }
	{ F_32_reload float 32 regular  }
	{ x_5_reload float 32 regular  }
	{ xp_5_out float 32 regular {pointer 1}  }
	{ xp_4_out float 32 regular {pointer 1}  }
	{ xp_3_out float 32 regular {pointer 1}  }
	{ xp_2_out float 32 regular {pointer 1}  }
	{ xp_1_out float 32 regular {pointer 1}  }
	{ xp_out float 32 regular {pointer 1}  }
}
set hasAXIMCache 0
set C_modelArgMapList {[ 
	{ "Name" : "F_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "F_5_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "F_10_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "F_15_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "F_21_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "F_27_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "F_1_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "F_6_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "F_11_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "F_16_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "F_22_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "F_28_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_1_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "F_2_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "F_7_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "F_12_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "F_17_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "F_23_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "F_29_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_2_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "F_8_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "F_13_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "F_18_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "F_24_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "F_30_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "F_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "F_14_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "F_19_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "F_25_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "F_31_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_4_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "F_4_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "F_9_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "F_20_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "F_26_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "F_32_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_5_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "xp_5_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "xp_4_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "xp_3_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "xp_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "xp_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "xp_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 66
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ F_reload sc_in sc_lv 32 signal 0 } 
	{ F_5_reload sc_in sc_lv 32 signal 1 } 
	{ F_10_reload sc_in sc_lv 32 signal 2 } 
	{ F_15_reload sc_in sc_lv 32 signal 3 } 
	{ F_21_reload sc_in sc_lv 32 signal 4 } 
	{ F_27_reload sc_in sc_lv 32 signal 5 } 
	{ x_reload sc_in sc_lv 32 signal 6 } 
	{ F_1_reload sc_in sc_lv 32 signal 7 } 
	{ F_6_reload sc_in sc_lv 32 signal 8 } 
	{ F_11_reload sc_in sc_lv 32 signal 9 } 
	{ F_16_reload sc_in sc_lv 32 signal 10 } 
	{ F_22_reload sc_in sc_lv 32 signal 11 } 
	{ F_28_reload sc_in sc_lv 32 signal 12 } 
	{ x_1_reload sc_in sc_lv 32 signal 13 } 
	{ F_2_reload sc_in sc_lv 32 signal 14 } 
	{ F_7_reload sc_in sc_lv 32 signal 15 } 
	{ F_12_reload sc_in sc_lv 32 signal 16 } 
	{ F_17_reload sc_in sc_lv 32 signal 17 } 
	{ F_23_reload sc_in sc_lv 32 signal 18 } 
	{ F_29_reload sc_in sc_lv 32 signal 19 } 
	{ x_2_reload sc_in sc_lv 32 signal 20 } 
	{ F_8_reload sc_in sc_lv 32 signal 21 } 
	{ F_13_reload sc_in sc_lv 32 signal 22 } 
	{ F_18_reload sc_in sc_lv 32 signal 23 } 
	{ F_24_reload sc_in sc_lv 32 signal 24 } 
	{ F_30_reload sc_in sc_lv 32 signal 25 } 
	{ x_3_reload sc_in sc_lv 32 signal 26 } 
	{ F_3_reload sc_in sc_lv 32 signal 27 } 
	{ F_14_reload sc_in sc_lv 32 signal 28 } 
	{ F_19_reload sc_in sc_lv 32 signal 29 } 
	{ F_25_reload sc_in sc_lv 32 signal 30 } 
	{ F_31_reload sc_in sc_lv 32 signal 31 } 
	{ x_4_reload sc_in sc_lv 32 signal 32 } 
	{ F_4_reload sc_in sc_lv 32 signal 33 } 
	{ F_9_reload sc_in sc_lv 32 signal 34 } 
	{ F_20_reload sc_in sc_lv 32 signal 35 } 
	{ F_26_reload sc_in sc_lv 32 signal 36 } 
	{ F_32_reload sc_in sc_lv 32 signal 37 } 
	{ x_5_reload sc_in sc_lv 32 signal 38 } 
	{ xp_5_out sc_out sc_lv 32 signal 39 } 
	{ xp_5_out_ap_vld sc_out sc_logic 1 outvld 39 } 
	{ xp_4_out sc_out sc_lv 32 signal 40 } 
	{ xp_4_out_ap_vld sc_out sc_logic 1 outvld 40 } 
	{ xp_3_out sc_out sc_lv 32 signal 41 } 
	{ xp_3_out_ap_vld sc_out sc_logic 1 outvld 41 } 
	{ xp_2_out sc_out sc_lv 32 signal 42 } 
	{ xp_2_out_ap_vld sc_out sc_logic 1 outvld 42 } 
	{ xp_1_out sc_out sc_lv 32 signal 43 } 
	{ xp_1_out_ap_vld sc_out sc_logic 1 outvld 43 } 
	{ xp_out sc_out sc_lv 32 signal 44 } 
	{ xp_out_ap_vld sc_out sc_logic 1 outvld 44 } 
	{ grp_fu_19343_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_19343_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_19343_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_19343_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_19343_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_19347_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_19347_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_19347_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_19347_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "F_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "F_reload", "role": "default" }} , 
 	{ "name": "F_5_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "F_5_reload", "role": "default" }} , 
 	{ "name": "F_10_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "F_10_reload", "role": "default" }} , 
 	{ "name": "F_15_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "F_15_reload", "role": "default" }} , 
 	{ "name": "F_21_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "F_21_reload", "role": "default" }} , 
 	{ "name": "F_27_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "F_27_reload", "role": "default" }} , 
 	{ "name": "x_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_reload", "role": "default" }} , 
 	{ "name": "F_1_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "F_1_reload", "role": "default" }} , 
 	{ "name": "F_6_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "F_6_reload", "role": "default" }} , 
 	{ "name": "F_11_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "F_11_reload", "role": "default" }} , 
 	{ "name": "F_16_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "F_16_reload", "role": "default" }} , 
 	{ "name": "F_22_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "F_22_reload", "role": "default" }} , 
 	{ "name": "F_28_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "F_28_reload", "role": "default" }} , 
 	{ "name": "x_1_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_1_reload", "role": "default" }} , 
 	{ "name": "F_2_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "F_2_reload", "role": "default" }} , 
 	{ "name": "F_7_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "F_7_reload", "role": "default" }} , 
 	{ "name": "F_12_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "F_12_reload", "role": "default" }} , 
 	{ "name": "F_17_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "F_17_reload", "role": "default" }} , 
 	{ "name": "F_23_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "F_23_reload", "role": "default" }} , 
 	{ "name": "F_29_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "F_29_reload", "role": "default" }} , 
 	{ "name": "x_2_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_2_reload", "role": "default" }} , 
 	{ "name": "F_8_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "F_8_reload", "role": "default" }} , 
 	{ "name": "F_13_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "F_13_reload", "role": "default" }} , 
 	{ "name": "F_18_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "F_18_reload", "role": "default" }} , 
 	{ "name": "F_24_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "F_24_reload", "role": "default" }} , 
 	{ "name": "F_30_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "F_30_reload", "role": "default" }} , 
 	{ "name": "x_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_3_reload", "role": "default" }} , 
 	{ "name": "F_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "F_3_reload", "role": "default" }} , 
 	{ "name": "F_14_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "F_14_reload", "role": "default" }} , 
 	{ "name": "F_19_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "F_19_reload", "role": "default" }} , 
 	{ "name": "F_25_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "F_25_reload", "role": "default" }} , 
 	{ "name": "F_31_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "F_31_reload", "role": "default" }} , 
 	{ "name": "x_4_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_4_reload", "role": "default" }} , 
 	{ "name": "F_4_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "F_4_reload", "role": "default" }} , 
 	{ "name": "F_9_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "F_9_reload", "role": "default" }} , 
 	{ "name": "F_20_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "F_20_reload", "role": "default" }} , 
 	{ "name": "F_26_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "F_26_reload", "role": "default" }} , 
 	{ "name": "F_32_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "F_32_reload", "role": "default" }} , 
 	{ "name": "x_5_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_5_reload", "role": "default" }} , 
 	{ "name": "xp_5_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "xp_5_out", "role": "default" }} , 
 	{ "name": "xp_5_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "xp_5_out", "role": "ap_vld" }} , 
 	{ "name": "xp_4_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "xp_4_out", "role": "default" }} , 
 	{ "name": "xp_4_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "xp_4_out", "role": "ap_vld" }} , 
 	{ "name": "xp_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "xp_3_out", "role": "default" }} , 
 	{ "name": "xp_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "xp_3_out", "role": "ap_vld" }} , 
 	{ "name": "xp_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "xp_2_out", "role": "default" }} , 
 	{ "name": "xp_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "xp_2_out", "role": "ap_vld" }} , 
 	{ "name": "xp_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "xp_1_out", "role": "default" }} , 
 	{ "name": "xp_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "xp_1_out", "role": "ap_vld" }} , 
 	{ "name": "xp_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "xp_out", "role": "default" }} , 
 	{ "name": "xp_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "xp_out", "role": "ap_vld" }} , 
 	{ "name": "grp_fu_19343_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_19343_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_19343_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_19343_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_19343_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_19343_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_19343_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_19343_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_19343_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_19343_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_19347_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_19347_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_19347_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_19347_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_19347_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_19347_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_19347_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_19347_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17"],
		"CDFG" : "ekf_batch_Pipeline_VITIS_LOOP_58_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34", "EstimateLatencyMax" : "34",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "F_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "F_5_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "F_10_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "F_15_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "F_21_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "F_27_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "F_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "F_6_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "F_11_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "F_16_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "F_22_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "F_28_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "F_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "F_7_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "F_12_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "F_17_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "F_23_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "F_29_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "F_8_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "F_13_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "F_18_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "F_24_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "F_30_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "F_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "F_14_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "F_19_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "F_25_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "F_31_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_4_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "F_4_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "F_9_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "F_20_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "F_26_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "F_32_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_5_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "xp_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "xp_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "xp_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "xp_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "xp_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "xp_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_58_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter27", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter27", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U117", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U118", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U119", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U120", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U121", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U123", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U124", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U125", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U126", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_3_max_dsp_1_U127", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_6_3_32_1_1_U128", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_6_3_32_1_1_U129", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_6_3_32_1_1_U130", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_6_3_32_1_1_U131", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_6_3_32_1_1_U132", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_6_3_32_1_1_U133", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	ekf_batch_Pipeline_VITIS_LOOP_58_1 {
		F_reload {Type I LastRead 0 FirstWrite -1}
		F_5_reload {Type I LastRead 0 FirstWrite -1}
		F_10_reload {Type I LastRead 0 FirstWrite -1}
		F_15_reload {Type I LastRead 0 FirstWrite -1}
		F_21_reload {Type I LastRead 0 FirstWrite -1}
		F_27_reload {Type I LastRead 0 FirstWrite -1}
		x_reload {Type I LastRead 0 FirstWrite -1}
		F_1_reload {Type I LastRead 0 FirstWrite -1}
		F_6_reload {Type I LastRead 0 FirstWrite -1}
		F_11_reload {Type I LastRead 0 FirstWrite -1}
		F_16_reload {Type I LastRead 0 FirstWrite -1}
		F_22_reload {Type I LastRead 0 FirstWrite -1}
		F_28_reload {Type I LastRead 0 FirstWrite -1}
		x_1_reload {Type I LastRead 0 FirstWrite -1}
		F_2_reload {Type I LastRead 0 FirstWrite -1}
		F_7_reload {Type I LastRead 0 FirstWrite -1}
		F_12_reload {Type I LastRead 0 FirstWrite -1}
		F_17_reload {Type I LastRead 0 FirstWrite -1}
		F_23_reload {Type I LastRead 0 FirstWrite -1}
		F_29_reload {Type I LastRead 0 FirstWrite -1}
		x_2_reload {Type I LastRead 0 FirstWrite -1}
		F_8_reload {Type I LastRead 0 FirstWrite -1}
		F_13_reload {Type I LastRead 0 FirstWrite -1}
		F_18_reload {Type I LastRead 0 FirstWrite -1}
		F_24_reload {Type I LastRead 0 FirstWrite -1}
		F_30_reload {Type I LastRead 0 FirstWrite -1}
		x_3_reload {Type I LastRead 0 FirstWrite -1}
		F_3_reload {Type I LastRead 0 FirstWrite -1}
		F_14_reload {Type I LastRead 0 FirstWrite -1}
		F_19_reload {Type I LastRead 0 FirstWrite -1}
		F_25_reload {Type I LastRead 0 FirstWrite -1}
		F_31_reload {Type I LastRead 0 FirstWrite -1}
		x_4_reload {Type I LastRead 0 FirstWrite -1}
		F_4_reload {Type I LastRead 0 FirstWrite -1}
		F_9_reload {Type I LastRead 0 FirstWrite -1}
		F_20_reload {Type I LastRead 0 FirstWrite -1}
		F_26_reload {Type I LastRead 0 FirstWrite -1}
		F_32_reload {Type I LastRead 0 FirstWrite -1}
		x_5_reload {Type I LastRead 0 FirstWrite -1}
		xp_5_out {Type O LastRead -1 FirstWrite 26}
		xp_4_out {Type O LastRead -1 FirstWrite 26}
		xp_3_out {Type O LastRead -1 FirstWrite 26}
		xp_2_out {Type O LastRead -1 FirstWrite 26}
		xp_1_out {Type O LastRead -1 FirstWrite 26}
		xp_out {Type O LastRead -1 FirstWrite 26}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "34", "Max" : "34"}
	, {"Name" : "Interval", "Min" : "34", "Max" : "34"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	F_reload { ap_none {  { F_reload in_data 0 32 } } }
	F_5_reload { ap_none {  { F_5_reload in_data 0 32 } } }
	F_10_reload { ap_none {  { F_10_reload in_data 0 32 } } }
	F_15_reload { ap_none {  { F_15_reload in_data 0 32 } } }
	F_21_reload { ap_none {  { F_21_reload in_data 0 32 } } }
	F_27_reload { ap_none {  { F_27_reload in_data 0 32 } } }
	x_reload { ap_none {  { x_reload in_data 0 32 } } }
	F_1_reload { ap_none {  { F_1_reload in_data 0 32 } } }
	F_6_reload { ap_none {  { F_6_reload in_data 0 32 } } }
	F_11_reload { ap_none {  { F_11_reload in_data 0 32 } } }
	F_16_reload { ap_none {  { F_16_reload in_data 0 32 } } }
	F_22_reload { ap_none {  { F_22_reload in_data 0 32 } } }
	F_28_reload { ap_none {  { F_28_reload in_data 0 32 } } }
	x_1_reload { ap_none {  { x_1_reload in_data 0 32 } } }
	F_2_reload { ap_none {  { F_2_reload in_data 0 32 } } }
	F_7_reload { ap_none {  { F_7_reload in_data 0 32 } } }
	F_12_reload { ap_none {  { F_12_reload in_data 0 32 } } }
	F_17_reload { ap_none {  { F_17_reload in_data 0 32 } } }
	F_23_reload { ap_none {  { F_23_reload in_data 0 32 } } }
	F_29_reload { ap_none {  { F_29_reload in_data 0 32 } } }
	x_2_reload { ap_none {  { x_2_reload in_data 0 32 } } }
	F_8_reload { ap_none {  { F_8_reload in_data 0 32 } } }
	F_13_reload { ap_none {  { F_13_reload in_data 0 32 } } }
	F_18_reload { ap_none {  { F_18_reload in_data 0 32 } } }
	F_24_reload { ap_none {  { F_24_reload in_data 0 32 } } }
	F_30_reload { ap_none {  { F_30_reload in_data 0 32 } } }
	x_3_reload { ap_none {  { x_3_reload in_data 0 32 } } }
	F_3_reload { ap_none {  { F_3_reload in_data 0 32 } } }
	F_14_reload { ap_none {  { F_14_reload in_data 0 32 } } }
	F_19_reload { ap_none {  { F_19_reload in_data 0 32 } } }
	F_25_reload { ap_none {  { F_25_reload in_data 0 32 } } }
	F_31_reload { ap_none {  { F_31_reload in_data 0 32 } } }
	x_4_reload { ap_none {  { x_4_reload in_data 0 32 } } }
	F_4_reload { ap_none {  { F_4_reload in_data 0 32 } } }
	F_9_reload { ap_none {  { F_9_reload in_data 0 32 } } }
	F_20_reload { ap_none {  { F_20_reload in_data 0 32 } } }
	F_26_reload { ap_none {  { F_26_reload in_data 0 32 } } }
	F_32_reload { ap_none {  { F_32_reload in_data 0 32 } } }
	x_5_reload { ap_none {  { x_5_reload in_data 0 32 } } }
	xp_5_out { ap_vld {  { xp_5_out out_data 1 32 }  { xp_5_out_ap_vld out_vld 1 1 } } }
	xp_4_out { ap_vld {  { xp_4_out out_data 1 32 }  { xp_4_out_ap_vld out_vld 1 1 } } }
	xp_3_out { ap_vld {  { xp_3_out out_data 1 32 }  { xp_3_out_ap_vld out_vld 1 1 } } }
	xp_2_out { ap_vld {  { xp_2_out out_data 1 32 }  { xp_2_out_ap_vld out_vld 1 1 } } }
	xp_1_out { ap_vld {  { xp_1_out out_data 1 32 }  { xp_1_out_ap_vld out_vld 1 1 } } }
	xp_out { ap_vld {  { xp_out out_data 1 32 }  { xp_out_ap_vld out_vld 1 1 } } }
}
