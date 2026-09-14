set moduleName ekf_batch_Pipeline_VITIS_LOOP_157_4
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
set C_modelName {ekf_batch_Pipeline_VITIS_LOOP_157_4}
set C_modelType { void 0 }
set C_modelArgList {
	{ local_load_1 float 32 regular  }
	{ local_1_load_1 float 32 regular  }
	{ local_2_load_3 float 32 regular  }
	{ local_3_load_3 float 32 regular  }
	{ local_4_load_3 float 32 regular  }
	{ local_5_load_3 float 32 regular  }
	{ x_5_out float 32 regular {pointer 1}  }
	{ x_4_out float 32 regular {pointer 1}  }
	{ x_3_out float 32 regular {pointer 1}  }
	{ x_2_out float 32 regular {pointer 1}  }
	{ x_1_out float 32 regular {pointer 1}  }
	{ x_out float 32 regular {pointer 1}  }
}
set hasAXIMCache 0
set C_modelArgMapList {[ 
	{ "Name" : "local_load_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_1_load_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_2_load_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_3_load_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_4_load_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local_5_load_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_5_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x_4_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x_3_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 24
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ local_load_1 sc_in sc_lv 32 signal 0 } 
	{ local_1_load_1 sc_in sc_lv 32 signal 1 } 
	{ local_2_load_3 sc_in sc_lv 32 signal 2 } 
	{ local_3_load_3 sc_in sc_lv 32 signal 3 } 
	{ local_4_load_3 sc_in sc_lv 32 signal 4 } 
	{ local_5_load_3 sc_in sc_lv 32 signal 5 } 
	{ x_5_out sc_out sc_lv 32 signal 6 } 
	{ x_5_out_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ x_4_out sc_out sc_lv 32 signal 7 } 
	{ x_4_out_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ x_3_out sc_out sc_lv 32 signal 8 } 
	{ x_3_out_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ x_2_out sc_out sc_lv 32 signal 9 } 
	{ x_2_out_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ x_1_out sc_out sc_lv 32 signal 10 } 
	{ x_1_out_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ x_out sc_out sc_lv 32 signal 11 } 
	{ x_out_ap_vld sc_out sc_logic 1 outvld 11 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "local_load_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_load_1", "role": "default" }} , 
 	{ "name": "local_1_load_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_1_load_1", "role": "default" }} , 
 	{ "name": "local_2_load_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_2_load_3", "role": "default" }} , 
 	{ "name": "local_3_load_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_3_load_3", "role": "default" }} , 
 	{ "name": "local_4_load_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_4_load_3", "role": "default" }} , 
 	{ "name": "local_5_load_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_5_load_3", "role": "default" }} , 
 	{ "name": "x_5_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_5_out", "role": "default" }} , 
 	{ "name": "x_5_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "x_5_out", "role": "ap_vld" }} , 
 	{ "name": "x_4_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_4_out", "role": "default" }} , 
 	{ "name": "x_4_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "x_4_out", "role": "ap_vld" }} , 
 	{ "name": "x_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_3_out", "role": "default" }} , 
 	{ "name": "x_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "x_3_out", "role": "ap_vld" }} , 
 	{ "name": "x_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_2_out", "role": "default" }} , 
 	{ "name": "x_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "x_2_out", "role": "ap_vld" }} , 
 	{ "name": "x_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_1_out", "role": "default" }} , 
 	{ "name": "x_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "x_1_out", "role": "ap_vld" }} , 
 	{ "name": "x_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_out", "role": "default" }} , 
 	{ "name": "x_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "x_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "ekf_batch_Pipeline_VITIS_LOOP_157_4",
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
			{"Name" : "local_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_1_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_2_load_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_3_load_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_4_load_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_5_load_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "x_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "x_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "x_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "x_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "x_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_157_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_6_3_32_1_1_U11", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	ekf_batch_Pipeline_VITIS_LOOP_157_4 {
		local_load_1 {Type I LastRead 0 FirstWrite -1}
		local_1_load_1 {Type I LastRead 0 FirstWrite -1}
		local_2_load_3 {Type I LastRead 0 FirstWrite -1}
		local_3_load_3 {Type I LastRead 0 FirstWrite -1}
		local_4_load_3 {Type I LastRead 0 FirstWrite -1}
		local_5_load_3 {Type I LastRead 0 FirstWrite -1}
		x_5_out {Type O LastRead -1 FirstWrite 0}
		x_4_out {Type O LastRead -1 FirstWrite 0}
		x_3_out {Type O LastRead -1 FirstWrite 0}
		x_2_out {Type O LastRead -1 FirstWrite 0}
		x_1_out {Type O LastRead -1 FirstWrite 0}
		x_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "8", "Max" : "8"}
	, {"Name" : "Interval", "Min" : "8", "Max" : "8"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	local_load_1 { ap_none {  { local_load_1 in_data 0 32 } } }
	local_1_load_1 { ap_none {  { local_1_load_1 in_data 0 32 } } }
	local_2_load_3 { ap_none {  { local_2_load_3 in_data 0 32 } } }
	local_3_load_3 { ap_none {  { local_3_load_3 in_data 0 32 } } }
	local_4_load_3 { ap_none {  { local_4_load_3 in_data 0 32 } } }
	local_5_load_3 { ap_none {  { local_5_load_3 in_data 0 32 } } }
	x_5_out { ap_vld {  { x_5_out out_data 1 32 }  { x_5_out_ap_vld out_vld 1 1 } } }
	x_4_out { ap_vld {  { x_4_out out_data 1 32 }  { x_4_out_ap_vld out_vld 1 1 } } }
	x_3_out { ap_vld {  { x_3_out out_data 1 32 }  { x_3_out_ap_vld out_vld 1 1 } } }
	x_2_out { ap_vld {  { x_2_out out_data 1 32 }  { x_2_out_ap_vld out_vld 1 1 } } }
	x_1_out { ap_vld {  { x_1_out out_data 1 32 }  { x_1_out_ap_vld out_vld 1 1 } } }
	x_out { ap_vld {  { x_out out_data 1 32 }  { x_out_ap_vld out_vld 1 1 } } }
}
