set moduleName ekf_batch_Pipeline_VITIS_LOOP_109_6
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
set C_modelName {ekf_batch_Pipeline_VITIS_LOOP_109_6}
set C_modelType { void 0 }
set C_modelArgList {
	{ K_reload float 32 regular  }
	{ K_1_reload float 32 regular  }
	{ K_2_reload float 32 regular  }
	{ K_3_reload float 32 regular  }
	{ K_4_reload float 32 regular  }
	{ K_5_reload float 32 regular  }
	{ H_5_reload float 32 regular  }
	{ H_4_reload float 32 regular  }
	{ H_3_reload float 32 regular  }
	{ H_2_reload float 32 regular  }
	{ H_1_reload float 32 regular  }
	{ H_reload float 32 regular  }
	{ A_35_out float 32 regular {pointer 1}  }
	{ A_34_out float 32 regular {pointer 1}  }
	{ A_33_out float 32 regular {pointer 1}  }
	{ A_32_out float 32 regular {pointer 1}  }
	{ A_31_out float 32 regular {pointer 1}  }
	{ A_30_out float 32 regular {pointer 1}  }
	{ A_29_out float 32 regular {pointer 1}  }
	{ A_28_out float 32 regular {pointer 1}  }
	{ A_27_out float 32 regular {pointer 1}  }
	{ A_26_out float 32 regular {pointer 1}  }
	{ A_25_out float 32 regular {pointer 1}  }
	{ A_24_out float 32 regular {pointer 1}  }
	{ A_23_out float 32 regular {pointer 1}  }
	{ A_22_out float 32 regular {pointer 1}  }
	{ A_21_out float 32 regular {pointer 1}  }
	{ A_20_out float 32 regular {pointer 1}  }
	{ A_19_out float 32 regular {pointer 1}  }
	{ A_18_out float 32 regular {pointer 1}  }
	{ A_17_out float 32 regular {pointer 1}  }
	{ A_16_out float 32 regular {pointer 1}  }
	{ A_15_out float 32 regular {pointer 1}  }
	{ A_14_out float 32 regular {pointer 1}  }
	{ A_13_out float 32 regular {pointer 1}  }
	{ A_12_out float 32 regular {pointer 1}  }
	{ A_11_out float 32 regular {pointer 1}  }
	{ A_10_out float 32 regular {pointer 1}  }
	{ A_9_out float 32 regular {pointer 1}  }
	{ A_8_out float 32 regular {pointer 1}  }
	{ A_7_out float 32 regular {pointer 1}  }
	{ A_6_out float 32 regular {pointer 1}  }
	{ A_5_out float 32 regular {pointer 1}  }
	{ A_4_out float 32 regular {pointer 1}  }
	{ A_3_out float 32 regular {pointer 1}  }
	{ A_2_out float 32 regular {pointer 1}  }
	{ A_1_out float 32 regular {pointer 1}  }
	{ A_out float 32 regular {pointer 1}  }
}
set hasAXIMCache 0
set C_modelArgMapList {[ 
	{ "Name" : "K_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "K_1_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "K_2_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "K_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "K_4_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "K_5_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "H_5_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "H_4_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "H_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "H_2_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "H_1_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "H_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_35_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "A_34_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "A_33_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "A_32_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "A_31_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "A_30_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "A_29_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "A_28_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "A_27_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "A_26_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "A_25_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "A_24_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "A_23_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "A_22_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "A_21_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "A_20_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "A_19_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "A_18_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "A_17_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "A_16_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "A_15_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "A_14_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "A_13_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "A_12_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "A_11_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "A_10_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "A_9_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "A_8_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "A_7_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "A_6_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "A_5_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "A_4_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "A_3_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "A_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "A_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "A_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 144
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ K_reload sc_in sc_lv 32 signal 0 } 
	{ K_1_reload sc_in sc_lv 32 signal 1 } 
	{ K_2_reload sc_in sc_lv 32 signal 2 } 
	{ K_3_reload sc_in sc_lv 32 signal 3 } 
	{ K_4_reload sc_in sc_lv 32 signal 4 } 
	{ K_5_reload sc_in sc_lv 32 signal 5 } 
	{ H_5_reload sc_in sc_lv 32 signal 6 } 
	{ H_4_reload sc_in sc_lv 32 signal 7 } 
	{ H_3_reload sc_in sc_lv 32 signal 8 } 
	{ H_2_reload sc_in sc_lv 32 signal 9 } 
	{ H_1_reload sc_in sc_lv 32 signal 10 } 
	{ H_reload sc_in sc_lv 32 signal 11 } 
	{ A_35_out sc_out sc_lv 32 signal 12 } 
	{ A_35_out_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ A_34_out sc_out sc_lv 32 signal 13 } 
	{ A_34_out_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ A_33_out sc_out sc_lv 32 signal 14 } 
	{ A_33_out_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ A_32_out sc_out sc_lv 32 signal 15 } 
	{ A_32_out_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ A_31_out sc_out sc_lv 32 signal 16 } 
	{ A_31_out_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ A_30_out sc_out sc_lv 32 signal 17 } 
	{ A_30_out_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ A_29_out sc_out sc_lv 32 signal 18 } 
	{ A_29_out_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ A_28_out sc_out sc_lv 32 signal 19 } 
	{ A_28_out_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ A_27_out sc_out sc_lv 32 signal 20 } 
	{ A_27_out_ap_vld sc_out sc_logic 1 outvld 20 } 
	{ A_26_out sc_out sc_lv 32 signal 21 } 
	{ A_26_out_ap_vld sc_out sc_logic 1 outvld 21 } 
	{ A_25_out sc_out sc_lv 32 signal 22 } 
	{ A_25_out_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ A_24_out sc_out sc_lv 32 signal 23 } 
	{ A_24_out_ap_vld sc_out sc_logic 1 outvld 23 } 
	{ A_23_out sc_out sc_lv 32 signal 24 } 
	{ A_23_out_ap_vld sc_out sc_logic 1 outvld 24 } 
	{ A_22_out sc_out sc_lv 32 signal 25 } 
	{ A_22_out_ap_vld sc_out sc_logic 1 outvld 25 } 
	{ A_21_out sc_out sc_lv 32 signal 26 } 
	{ A_21_out_ap_vld sc_out sc_logic 1 outvld 26 } 
	{ A_20_out sc_out sc_lv 32 signal 27 } 
	{ A_20_out_ap_vld sc_out sc_logic 1 outvld 27 } 
	{ A_19_out sc_out sc_lv 32 signal 28 } 
	{ A_19_out_ap_vld sc_out sc_logic 1 outvld 28 } 
	{ A_18_out sc_out sc_lv 32 signal 29 } 
	{ A_18_out_ap_vld sc_out sc_logic 1 outvld 29 } 
	{ A_17_out sc_out sc_lv 32 signal 30 } 
	{ A_17_out_ap_vld sc_out sc_logic 1 outvld 30 } 
	{ A_16_out sc_out sc_lv 32 signal 31 } 
	{ A_16_out_ap_vld sc_out sc_logic 1 outvld 31 } 
	{ A_15_out sc_out sc_lv 32 signal 32 } 
	{ A_15_out_ap_vld sc_out sc_logic 1 outvld 32 } 
	{ A_14_out sc_out sc_lv 32 signal 33 } 
	{ A_14_out_ap_vld sc_out sc_logic 1 outvld 33 } 
	{ A_13_out sc_out sc_lv 32 signal 34 } 
	{ A_13_out_ap_vld sc_out sc_logic 1 outvld 34 } 
	{ A_12_out sc_out sc_lv 32 signal 35 } 
	{ A_12_out_ap_vld sc_out sc_logic 1 outvld 35 } 
	{ A_11_out sc_out sc_lv 32 signal 36 } 
	{ A_11_out_ap_vld sc_out sc_logic 1 outvld 36 } 
	{ A_10_out sc_out sc_lv 32 signal 37 } 
	{ A_10_out_ap_vld sc_out sc_logic 1 outvld 37 } 
	{ A_9_out sc_out sc_lv 32 signal 38 } 
	{ A_9_out_ap_vld sc_out sc_logic 1 outvld 38 } 
	{ A_8_out sc_out sc_lv 32 signal 39 } 
	{ A_8_out_ap_vld sc_out sc_logic 1 outvld 39 } 
	{ A_7_out sc_out sc_lv 32 signal 40 } 
	{ A_7_out_ap_vld sc_out sc_logic 1 outvld 40 } 
	{ A_6_out sc_out sc_lv 32 signal 41 } 
	{ A_6_out_ap_vld sc_out sc_logic 1 outvld 41 } 
	{ A_5_out sc_out sc_lv 32 signal 42 } 
	{ A_5_out_ap_vld sc_out sc_logic 1 outvld 42 } 
	{ A_4_out sc_out sc_lv 32 signal 43 } 
	{ A_4_out_ap_vld sc_out sc_logic 1 outvld 43 } 
	{ A_3_out sc_out sc_lv 32 signal 44 } 
	{ A_3_out_ap_vld sc_out sc_logic 1 outvld 44 } 
	{ A_2_out sc_out sc_lv 32 signal 45 } 
	{ A_2_out_ap_vld sc_out sc_logic 1 outvld 45 } 
	{ A_1_out sc_out sc_lv 32 signal 46 } 
	{ A_1_out_ap_vld sc_out sc_logic 1 outvld 46 } 
	{ A_out sc_out sc_lv 32 signal 47 } 
	{ A_out_ap_vld sc_out sc_logic 1 outvld 47 } 
	{ grp_fu_19351_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_19351_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_19351_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_19351_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_19351_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_19355_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_19355_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_19355_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_19355_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_19355_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_19359_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_19359_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_19359_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_19359_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_19359_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_19363_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_19363_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_19363_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_19363_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_19363_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_19367_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_19367_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_19367_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_19367_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_19367_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_19343_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_19343_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_19343_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_19343_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_19343_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_19371_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_19371_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_19371_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_19371_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_19375_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_19375_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_19375_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_19375_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_19379_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_19379_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_19379_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_19379_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_19383_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_19383_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_19383_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_19383_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_19387_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_19387_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_19387_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_19387_p_ce sc_out sc_logic 1 signal -1 } 
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
 	{ "name": "K_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "K_reload", "role": "default" }} , 
 	{ "name": "K_1_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "K_1_reload", "role": "default" }} , 
 	{ "name": "K_2_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "K_2_reload", "role": "default" }} , 
 	{ "name": "K_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "K_3_reload", "role": "default" }} , 
 	{ "name": "K_4_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "K_4_reload", "role": "default" }} , 
 	{ "name": "K_5_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "K_5_reload", "role": "default" }} , 
 	{ "name": "H_5_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "H_5_reload", "role": "default" }} , 
 	{ "name": "H_4_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "H_4_reload", "role": "default" }} , 
 	{ "name": "H_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "H_3_reload", "role": "default" }} , 
 	{ "name": "H_2_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "H_2_reload", "role": "default" }} , 
 	{ "name": "H_1_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "H_1_reload", "role": "default" }} , 
 	{ "name": "H_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "H_reload", "role": "default" }} , 
 	{ "name": "A_35_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_35_out", "role": "default" }} , 
 	{ "name": "A_35_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_35_out", "role": "ap_vld" }} , 
 	{ "name": "A_34_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_34_out", "role": "default" }} , 
 	{ "name": "A_34_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_34_out", "role": "ap_vld" }} , 
 	{ "name": "A_33_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_33_out", "role": "default" }} , 
 	{ "name": "A_33_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_33_out", "role": "ap_vld" }} , 
 	{ "name": "A_32_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_32_out", "role": "default" }} , 
 	{ "name": "A_32_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_32_out", "role": "ap_vld" }} , 
 	{ "name": "A_31_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_31_out", "role": "default" }} , 
 	{ "name": "A_31_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_31_out", "role": "ap_vld" }} , 
 	{ "name": "A_30_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_30_out", "role": "default" }} , 
 	{ "name": "A_30_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_30_out", "role": "ap_vld" }} , 
 	{ "name": "A_29_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_29_out", "role": "default" }} , 
 	{ "name": "A_29_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_29_out", "role": "ap_vld" }} , 
 	{ "name": "A_28_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_28_out", "role": "default" }} , 
 	{ "name": "A_28_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_28_out", "role": "ap_vld" }} , 
 	{ "name": "A_27_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_27_out", "role": "default" }} , 
 	{ "name": "A_27_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_27_out", "role": "ap_vld" }} , 
 	{ "name": "A_26_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_26_out", "role": "default" }} , 
 	{ "name": "A_26_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_26_out", "role": "ap_vld" }} , 
 	{ "name": "A_25_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_25_out", "role": "default" }} , 
 	{ "name": "A_25_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_25_out", "role": "ap_vld" }} , 
 	{ "name": "A_24_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_24_out", "role": "default" }} , 
 	{ "name": "A_24_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_24_out", "role": "ap_vld" }} , 
 	{ "name": "A_23_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_23_out", "role": "default" }} , 
 	{ "name": "A_23_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_23_out", "role": "ap_vld" }} , 
 	{ "name": "A_22_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_22_out", "role": "default" }} , 
 	{ "name": "A_22_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_22_out", "role": "ap_vld" }} , 
 	{ "name": "A_21_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_21_out", "role": "default" }} , 
 	{ "name": "A_21_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_21_out", "role": "ap_vld" }} , 
 	{ "name": "A_20_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_20_out", "role": "default" }} , 
 	{ "name": "A_20_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_20_out", "role": "ap_vld" }} , 
 	{ "name": "A_19_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_19_out", "role": "default" }} , 
 	{ "name": "A_19_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_19_out", "role": "ap_vld" }} , 
 	{ "name": "A_18_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_18_out", "role": "default" }} , 
 	{ "name": "A_18_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_18_out", "role": "ap_vld" }} , 
 	{ "name": "A_17_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_17_out", "role": "default" }} , 
 	{ "name": "A_17_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_17_out", "role": "ap_vld" }} , 
 	{ "name": "A_16_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_16_out", "role": "default" }} , 
 	{ "name": "A_16_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_16_out", "role": "ap_vld" }} , 
 	{ "name": "A_15_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_15_out", "role": "default" }} , 
 	{ "name": "A_15_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_15_out", "role": "ap_vld" }} , 
 	{ "name": "A_14_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_14_out", "role": "default" }} , 
 	{ "name": "A_14_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_14_out", "role": "ap_vld" }} , 
 	{ "name": "A_13_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_13_out", "role": "default" }} , 
 	{ "name": "A_13_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_13_out", "role": "ap_vld" }} , 
 	{ "name": "A_12_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_12_out", "role": "default" }} , 
 	{ "name": "A_12_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_12_out", "role": "ap_vld" }} , 
 	{ "name": "A_11_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_11_out", "role": "default" }} , 
 	{ "name": "A_11_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_11_out", "role": "ap_vld" }} , 
 	{ "name": "A_10_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_10_out", "role": "default" }} , 
 	{ "name": "A_10_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_10_out", "role": "ap_vld" }} , 
 	{ "name": "A_9_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_9_out", "role": "default" }} , 
 	{ "name": "A_9_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_9_out", "role": "ap_vld" }} , 
 	{ "name": "A_8_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_8_out", "role": "default" }} , 
 	{ "name": "A_8_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_8_out", "role": "ap_vld" }} , 
 	{ "name": "A_7_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_7_out", "role": "default" }} , 
 	{ "name": "A_7_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_7_out", "role": "ap_vld" }} , 
 	{ "name": "A_6_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_6_out", "role": "default" }} , 
 	{ "name": "A_6_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_6_out", "role": "ap_vld" }} , 
 	{ "name": "A_5_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_5_out", "role": "default" }} , 
 	{ "name": "A_5_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_5_out", "role": "ap_vld" }} , 
 	{ "name": "A_4_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_4_out", "role": "default" }} , 
 	{ "name": "A_4_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_4_out", "role": "ap_vld" }} , 
 	{ "name": "A_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_3_out", "role": "default" }} , 
 	{ "name": "A_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_3_out", "role": "ap_vld" }} , 
 	{ "name": "A_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_2_out", "role": "default" }} , 
 	{ "name": "A_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_2_out", "role": "ap_vld" }} , 
 	{ "name": "A_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_1_out", "role": "default" }} , 
 	{ "name": "A_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_1_out", "role": "ap_vld" }} , 
 	{ "name": "A_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_out", "role": "default" }} , 
 	{ "name": "A_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "A_out", "role": "ap_vld" }} , 
 	{ "name": "grp_fu_19351_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_19351_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_19351_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_19351_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_19351_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_19351_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_19351_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_19351_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_19351_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_19351_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_19355_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_19355_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_19355_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_19355_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_19355_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_19355_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_19355_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_19355_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_19355_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_19355_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_19359_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_19359_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_19359_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_19359_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_19359_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_19359_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_19359_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_19359_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_19359_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_19359_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_19363_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_19363_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_19363_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_19363_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_19363_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_19363_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_19363_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_19363_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_19363_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_19363_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_19367_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_19367_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_19367_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_19367_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_19367_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_19367_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_19367_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_19367_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_19367_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_19367_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_19343_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_19343_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_19343_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_19343_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_19343_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_19343_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_19343_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_19343_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_19343_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_19343_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_19371_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_19371_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_19371_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_19371_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_19371_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_19371_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_19371_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_19371_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_19375_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_19375_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_19375_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_19375_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_19375_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_19375_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_19375_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_19375_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_19379_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_19379_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_19379_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_19379_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_19379_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_19379_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_19379_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_19379_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_19383_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_19383_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_19383_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_19383_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_19383_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_19383_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_19383_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_19383_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_19387_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_19387_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_19387_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_19387_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_19387_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_19387_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_19387_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_19387_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_19347_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_19347_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_19347_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_19347_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_19347_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_19347_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_19347_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_19347_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "ekf_batch_Pipeline_VITIS_LOOP_109_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "K_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "K_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "K_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "K_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "K_4_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "K_5_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "H_5_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "H_4_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "H_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "H_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "H_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "H_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_35_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "A_34_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "A_33_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "A_32_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "A_31_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "A_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "A_29_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "A_28_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "A_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "A_26_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "A_25_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "A_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "A_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "A_22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "A_21_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "A_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "A_19_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "A_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "A_17_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "A_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "A_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "A_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "A_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "A_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "A_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "A_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "A_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "A_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "A_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "A_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "A_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "A_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "A_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "A_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "A_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "A_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_109_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter7", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter7", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_6_3_32_1_1_U831", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	ekf_batch_Pipeline_VITIS_LOOP_109_6 {
		K_reload {Type I LastRead 0 FirstWrite -1}
		K_1_reload {Type I LastRead 0 FirstWrite -1}
		K_2_reload {Type I LastRead 0 FirstWrite -1}
		K_3_reload {Type I LastRead 0 FirstWrite -1}
		K_4_reload {Type I LastRead 0 FirstWrite -1}
		K_5_reload {Type I LastRead 0 FirstWrite -1}
		H_5_reload {Type I LastRead 0 FirstWrite -1}
		H_4_reload {Type I LastRead 0 FirstWrite -1}
		H_3_reload {Type I LastRead 0 FirstWrite -1}
		H_2_reload {Type I LastRead 0 FirstWrite -1}
		H_1_reload {Type I LastRead 0 FirstWrite -1}
		H_reload {Type I LastRead 0 FirstWrite -1}
		A_35_out {Type O LastRead -1 FirstWrite 6}
		A_34_out {Type O LastRead -1 FirstWrite 6}
		A_33_out {Type O LastRead -1 FirstWrite 6}
		A_32_out {Type O LastRead -1 FirstWrite 6}
		A_31_out {Type O LastRead -1 FirstWrite 6}
		A_30_out {Type O LastRead -1 FirstWrite 6}
		A_29_out {Type O LastRead -1 FirstWrite 6}
		A_28_out {Type O LastRead -1 FirstWrite 6}
		A_27_out {Type O LastRead -1 FirstWrite 6}
		A_26_out {Type O LastRead -1 FirstWrite 6}
		A_25_out {Type O LastRead -1 FirstWrite 6}
		A_24_out {Type O LastRead -1 FirstWrite 6}
		A_23_out {Type O LastRead -1 FirstWrite 6}
		A_22_out {Type O LastRead -1 FirstWrite 6}
		A_21_out {Type O LastRead -1 FirstWrite 6}
		A_20_out {Type O LastRead -1 FirstWrite 6}
		A_19_out {Type O LastRead -1 FirstWrite 6}
		A_18_out {Type O LastRead -1 FirstWrite 6}
		A_17_out {Type O LastRead -1 FirstWrite 6}
		A_16_out {Type O LastRead -1 FirstWrite 6}
		A_15_out {Type O LastRead -1 FirstWrite 6}
		A_14_out {Type O LastRead -1 FirstWrite 6}
		A_13_out {Type O LastRead -1 FirstWrite 6}
		A_12_out {Type O LastRead -1 FirstWrite 6}
		A_11_out {Type O LastRead -1 FirstWrite 6}
		A_10_out {Type O LastRead -1 FirstWrite 6}
		A_9_out {Type O LastRead -1 FirstWrite 6}
		A_8_out {Type O LastRead -1 FirstWrite 6}
		A_7_out {Type O LastRead -1 FirstWrite 6}
		A_6_out {Type O LastRead -1 FirstWrite 6}
		A_5_out {Type O LastRead -1 FirstWrite 6}
		A_4_out {Type O LastRead -1 FirstWrite 6}
		A_3_out {Type O LastRead -1 FirstWrite 6}
		A_2_out {Type O LastRead -1 FirstWrite 6}
		A_1_out {Type O LastRead -1 FirstWrite 6}
		A_out {Type O LastRead -1 FirstWrite 6}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "14", "Max" : "14"}
	, {"Name" : "Interval", "Min" : "14", "Max" : "14"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	K_reload { ap_none {  { K_reload in_data 0 32 } } }
	K_1_reload { ap_none {  { K_1_reload in_data 0 32 } } }
	K_2_reload { ap_none {  { K_2_reload in_data 0 32 } } }
	K_3_reload { ap_none {  { K_3_reload in_data 0 32 } } }
	K_4_reload { ap_none {  { K_4_reload in_data 0 32 } } }
	K_5_reload { ap_none {  { K_5_reload in_data 0 32 } } }
	H_5_reload { ap_none {  { H_5_reload in_data 0 32 } } }
	H_4_reload { ap_none {  { H_4_reload in_data 0 32 } } }
	H_3_reload { ap_none {  { H_3_reload in_data 0 32 } } }
	H_2_reload { ap_none {  { H_2_reload in_data 0 32 } } }
	H_1_reload { ap_none {  { H_1_reload in_data 0 32 } } }
	H_reload { ap_none {  { H_reload in_data 0 32 } } }
	A_35_out { ap_vld {  { A_35_out out_data 1 32 }  { A_35_out_ap_vld out_vld 1 1 } } }
	A_34_out { ap_vld {  { A_34_out out_data 1 32 }  { A_34_out_ap_vld out_vld 1 1 } } }
	A_33_out { ap_vld {  { A_33_out out_data 1 32 }  { A_33_out_ap_vld out_vld 1 1 } } }
	A_32_out { ap_vld {  { A_32_out out_data 1 32 }  { A_32_out_ap_vld out_vld 1 1 } } }
	A_31_out { ap_vld {  { A_31_out out_data 1 32 }  { A_31_out_ap_vld out_vld 1 1 } } }
	A_30_out { ap_vld {  { A_30_out out_data 1 32 }  { A_30_out_ap_vld out_vld 1 1 } } }
	A_29_out { ap_vld {  { A_29_out out_data 1 32 }  { A_29_out_ap_vld out_vld 1 1 } } }
	A_28_out { ap_vld {  { A_28_out out_data 1 32 }  { A_28_out_ap_vld out_vld 1 1 } } }
	A_27_out { ap_vld {  { A_27_out out_data 1 32 }  { A_27_out_ap_vld out_vld 1 1 } } }
	A_26_out { ap_vld {  { A_26_out out_data 1 32 }  { A_26_out_ap_vld out_vld 1 1 } } }
	A_25_out { ap_vld {  { A_25_out out_data 1 32 }  { A_25_out_ap_vld out_vld 1 1 } } }
	A_24_out { ap_vld {  { A_24_out out_data 1 32 }  { A_24_out_ap_vld out_vld 1 1 } } }
	A_23_out { ap_vld {  { A_23_out out_data 1 32 }  { A_23_out_ap_vld out_vld 1 1 } } }
	A_22_out { ap_vld {  { A_22_out out_data 1 32 }  { A_22_out_ap_vld out_vld 1 1 } } }
	A_21_out { ap_vld {  { A_21_out out_data 1 32 }  { A_21_out_ap_vld out_vld 1 1 } } }
	A_20_out { ap_vld {  { A_20_out out_data 1 32 }  { A_20_out_ap_vld out_vld 1 1 } } }
	A_19_out { ap_vld {  { A_19_out out_data 1 32 }  { A_19_out_ap_vld out_vld 1 1 } } }
	A_18_out { ap_vld {  { A_18_out out_data 1 32 }  { A_18_out_ap_vld out_vld 1 1 } } }
	A_17_out { ap_vld {  { A_17_out out_data 1 32 }  { A_17_out_ap_vld out_vld 1 1 } } }
	A_16_out { ap_vld {  { A_16_out out_data 1 32 }  { A_16_out_ap_vld out_vld 1 1 } } }
	A_15_out { ap_vld {  { A_15_out out_data 1 32 }  { A_15_out_ap_vld out_vld 1 1 } } }
	A_14_out { ap_vld {  { A_14_out out_data 1 32 }  { A_14_out_ap_vld out_vld 1 1 } } }
	A_13_out { ap_vld {  { A_13_out out_data 1 32 }  { A_13_out_ap_vld out_vld 1 1 } } }
	A_12_out { ap_vld {  { A_12_out out_data 1 32 }  { A_12_out_ap_vld out_vld 1 1 } } }
	A_11_out { ap_vld {  { A_11_out out_data 1 32 }  { A_11_out_ap_vld out_vld 1 1 } } }
	A_10_out { ap_vld {  { A_10_out out_data 1 32 }  { A_10_out_ap_vld out_vld 1 1 } } }
	A_9_out { ap_vld {  { A_9_out out_data 1 32 }  { A_9_out_ap_vld out_vld 1 1 } } }
	A_8_out { ap_vld {  { A_8_out out_data 1 32 }  { A_8_out_ap_vld out_vld 1 1 } } }
	A_7_out { ap_vld {  { A_7_out out_data 1 32 }  { A_7_out_ap_vld out_vld 1 1 } } }
	A_6_out { ap_vld {  { A_6_out out_data 1 32 }  { A_6_out_ap_vld out_vld 1 1 } } }
	A_5_out { ap_vld {  { A_5_out out_data 1 32 }  { A_5_out_ap_vld out_vld 1 1 } } }
	A_4_out { ap_vld {  { A_4_out out_data 1 32 }  { A_4_out_ap_vld out_vld 1 1 } } }
	A_3_out { ap_vld {  { A_3_out out_data 1 32 }  { A_3_out_ap_vld out_vld 1 1 } } }
	A_2_out { ap_vld {  { A_2_out out_data 1 32 }  { A_2_out_ap_vld out_vld 1 1 } } }
	A_1_out { ap_vld {  { A_1_out out_data 1 32 }  { A_1_out_ap_vld out_vld 1 1 } } }
	A_out { ap_vld {  { A_out out_data 1 32 }  { A_out_ap_vld out_vld 1 1 } } }
}
