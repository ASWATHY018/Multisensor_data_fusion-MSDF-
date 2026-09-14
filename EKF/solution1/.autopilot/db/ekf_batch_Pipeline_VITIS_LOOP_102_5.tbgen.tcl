set moduleName ekf_batch_Pipeline_VITIS_LOOP_102_5
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
set C_modelName {ekf_batch_Pipeline_VITIS_LOOP_102_5}
set C_modelType { void 0 }
set C_modelArgList {
	{ x_26 float 32 regular  }
	{ x_27 float 32 regular  }
	{ x_28 float 32 regular  }
	{ x_29 float 32 regular  }
	{ x_30 float 32 regular  }
	{ x_31 float 32 regular  }
	{ K_reload float 32 regular  }
	{ K_1_reload float 32 regular  }
	{ K_2_reload float 32 regular  }
	{ K_3_reload float 32 regular  }
	{ K_4_reload float 32 regular  }
	{ K_5_reload float 32 regular  }
	{ local_load_3 float 32 regular  }
	{ x_37_out float 32 regular {pointer 1}  }
	{ x_36_out float 32 regular {pointer 1}  }
	{ x_35_out float 32 regular {pointer 1}  }
	{ x_34_out float 32 regular {pointer 1}  }
	{ x_33_out float 32 regular {pointer 1}  }
	{ x_32_out float 32 regular {pointer 1}  }
}
set hasAXIMCache 0
set C_modelArgMapList {[ 
	{ "Name" : "x_26", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_27", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_28", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_29", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_30", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_31", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "K_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "K_1_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "K_2_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "K_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "K_4_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "K_5_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_load_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_37_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x_36_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x_35_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x_34_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x_33_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x_32_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 40
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ x_26 sc_in sc_lv 32 signal 0 } 
	{ x_27 sc_in sc_lv 32 signal 1 } 
	{ x_28 sc_in sc_lv 32 signal 2 } 
	{ x_29 sc_in sc_lv 32 signal 3 } 
	{ x_30 sc_in sc_lv 32 signal 4 } 
	{ x_31 sc_in sc_lv 32 signal 5 } 
	{ K_reload sc_in sc_lv 32 signal 6 } 
	{ K_1_reload sc_in sc_lv 32 signal 7 } 
	{ K_2_reload sc_in sc_lv 32 signal 8 } 
	{ K_3_reload sc_in sc_lv 32 signal 9 } 
	{ K_4_reload sc_in sc_lv 32 signal 10 } 
	{ K_5_reload sc_in sc_lv 32 signal 11 } 
	{ local_load_3 sc_in sc_lv 32 signal 12 } 
	{ x_37_out sc_out sc_lv 32 signal 13 } 
	{ x_37_out_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ x_36_out sc_out sc_lv 32 signal 14 } 
	{ x_36_out_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ x_35_out sc_out sc_lv 32 signal 15 } 
	{ x_35_out_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ x_34_out sc_out sc_lv 32 signal 16 } 
	{ x_34_out_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ x_33_out sc_out sc_lv 32 signal 17 } 
	{ x_33_out_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ x_32_out sc_out sc_lv 32 signal 18 } 
	{ x_32_out_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ grp_fu_12431_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_12431_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_12431_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_12431_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_12431_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_12435_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_12435_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_12435_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_12435_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "x_26", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_26", "role": "default" }} , 
 	{ "name": "x_27", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_27", "role": "default" }} , 
 	{ "name": "x_28", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_28", "role": "default" }} , 
 	{ "name": "x_29", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_29", "role": "default" }} , 
 	{ "name": "x_30", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_30", "role": "default" }} , 
 	{ "name": "x_31", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_31", "role": "default" }} , 
 	{ "name": "K_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "K_reload", "role": "default" }} , 
 	{ "name": "K_1_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "K_1_reload", "role": "default" }} , 
 	{ "name": "K_2_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "K_2_reload", "role": "default" }} , 
 	{ "name": "K_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "K_3_reload", "role": "default" }} , 
 	{ "name": "K_4_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "K_4_reload", "role": "default" }} , 
 	{ "name": "K_5_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "K_5_reload", "role": "default" }} , 
 	{ "name": "local_load_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_load_3", "role": "default" }} , 
 	{ "name": "x_37_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_37_out", "role": "default" }} , 
 	{ "name": "x_37_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "x_37_out", "role": "ap_vld" }} , 
 	{ "name": "x_36_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_36_out", "role": "default" }} , 
 	{ "name": "x_36_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "x_36_out", "role": "ap_vld" }} , 
 	{ "name": "x_35_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_35_out", "role": "default" }} , 
 	{ "name": "x_35_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "x_35_out", "role": "ap_vld" }} , 
 	{ "name": "x_34_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_34_out", "role": "default" }} , 
 	{ "name": "x_34_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "x_34_out", "role": "ap_vld" }} , 
 	{ "name": "x_33_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_33_out", "role": "default" }} , 
 	{ "name": "x_33_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "x_33_out", "role": "ap_vld" }} , 
 	{ "name": "x_32_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_32_out", "role": "default" }} , 
 	{ "name": "x_32_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "x_32_out", "role": "ap_vld" }} , 
 	{ "name": "grp_fu_12431_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_12431_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_12431_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_12431_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_12431_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_12431_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_12431_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_12431_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_12431_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_12431_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_12435_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_12435_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_12435_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_12435_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_12435_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_12435_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_12435_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_12435_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "ekf_batch_Pipeline_VITIS_LOOP_102_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "29", "EstimateLatencyMax" : "29",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_27", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_28", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_29", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_30", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_31", "Type" : "None", "Direction" : "I"},
			{"Name" : "K_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "K_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "K_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "K_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "K_4_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "K_5_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_load_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_37_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "x_36_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "x_35_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "x_34_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "x_33_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "x_32_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_102_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage3", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage3_subdone", "QuitState" : "ap_ST_fsm_pp0_stage3", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage3_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_6_3_32_1_1_U798", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_6_3_32_1_1_U799", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	ekf_batch_Pipeline_VITIS_LOOP_102_5 {
		x_26 {Type I LastRead 0 FirstWrite -1}
		x_27 {Type I LastRead 0 FirstWrite -1}
		x_28 {Type I LastRead 0 FirstWrite -1}
		x_29 {Type I LastRead 0 FirstWrite -1}
		x_30 {Type I LastRead 0 FirstWrite -1}
		x_31 {Type I LastRead 0 FirstWrite -1}
		K_reload {Type I LastRead 0 FirstWrite -1}
		K_1_reload {Type I LastRead 0 FirstWrite -1}
		K_2_reload {Type I LastRead 0 FirstWrite -1}
		K_3_reload {Type I LastRead 0 FirstWrite -1}
		K_4_reload {Type I LastRead 0 FirstWrite -1}
		K_5_reload {Type I LastRead 0 FirstWrite -1}
		local_load_3 {Type I LastRead 0 FirstWrite -1}
		x_37_out {Type O LastRead -1 FirstWrite 3}
		x_36_out {Type O LastRead -1 FirstWrite 3}
		x_35_out {Type O LastRead -1 FirstWrite 3}
		x_34_out {Type O LastRead -1 FirstWrite 3}
		x_33_out {Type O LastRead -1 FirstWrite 3}
		x_32_out {Type O LastRead -1 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "29", "Max" : "29"}
	, {"Name" : "Interval", "Min" : "29", "Max" : "29"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	x_26 { ap_none {  { x_26 in_data 0 32 } } }
	x_27 { ap_none {  { x_27 in_data 0 32 } } }
	x_28 { ap_none {  { x_28 in_data 0 32 } } }
	x_29 { ap_none {  { x_29 in_data 0 32 } } }
	x_30 { ap_none {  { x_30 in_data 0 32 } } }
	x_31 { ap_none {  { x_31 in_data 0 32 } } }
	K_reload { ap_none {  { K_reload in_data 0 32 } } }
	K_1_reload { ap_none {  { K_1_reload in_data 0 32 } } }
	K_2_reload { ap_none {  { K_2_reload in_data 0 32 } } }
	K_3_reload { ap_none {  { K_3_reload in_data 0 32 } } }
	K_4_reload { ap_none {  { K_4_reload in_data 0 32 } } }
	K_5_reload { ap_none {  { K_5_reload in_data 0 32 } } }
	local_load_3 { ap_none {  { local_load_3 in_data 0 32 } } }
	x_37_out { ap_vld {  { x_37_out out_data 1 32 }  { x_37_out_ap_vld out_vld 1 1 } } }
	x_36_out { ap_vld {  { x_36_out out_data 1 32 }  { x_36_out_ap_vld out_vld 1 1 } } }
	x_35_out { ap_vld {  { x_35_out out_data 1 32 }  { x_35_out_ap_vld out_vld 1 1 } } }
	x_34_out { ap_vld {  { x_34_out out_data 1 32 }  { x_34_out_ap_vld out_vld 1 1 } } }
	x_33_out { ap_vld {  { x_33_out out_data 1 32 }  { x_33_out_ap_vld out_vld 1 1 } } }
	x_32_out { ap_vld {  { x_32_out out_data 1 32 }  { x_32_out_ap_vld out_vld 1 1 } } }
}
