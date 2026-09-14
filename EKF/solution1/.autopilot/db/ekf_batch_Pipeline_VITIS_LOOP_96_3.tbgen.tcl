set moduleName ekf_batch_Pipeline_VITIS_LOOP_96_3
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
set C_modelName {ekf_batch_Pipeline_VITIS_LOOP_96_3}
set C_modelType { void 0 }
set C_modelArgList {
	{ s_2 float 32 regular  }
	{ H_5_reload float 32 regular  }
	{ H_4_reload float 32 regular  }
	{ H_3_reload float 32 regular  }
	{ H_2_reload float 32 regular  }
	{ H_1_reload float 32 regular  }
	{ H_reload float 32 regular  }
	{ Ph_reload float 32 regular  }
	{ Ph_1_reload float 32 regular  }
	{ Ph_2_reload float 32 regular  }
	{ Ph_3_reload float 32 regular  }
	{ Ph_4_reload float 32 regular  }
	{ Ph_5_reload float 32 regular  }
	{ s_out float 32 regular {pointer 1}  }
}
set hasAXIMCache 0
set C_modelArgMapList {[ 
	{ "Name" : "s_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "H_5_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "H_4_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "H_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "H_2_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "H_1_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "H_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "Ph_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "Ph_1_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "Ph_2_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "Ph_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "Ph_4_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "Ph_5_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "s_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 30
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ s_2 sc_in sc_lv 32 signal 0 } 
	{ H_5_reload sc_in sc_lv 32 signal 1 } 
	{ H_4_reload sc_in sc_lv 32 signal 2 } 
	{ H_3_reload sc_in sc_lv 32 signal 3 } 
	{ H_2_reload sc_in sc_lv 32 signal 4 } 
	{ H_1_reload sc_in sc_lv 32 signal 5 } 
	{ H_reload sc_in sc_lv 32 signal 6 } 
	{ Ph_reload sc_in sc_lv 32 signal 7 } 
	{ Ph_1_reload sc_in sc_lv 32 signal 8 } 
	{ Ph_2_reload sc_in sc_lv 32 signal 9 } 
	{ Ph_3_reload sc_in sc_lv 32 signal 10 } 
	{ Ph_4_reload sc_in sc_lv 32 signal 11 } 
	{ Ph_5_reload sc_in sc_lv 32 signal 12 } 
	{ s_out sc_out sc_lv 32 signal 13 } 
	{ s_out_ap_vld sc_out sc_logic 1 outvld 13 } 
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
 	{ "name": "s_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s_2", "role": "default" }} , 
 	{ "name": "H_5_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "H_5_reload", "role": "default" }} , 
 	{ "name": "H_4_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "H_4_reload", "role": "default" }} , 
 	{ "name": "H_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "H_3_reload", "role": "default" }} , 
 	{ "name": "H_2_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "H_2_reload", "role": "default" }} , 
 	{ "name": "H_1_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "H_1_reload", "role": "default" }} , 
 	{ "name": "H_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "H_reload", "role": "default" }} , 
 	{ "name": "Ph_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Ph_reload", "role": "default" }} , 
 	{ "name": "Ph_1_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Ph_1_reload", "role": "default" }} , 
 	{ "name": "Ph_2_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Ph_2_reload", "role": "default" }} , 
 	{ "name": "Ph_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Ph_3_reload", "role": "default" }} , 
 	{ "name": "Ph_4_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Ph_4_reload", "role": "default" }} , 
 	{ "name": "Ph_5_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Ph_5_reload", "role": "default" }} , 
 	{ "name": "s_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s_out", "role": "default" }} , 
 	{ "name": "s_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "s_out", "role": "ap_vld" }} , 
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
		"CDFG" : "ekf_batch_Pipeline_VITIS_LOOP_96_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "24", "EstimateLatencyMax" : "24",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "s_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "H_5_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "H_4_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "H_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "H_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "H_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "H_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ph_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ph_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ph_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ph_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ph_4_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ph_5_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "s_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_96_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_6_3_32_1_1_U765", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_6_3_32_1_1_U766", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	ekf_batch_Pipeline_VITIS_LOOP_96_3 {
		s_2 {Type I LastRead 0 FirstWrite -1}
		H_5_reload {Type I LastRead 0 FirstWrite -1}
		H_4_reload {Type I LastRead 0 FirstWrite -1}
		H_3_reload {Type I LastRead 0 FirstWrite -1}
		H_2_reload {Type I LastRead 0 FirstWrite -1}
		H_1_reload {Type I LastRead 0 FirstWrite -1}
		H_reload {Type I LastRead 0 FirstWrite -1}
		Ph_reload {Type I LastRead 0 FirstWrite -1}
		Ph_1_reload {Type I LastRead 0 FirstWrite -1}
		Ph_2_reload {Type I LastRead 0 FirstWrite -1}
		Ph_3_reload {Type I LastRead 0 FirstWrite -1}
		Ph_4_reload {Type I LastRead 0 FirstWrite -1}
		Ph_5_reload {Type I LastRead 0 FirstWrite -1}
		s_out {Type O LastRead -1 FirstWrite 4}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "24", "Max" : "24"}
	, {"Name" : "Interval", "Min" : "24", "Max" : "24"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	s_2 { ap_none {  { s_2 in_data 0 32 } } }
	H_5_reload { ap_none {  { H_5_reload in_data 0 32 } } }
	H_4_reload { ap_none {  { H_4_reload in_data 0 32 } } }
	H_3_reload { ap_none {  { H_3_reload in_data 0 32 } } }
	H_2_reload { ap_none {  { H_2_reload in_data 0 32 } } }
	H_1_reload { ap_none {  { H_1_reload in_data 0 32 } } }
	H_reload { ap_none {  { H_reload in_data 0 32 } } }
	Ph_reload { ap_none {  { Ph_reload in_data 0 32 } } }
	Ph_1_reload { ap_none {  { Ph_1_reload in_data 0 32 } } }
	Ph_2_reload { ap_none {  { Ph_2_reload in_data 0 32 } } }
	Ph_3_reload { ap_none {  { Ph_3_reload in_data 0 32 } } }
	Ph_4_reload { ap_none {  { Ph_4_reload in_data 0 32 } } }
	Ph_5_reload { ap_none {  { Ph_5_reload in_data 0 32 } } }
	s_out { ap_vld {  { s_out out_data 1 32 }  { s_out_ap_vld out_vld 1 1 } } }
}
