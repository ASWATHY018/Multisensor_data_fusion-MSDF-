set moduleName ekf_batch_Pipeline_VITIS_LOOP_64_3
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
set C_modelName {ekf_batch_Pipeline_VITIS_LOOP_64_3}
set C_modelType { void 0 }
set C_modelArgList {
	{ x_5_reload float 32 regular  }
	{ x_4_reload float 32 regular  }
	{ x_3_reload float 32 regular  }
	{ x_2_reload float 32 regular  }
	{ x_1_reload float 32 regular  }
	{ x_reload float 32 regular  }
	{ xp_reload float 32 regular  }
	{ xp_1_reload float 32 regular  }
	{ xp_2_reload float 32 regular  }
	{ xp_3_reload float 32 regular  }
	{ xp_4_reload float 32 regular  }
	{ xp_5_reload float 32 regular  }
	{ x_18_out float 32 regular {pointer 1}  }
	{ x_17_out float 32 regular {pointer 1}  }
	{ x_16_out float 32 regular {pointer 1}  }
	{ x_15_out float 32 regular {pointer 1}  }
	{ x_14_out float 32 regular {pointer 1}  }
	{ x_13_out float 32 regular {pointer 1}  }
}
set hasAXIMCache 0
set C_modelArgMapList {[ 
	{ "Name" : "x_5_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_4_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_2_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_1_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "xp_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "xp_1_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "xp_2_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "xp_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "xp_4_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "xp_5_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_18_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x_17_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x_16_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x_15_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x_14_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x_13_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 30
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ x_5_reload sc_in sc_lv 32 signal 0 } 
	{ x_4_reload sc_in sc_lv 32 signal 1 } 
	{ x_3_reload sc_in sc_lv 32 signal 2 } 
	{ x_2_reload sc_in sc_lv 32 signal 3 } 
	{ x_1_reload sc_in sc_lv 32 signal 4 } 
	{ x_reload sc_in sc_lv 32 signal 5 } 
	{ xp_reload sc_in sc_lv 32 signal 6 } 
	{ xp_1_reload sc_in sc_lv 32 signal 7 } 
	{ xp_2_reload sc_in sc_lv 32 signal 8 } 
	{ xp_3_reload sc_in sc_lv 32 signal 9 } 
	{ xp_4_reload sc_in sc_lv 32 signal 10 } 
	{ xp_5_reload sc_in sc_lv 32 signal 11 } 
	{ x_18_out sc_out sc_lv 32 signal 12 } 
	{ x_18_out_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ x_17_out sc_out sc_lv 32 signal 13 } 
	{ x_17_out_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ x_16_out sc_out sc_lv 32 signal 14 } 
	{ x_16_out_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ x_15_out sc_out sc_lv 32 signal 15 } 
	{ x_15_out_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ x_14_out sc_out sc_lv 32 signal 16 } 
	{ x_14_out_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ x_13_out sc_out sc_lv 32 signal 17 } 
	{ x_13_out_ap_vld sc_out sc_logic 1 outvld 17 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "x_5_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_5_reload", "role": "default" }} , 
 	{ "name": "x_4_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_4_reload", "role": "default" }} , 
 	{ "name": "x_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_3_reload", "role": "default" }} , 
 	{ "name": "x_2_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_2_reload", "role": "default" }} , 
 	{ "name": "x_1_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_1_reload", "role": "default" }} , 
 	{ "name": "x_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_reload", "role": "default" }} , 
 	{ "name": "xp_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "xp_reload", "role": "default" }} , 
 	{ "name": "xp_1_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "xp_1_reload", "role": "default" }} , 
 	{ "name": "xp_2_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "xp_2_reload", "role": "default" }} , 
 	{ "name": "xp_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "xp_3_reload", "role": "default" }} , 
 	{ "name": "xp_4_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "xp_4_reload", "role": "default" }} , 
 	{ "name": "xp_5_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "xp_5_reload", "role": "default" }} , 
 	{ "name": "x_18_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_18_out", "role": "default" }} , 
 	{ "name": "x_18_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "x_18_out", "role": "ap_vld" }} , 
 	{ "name": "x_17_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_17_out", "role": "default" }} , 
 	{ "name": "x_17_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "x_17_out", "role": "ap_vld" }} , 
 	{ "name": "x_16_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_16_out", "role": "default" }} , 
 	{ "name": "x_16_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "x_16_out", "role": "ap_vld" }} , 
 	{ "name": "x_15_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_15_out", "role": "default" }} , 
 	{ "name": "x_15_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "x_15_out", "role": "ap_vld" }} , 
 	{ "name": "x_14_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_14_out", "role": "default" }} , 
 	{ "name": "x_14_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "x_14_out", "role": "ap_vld" }} , 
 	{ "name": "x_13_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_13_out", "role": "default" }} , 
 	{ "name": "x_13_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "x_13_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "ekf_batch_Pipeline_VITIS_LOOP_64_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8", "EstimateLatencyMax" : "8",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_5_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_4_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "xp_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "xp_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "xp_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "xp_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "xp_4_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "xp_5_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "x_17_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "x_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "x_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "x_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "x_13_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_64_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_6_3_32_1_1_U181", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	ekf_batch_Pipeline_VITIS_LOOP_64_3 {
		x_5_reload {Type I LastRead 0 FirstWrite -1}
		x_4_reload {Type I LastRead 0 FirstWrite -1}
		x_3_reload {Type I LastRead 0 FirstWrite -1}
		x_2_reload {Type I LastRead 0 FirstWrite -1}
		x_1_reload {Type I LastRead 0 FirstWrite -1}
		x_reload {Type I LastRead 0 FirstWrite -1}
		xp_reload {Type I LastRead 0 FirstWrite -1}
		xp_1_reload {Type I LastRead 0 FirstWrite -1}
		xp_2_reload {Type I LastRead 0 FirstWrite -1}
		xp_3_reload {Type I LastRead 0 FirstWrite -1}
		xp_4_reload {Type I LastRead 0 FirstWrite -1}
		xp_5_reload {Type I LastRead 0 FirstWrite -1}
		x_18_out {Type O LastRead -1 FirstWrite 0}
		x_17_out {Type O LastRead -1 FirstWrite 0}
		x_16_out {Type O LastRead -1 FirstWrite 0}
		x_15_out {Type O LastRead -1 FirstWrite 0}
		x_14_out {Type O LastRead -1 FirstWrite 0}
		x_13_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "8", "Max" : "8"}
	, {"Name" : "Interval", "Min" : "8", "Max" : "8"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	x_5_reload { ap_none {  { x_5_reload in_data 0 32 } } }
	x_4_reload { ap_none {  { x_4_reload in_data 0 32 } } }
	x_3_reload { ap_none {  { x_3_reload in_data 0 32 } } }
	x_2_reload { ap_none {  { x_2_reload in_data 0 32 } } }
	x_1_reload { ap_none {  { x_1_reload in_data 0 32 } } }
	x_reload { ap_none {  { x_reload in_data 0 32 } } }
	xp_reload { ap_none {  { xp_reload in_data 0 32 } } }
	xp_1_reload { ap_none {  { xp_1_reload in_data 0 32 } } }
	xp_2_reload { ap_none {  { xp_2_reload in_data 0 32 } } }
	xp_3_reload { ap_none {  { xp_3_reload in_data 0 32 } } }
	xp_4_reload { ap_none {  { xp_4_reload in_data 0 32 } } }
	xp_5_reload { ap_none {  { xp_5_reload in_data 0 32 } } }
	x_18_out { ap_vld {  { x_18_out out_data 1 32 }  { x_18_out_ap_vld out_vld 1 1 } } }
	x_17_out { ap_vld {  { x_17_out out_data 1 32 }  { x_17_out_ap_vld out_vld 1 1 } } }
	x_16_out { ap_vld {  { x_16_out out_data 1 32 }  { x_16_out_ap_vld out_vld 1 1 } } }
	x_15_out { ap_vld {  { x_15_out out_data 1 32 }  { x_15_out_ap_vld out_vld 1 1 } } }
	x_14_out { ap_vld {  { x_14_out out_data 1 32 }  { x_14_out_ap_vld out_vld 1 1 } } }
	x_13_out { ap_vld {  { x_13_out out_data 1 32 }  { x_13_out_ap_vld out_vld 1 1 } } }
}
