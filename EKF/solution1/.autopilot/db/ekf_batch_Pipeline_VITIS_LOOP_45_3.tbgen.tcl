set moduleName ekf_batch_Pipeline_VITIS_LOOP_45_3
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
set C_modelName {ekf_batch_Pipeline_VITIS_LOOP_45_3}
set C_modelType { void 0 }
set C_modelArgList {
	{ Q_11_out float 32 regular {pointer 1}  }
	{ Q_10_out float 32 regular {pointer 1}  }
	{ Q_9_out float 32 regular {pointer 1}  }
	{ Q_8_out float 32 regular {pointer 1}  }
	{ Q_7_out float 32 regular {pointer 1}  }
	{ Q_6_out float 32 regular {pointer 1}  }
	{ Q_5_out float 32 regular {pointer 1}  }
	{ Q_4_out float 32 regular {pointer 1}  }
	{ Q_3_out float 32 regular {pointer 1}  }
	{ Q_2_out float 32 regular {pointer 1}  }
	{ Q_1_out float 32 regular {pointer 1}  }
	{ Q_out float 32 regular {pointer 1}  }
}
set hasAXIMCache 0
set C_modelArgMapList {[ 
	{ "Name" : "Q_11_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Q_10_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Q_9_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Q_8_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Q_7_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Q_6_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Q_5_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Q_4_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Q_3_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Q_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Q_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Q_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 30
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ Q_11_out sc_out sc_lv 32 signal 0 } 
	{ Q_11_out_ap_vld sc_out sc_logic 1 outvld 0 } 
	{ Q_10_out sc_out sc_lv 32 signal 1 } 
	{ Q_10_out_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ Q_9_out sc_out sc_lv 32 signal 2 } 
	{ Q_9_out_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ Q_8_out sc_out sc_lv 32 signal 3 } 
	{ Q_8_out_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ Q_7_out sc_out sc_lv 32 signal 4 } 
	{ Q_7_out_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ Q_6_out sc_out sc_lv 32 signal 5 } 
	{ Q_6_out_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ Q_5_out sc_out sc_lv 32 signal 6 } 
	{ Q_5_out_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ Q_4_out sc_out sc_lv 32 signal 7 } 
	{ Q_4_out_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ Q_3_out sc_out sc_lv 32 signal 8 } 
	{ Q_3_out_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ Q_2_out sc_out sc_lv 32 signal 9 } 
	{ Q_2_out_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ Q_1_out sc_out sc_lv 32 signal 10 } 
	{ Q_1_out_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ Q_out sc_out sc_lv 32 signal 11 } 
	{ Q_out_ap_vld sc_out sc_logic 1 outvld 11 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "Q_11_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Q_11_out", "role": "default" }} , 
 	{ "name": "Q_11_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Q_11_out", "role": "ap_vld" }} , 
 	{ "name": "Q_10_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Q_10_out", "role": "default" }} , 
 	{ "name": "Q_10_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Q_10_out", "role": "ap_vld" }} , 
 	{ "name": "Q_9_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Q_9_out", "role": "default" }} , 
 	{ "name": "Q_9_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Q_9_out", "role": "ap_vld" }} , 
 	{ "name": "Q_8_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Q_8_out", "role": "default" }} , 
 	{ "name": "Q_8_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Q_8_out", "role": "ap_vld" }} , 
 	{ "name": "Q_7_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Q_7_out", "role": "default" }} , 
 	{ "name": "Q_7_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Q_7_out", "role": "ap_vld" }} , 
 	{ "name": "Q_6_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Q_6_out", "role": "default" }} , 
 	{ "name": "Q_6_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Q_6_out", "role": "ap_vld" }} , 
 	{ "name": "Q_5_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Q_5_out", "role": "default" }} , 
 	{ "name": "Q_5_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Q_5_out", "role": "ap_vld" }} , 
 	{ "name": "Q_4_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Q_4_out", "role": "default" }} , 
 	{ "name": "Q_4_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Q_4_out", "role": "ap_vld" }} , 
 	{ "name": "Q_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Q_3_out", "role": "default" }} , 
 	{ "name": "Q_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Q_3_out", "role": "ap_vld" }} , 
 	{ "name": "Q_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Q_2_out", "role": "default" }} , 
 	{ "name": "Q_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Q_2_out", "role": "ap_vld" }} , 
 	{ "name": "Q_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Q_1_out", "role": "default" }} , 
 	{ "name": "Q_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Q_1_out", "role": "ap_vld" }} , 
 	{ "name": "Q_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Q_out", "role": "default" }} , 
 	{ "name": "Q_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Q_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "ekf_batch_Pipeline_VITIS_LOOP_45_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "5",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "Q_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Q_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Q_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Q_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Q_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Q_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Q_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Q_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Q_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Q_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Q_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Q_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_45_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	ekf_batch_Pipeline_VITIS_LOOP_45_3 {
		Q_11_out {Type O LastRead -1 FirstWrite 0}
		Q_10_out {Type O LastRead -1 FirstWrite 0}
		Q_9_out {Type O LastRead -1 FirstWrite 0}
		Q_8_out {Type O LastRead -1 FirstWrite 0}
		Q_7_out {Type O LastRead -1 FirstWrite 0}
		Q_6_out {Type O LastRead -1 FirstWrite 0}
		Q_5_out {Type O LastRead -1 FirstWrite 0}
		Q_4_out {Type O LastRead -1 FirstWrite 0}
		Q_3_out {Type O LastRead -1 FirstWrite 0}
		Q_2_out {Type O LastRead -1 FirstWrite 0}
		Q_1_out {Type O LastRead -1 FirstWrite 0}
		Q_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "5", "Max" : "5"}
	, {"Name" : "Interval", "Min" : "5", "Max" : "5"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	Q_11_out { ap_vld {  { Q_11_out out_data 1 32 }  { Q_11_out_ap_vld out_vld 1 1 } } }
	Q_10_out { ap_vld {  { Q_10_out out_data 1 32 }  { Q_10_out_ap_vld out_vld 1 1 } } }
	Q_9_out { ap_vld {  { Q_9_out out_data 1 32 }  { Q_9_out_ap_vld out_vld 1 1 } } }
	Q_8_out { ap_vld {  { Q_8_out out_data 1 32 }  { Q_8_out_ap_vld out_vld 1 1 } } }
	Q_7_out { ap_vld {  { Q_7_out out_data 1 32 }  { Q_7_out_ap_vld out_vld 1 1 } } }
	Q_6_out { ap_vld {  { Q_6_out out_data 1 32 }  { Q_6_out_ap_vld out_vld 1 1 } } }
	Q_5_out { ap_vld {  { Q_5_out out_data 1 32 }  { Q_5_out_ap_vld out_vld 1 1 } } }
	Q_4_out { ap_vld {  { Q_4_out out_data 1 32 }  { Q_4_out_ap_vld out_vld 1 1 } } }
	Q_3_out { ap_vld {  { Q_3_out out_data 1 32 }  { Q_3_out_ap_vld out_vld 1 1 } } }
	Q_2_out { ap_vld {  { Q_2_out out_data 1 32 }  { Q_2_out_ap_vld out_vld 1 1 } } }
	Q_1_out { ap_vld {  { Q_1_out out_data 1 32 }  { Q_1_out_ap_vld out_vld 1 1 } } }
	Q_out { ap_vld {  { Q_out out_data 1 32 }  { Q_out_ap_vld out_vld 1 1 } } }
}
