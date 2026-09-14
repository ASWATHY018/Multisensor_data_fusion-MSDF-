set moduleName ekf_batch_Pipeline_VITIS_LOOP_101_4
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
set C_modelName {ekf_batch_Pipeline_VITIS_LOOP_101_4}
set C_modelType { void 0 }
set C_modelArgList {
	{ Ph_reload float 32 regular  }
	{ Ph_1_reload float 32 regular  }
	{ Ph_2_reload float 32 regular  }
	{ Ph_3_reload float 32 regular  }
	{ Ph_4_reload float 32 regular  }
	{ Ph_5_reload float 32 regular  }
	{ inv_s float 32 regular  }
	{ K_5_out float 32 regular {pointer 1}  }
	{ K_4_out float 32 regular {pointer 1}  }
	{ K_3_out float 32 regular {pointer 1}  }
	{ K_2_out float 32 regular {pointer 1}  }
	{ K_1_out float 32 regular {pointer 1}  }
	{ K_out float 32 regular {pointer 1}  }
}
set hasAXIMCache 0
set C_modelArgMapList {[ 
	{ "Name" : "Ph_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "Ph_1_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "Ph_2_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "Ph_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "Ph_4_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "Ph_5_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "inv_s", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "K_5_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "K_4_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "K_3_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "K_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "K_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "K_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 29
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ Ph_reload sc_in sc_lv 32 signal 0 } 
	{ Ph_1_reload sc_in sc_lv 32 signal 1 } 
	{ Ph_2_reload sc_in sc_lv 32 signal 2 } 
	{ Ph_3_reload sc_in sc_lv 32 signal 3 } 
	{ Ph_4_reload sc_in sc_lv 32 signal 4 } 
	{ Ph_5_reload sc_in sc_lv 32 signal 5 } 
	{ inv_s sc_in sc_lv 32 signal 6 } 
	{ K_5_out sc_out sc_lv 32 signal 7 } 
	{ K_5_out_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ K_4_out sc_out sc_lv 32 signal 8 } 
	{ K_4_out_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ K_3_out sc_out sc_lv 32 signal 9 } 
	{ K_3_out_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ K_2_out sc_out sc_lv 32 signal 10 } 
	{ K_2_out_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ K_1_out sc_out sc_lv 32 signal 11 } 
	{ K_1_out_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ K_out sc_out sc_lv 32 signal 12 } 
	{ K_out_ap_vld sc_out sc_logic 1 outvld 12 } 
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
 	{ "name": "Ph_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Ph_reload", "role": "default" }} , 
 	{ "name": "Ph_1_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Ph_1_reload", "role": "default" }} , 
 	{ "name": "Ph_2_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Ph_2_reload", "role": "default" }} , 
 	{ "name": "Ph_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Ph_3_reload", "role": "default" }} , 
 	{ "name": "Ph_4_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Ph_4_reload", "role": "default" }} , 
 	{ "name": "Ph_5_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Ph_5_reload", "role": "default" }} , 
 	{ "name": "inv_s", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "inv_s", "role": "default" }} , 
 	{ "name": "K_5_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "K_5_out", "role": "default" }} , 
 	{ "name": "K_5_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "K_5_out", "role": "ap_vld" }} , 
 	{ "name": "K_4_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "K_4_out", "role": "default" }} , 
 	{ "name": "K_4_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "K_4_out", "role": "ap_vld" }} , 
 	{ "name": "K_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "K_3_out", "role": "default" }} , 
 	{ "name": "K_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "K_3_out", "role": "ap_vld" }} , 
 	{ "name": "K_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "K_2_out", "role": "default" }} , 
 	{ "name": "K_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "K_2_out", "role": "ap_vld" }} , 
 	{ "name": "K_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "K_1_out", "role": "default" }} , 
 	{ "name": "K_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "K_1_out", "role": "ap_vld" }} , 
 	{ "name": "K_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "K_out", "role": "default" }} , 
 	{ "name": "K_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "K_out", "role": "ap_vld" }} , 
 	{ "name": "grp_fu_12435_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_12435_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_12435_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_12435_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_12435_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_12435_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_12435_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_12435_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "ekf_batch_Pipeline_VITIS_LOOP_101_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "Ph_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ph_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ph_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ph_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ph_4_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ph_5_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "inv_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "K_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "K_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "K_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "K_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "K_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "K_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_101_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_6_3_32_1_1_U782", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	ekf_batch_Pipeline_VITIS_LOOP_101_4 {
		Ph_reload {Type I LastRead 0 FirstWrite -1}
		Ph_1_reload {Type I LastRead 0 FirstWrite -1}
		Ph_2_reload {Type I LastRead 0 FirstWrite -1}
		Ph_3_reload {Type I LastRead 0 FirstWrite -1}
		Ph_4_reload {Type I LastRead 0 FirstWrite -1}
		Ph_5_reload {Type I LastRead 0 FirstWrite -1}
		inv_s {Type I LastRead 0 FirstWrite -1}
		K_5_out {Type O LastRead -1 FirstWrite 2}
		K_4_out {Type O LastRead -1 FirstWrite 2}
		K_3_out {Type O LastRead -1 FirstWrite 2}
		K_2_out {Type O LastRead -1 FirstWrite 2}
		K_1_out {Type O LastRead -1 FirstWrite 2}
		K_out {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "10", "Max" : "10"}
	, {"Name" : "Interval", "Min" : "10", "Max" : "10"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	Ph_reload { ap_none {  { Ph_reload in_data 0 32 } } }
	Ph_1_reload { ap_none {  { Ph_1_reload in_data 0 32 } } }
	Ph_2_reload { ap_none {  { Ph_2_reload in_data 0 32 } } }
	Ph_3_reload { ap_none {  { Ph_3_reload in_data 0 32 } } }
	Ph_4_reload { ap_none {  { Ph_4_reload in_data 0 32 } } }
	Ph_5_reload { ap_none {  { Ph_5_reload in_data 0 32 } } }
	inv_s { ap_none {  { inv_s in_data 0 32 } } }
	K_5_out { ap_vld {  { K_5_out out_data 1 32 }  { K_5_out_ap_vld out_vld 1 1 } } }
	K_4_out { ap_vld {  { K_4_out out_data 1 32 }  { K_4_out_ap_vld out_vld 1 1 } } }
	K_3_out { ap_vld {  { K_3_out out_data 1 32 }  { K_3_out_ap_vld out_vld 1 1 } } }
	K_2_out { ap_vld {  { K_2_out out_data 1 32 }  { K_2_out_ap_vld out_vld 1 1 } } }
	K_1_out { ap_vld {  { K_1_out out_data 1 32 }  { K_1_out_ap_vld out_vld 1 1 } } }
	K_out { ap_vld {  { K_out out_data 1 32 }  { K_out_ap_vld out_vld 1 1 } } }
}
