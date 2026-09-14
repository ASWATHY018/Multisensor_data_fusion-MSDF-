set moduleName ekf_batch_Pipeline_VITIS_LOOP_174_10_VITIS_LOOP_175_11
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
set C_modelName {ekf_batch_Pipeline_VITIS_LOOP_174_10_VITIS_LOOP_175_11}
set C_modelType { void 0 }
set C_modelArgList {
	{ P_198 float 32 regular  }
	{ P_197 float 32 regular  }
	{ P_196 float 32 regular  }
	{ P_195 float 32 regular  }
	{ P_194 float 32 regular  }
	{ P_193 float 32 regular  }
	{ P_192 float 32 regular  }
	{ P_191 float 32 regular  }
	{ P_190 float 32 regular  }
	{ P_189 float 32 regular  }
	{ P_188 float 32 regular  }
	{ P_187 float 32 regular  }
	{ P_186 float 32 regular  }
	{ P_185 float 32 regular  }
	{ P_184 float 32 regular  }
	{ P_183 float 32 regular  }
	{ P_182 float 32 regular  }
	{ P_181 float 32 regular  }
	{ P_199 float 32 regular  }
	{ P_200 float 32 regular  }
	{ P_201 float 32 regular  }
	{ P_202 float 32 regular  }
	{ P_203 float 32 regular  }
	{ P_204 float 32 regular  }
	{ P_205 float 32 regular  }
	{ P_206 float 32 regular  }
	{ P_207 float 32 regular  }
	{ P_208 float 32 regular  }
	{ P_209 float 32 regular  }
	{ P_210 float 32 regular  }
	{ P_211 float 32 regular  }
	{ P_212 float 32 regular  }
	{ P_213 float 32 regular  }
	{ P_214 float 32 regular  }
	{ P_215 float 32 regular  }
	{ P_216 float 32 regular  }
	{ local float 32 regular {array 13 { 0 3 } 0 1 }  }
	{ local_1 float 32 regular {array 13 { 0 3 } 0 1 }  }
	{ local_2 float 32 regular {array 13 { 0 3 } 0 1 }  }
	{ local_3 float 32 regular {array 13 { 0 3 } 0 1 }  }
	{ local_4 float 32 regular {array 13 { 0 3 } 0 1 }  }
	{ local_5 float 32 regular {array 13 { 0 3 } 0 1 }  }
	{ local_6 float 32 regular {array 13 { 0 3 } 0 1 }  }
	{ local_7 float 32 regular {array 13 { 0 3 } 0 1 }  }
}
set hasAXIMCache 0
set C_modelArgMapList {[ 
	{ "Name" : "P_198", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "P_197", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "P_196", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "P_195", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "P_194", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "P_193", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "P_192", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "P_191", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "P_190", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "P_189", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "P_188", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "P_187", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "P_186", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "P_185", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "P_184", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "P_183", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "P_182", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "P_181", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "P_199", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "P_200", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "P_201", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "P_202", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "P_203", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "P_204", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "P_205", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "P_206", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "P_207", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "P_208", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "P_209", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "P_210", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "P_211", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "P_212", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "P_213", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "P_214", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "P_215", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "P_216", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "local", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_3", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_4", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_5", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_6", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_7", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 74
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ P_198 sc_in sc_lv 32 signal 0 } 
	{ P_197 sc_in sc_lv 32 signal 1 } 
	{ P_196 sc_in sc_lv 32 signal 2 } 
	{ P_195 sc_in sc_lv 32 signal 3 } 
	{ P_194 sc_in sc_lv 32 signal 4 } 
	{ P_193 sc_in sc_lv 32 signal 5 } 
	{ P_192 sc_in sc_lv 32 signal 6 } 
	{ P_191 sc_in sc_lv 32 signal 7 } 
	{ P_190 sc_in sc_lv 32 signal 8 } 
	{ P_189 sc_in sc_lv 32 signal 9 } 
	{ P_188 sc_in sc_lv 32 signal 10 } 
	{ P_187 sc_in sc_lv 32 signal 11 } 
	{ P_186 sc_in sc_lv 32 signal 12 } 
	{ P_185 sc_in sc_lv 32 signal 13 } 
	{ P_184 sc_in sc_lv 32 signal 14 } 
	{ P_183 sc_in sc_lv 32 signal 15 } 
	{ P_182 sc_in sc_lv 32 signal 16 } 
	{ P_181 sc_in sc_lv 32 signal 17 } 
	{ P_199 sc_in sc_lv 32 signal 18 } 
	{ P_200 sc_in sc_lv 32 signal 19 } 
	{ P_201 sc_in sc_lv 32 signal 20 } 
	{ P_202 sc_in sc_lv 32 signal 21 } 
	{ P_203 sc_in sc_lv 32 signal 22 } 
	{ P_204 sc_in sc_lv 32 signal 23 } 
	{ P_205 sc_in sc_lv 32 signal 24 } 
	{ P_206 sc_in sc_lv 32 signal 25 } 
	{ P_207 sc_in sc_lv 32 signal 26 } 
	{ P_208 sc_in sc_lv 32 signal 27 } 
	{ P_209 sc_in sc_lv 32 signal 28 } 
	{ P_210 sc_in sc_lv 32 signal 29 } 
	{ P_211 sc_in sc_lv 32 signal 30 } 
	{ P_212 sc_in sc_lv 32 signal 31 } 
	{ P_213 sc_in sc_lv 32 signal 32 } 
	{ P_214 sc_in sc_lv 32 signal 33 } 
	{ P_215 sc_in sc_lv 32 signal 34 } 
	{ P_216 sc_in sc_lv 32 signal 35 } 
	{ local_address0 sc_out sc_lv 4 signal 36 } 
	{ local_ce0 sc_out sc_logic 1 signal 36 } 
	{ local_we0 sc_out sc_logic 1 signal 36 } 
	{ local_d0 sc_out sc_lv 32 signal 36 } 
	{ local_1_address0 sc_out sc_lv 4 signal 37 } 
	{ local_1_ce0 sc_out sc_logic 1 signal 37 } 
	{ local_1_we0 sc_out sc_logic 1 signal 37 } 
	{ local_1_d0 sc_out sc_lv 32 signal 37 } 
	{ local_2_address0 sc_out sc_lv 4 signal 38 } 
	{ local_2_ce0 sc_out sc_logic 1 signal 38 } 
	{ local_2_we0 sc_out sc_logic 1 signal 38 } 
	{ local_2_d0 sc_out sc_lv 32 signal 38 } 
	{ local_3_address0 sc_out sc_lv 4 signal 39 } 
	{ local_3_ce0 sc_out sc_logic 1 signal 39 } 
	{ local_3_we0 sc_out sc_logic 1 signal 39 } 
	{ local_3_d0 sc_out sc_lv 32 signal 39 } 
	{ local_4_address0 sc_out sc_lv 4 signal 40 } 
	{ local_4_ce0 sc_out sc_logic 1 signal 40 } 
	{ local_4_we0 sc_out sc_logic 1 signal 40 } 
	{ local_4_d0 sc_out sc_lv 32 signal 40 } 
	{ local_5_address0 sc_out sc_lv 4 signal 41 } 
	{ local_5_ce0 sc_out sc_logic 1 signal 41 } 
	{ local_5_we0 sc_out sc_logic 1 signal 41 } 
	{ local_5_d0 sc_out sc_lv 32 signal 41 } 
	{ local_6_address0 sc_out sc_lv 4 signal 42 } 
	{ local_6_ce0 sc_out sc_logic 1 signal 42 } 
	{ local_6_we0 sc_out sc_logic 1 signal 42 } 
	{ local_6_d0 sc_out sc_lv 32 signal 42 } 
	{ local_7_address0 sc_out sc_lv 4 signal 43 } 
	{ local_7_ce0 sc_out sc_logic 1 signal 43 } 
	{ local_7_we0 sc_out sc_logic 1 signal 43 } 
	{ local_7_d0 sc_out sc_lv 32 signal 43 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "P_198", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_198", "role": "default" }} , 
 	{ "name": "P_197", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_197", "role": "default" }} , 
 	{ "name": "P_196", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_196", "role": "default" }} , 
 	{ "name": "P_195", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_195", "role": "default" }} , 
 	{ "name": "P_194", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_194", "role": "default" }} , 
 	{ "name": "P_193", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_193", "role": "default" }} , 
 	{ "name": "P_192", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_192", "role": "default" }} , 
 	{ "name": "P_191", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_191", "role": "default" }} , 
 	{ "name": "P_190", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_190", "role": "default" }} , 
 	{ "name": "P_189", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_189", "role": "default" }} , 
 	{ "name": "P_188", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_188", "role": "default" }} , 
 	{ "name": "P_187", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_187", "role": "default" }} , 
 	{ "name": "P_186", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_186", "role": "default" }} , 
 	{ "name": "P_185", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_185", "role": "default" }} , 
 	{ "name": "P_184", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_184", "role": "default" }} , 
 	{ "name": "P_183", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_183", "role": "default" }} , 
 	{ "name": "P_182", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_182", "role": "default" }} , 
 	{ "name": "P_181", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_181", "role": "default" }} , 
 	{ "name": "P_199", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_199", "role": "default" }} , 
 	{ "name": "P_200", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_200", "role": "default" }} , 
 	{ "name": "P_201", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_201", "role": "default" }} , 
 	{ "name": "P_202", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_202", "role": "default" }} , 
 	{ "name": "P_203", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_203", "role": "default" }} , 
 	{ "name": "P_204", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_204", "role": "default" }} , 
 	{ "name": "P_205", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_205", "role": "default" }} , 
 	{ "name": "P_206", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_206", "role": "default" }} , 
 	{ "name": "P_207", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_207", "role": "default" }} , 
 	{ "name": "P_208", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_208", "role": "default" }} , 
 	{ "name": "P_209", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_209", "role": "default" }} , 
 	{ "name": "P_210", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_210", "role": "default" }} , 
 	{ "name": "P_211", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_211", "role": "default" }} , 
 	{ "name": "P_212", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_212", "role": "default" }} , 
 	{ "name": "P_213", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_213", "role": "default" }} , 
 	{ "name": "P_214", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_214", "role": "default" }} , 
 	{ "name": "P_215", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_215", "role": "default" }} , 
 	{ "name": "P_216", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "P_216", "role": "default" }} , 
 	{ "name": "local_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "local", "role": "address0" }} , 
 	{ "name": "local_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local", "role": "ce0" }} , 
 	{ "name": "local_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local", "role": "we0" }} , 
 	{ "name": "local_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local", "role": "d0" }} , 
 	{ "name": "local_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "local_1", "role": "address0" }} , 
 	{ "name": "local_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_1", "role": "ce0" }} , 
 	{ "name": "local_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_1", "role": "we0" }} , 
 	{ "name": "local_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_1", "role": "d0" }} , 
 	{ "name": "local_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "local_2", "role": "address0" }} , 
 	{ "name": "local_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_2", "role": "ce0" }} , 
 	{ "name": "local_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_2", "role": "we0" }} , 
 	{ "name": "local_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_2", "role": "d0" }} , 
 	{ "name": "local_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "local_3", "role": "address0" }} , 
 	{ "name": "local_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_3", "role": "ce0" }} , 
 	{ "name": "local_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_3", "role": "we0" }} , 
 	{ "name": "local_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_3", "role": "d0" }} , 
 	{ "name": "local_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "local_4", "role": "address0" }} , 
 	{ "name": "local_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_4", "role": "ce0" }} , 
 	{ "name": "local_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_4", "role": "we0" }} , 
 	{ "name": "local_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_4", "role": "d0" }} , 
 	{ "name": "local_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "local_5", "role": "address0" }} , 
 	{ "name": "local_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_5", "role": "ce0" }} , 
 	{ "name": "local_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_5", "role": "we0" }} , 
 	{ "name": "local_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_5", "role": "d0" }} , 
 	{ "name": "local_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "local_6", "role": "address0" }} , 
 	{ "name": "local_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_6", "role": "ce0" }} , 
 	{ "name": "local_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_6", "role": "we0" }} , 
 	{ "name": "local_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_6", "role": "d0" }} , 
 	{ "name": "local_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "local_7", "role": "address0" }} , 
 	{ "name": "local_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_7", "role": "ce0" }} , 
 	{ "name": "local_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_7", "role": "we0" }} , 
 	{ "name": "local_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "local_7", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8"],
		"CDFG" : "ekf_batch_Pipeline_VITIS_LOOP_174_10_VITIS_LOOP_175_11",
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
			{"Name" : "P_198", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_197", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_196", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_195", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_194", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_193", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_192", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_191", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_190", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_189", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_188", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_187", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_186", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_185", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_184", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_183", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_182", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_181", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_199", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_200", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_201", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_202", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_203", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_204", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_205", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_206", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_207", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_208", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_209", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_210", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_211", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_212", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_213", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_214", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_215", "Type" : "None", "Direction" : "I"},
			{"Name" : "P_216", "Type" : "None", "Direction" : "I"},
			{"Name" : "local", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_7", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_174_10_VITIS_LOOP_175_11", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_6_3_32_1_1_U1388", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_6_3_32_1_1_U1389", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_6_3_32_1_1_U1390", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_6_3_32_1_1_U1391", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_6_3_32_1_1_U1392", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_6_3_32_1_1_U1393", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_6_3_32_1_1_U1394", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	ekf_batch_Pipeline_VITIS_LOOP_174_10_VITIS_LOOP_175_11 {
		P_198 {Type I LastRead 0 FirstWrite -1}
		P_197 {Type I LastRead 0 FirstWrite -1}
		P_196 {Type I LastRead 0 FirstWrite -1}
		P_195 {Type I LastRead 0 FirstWrite -1}
		P_194 {Type I LastRead 0 FirstWrite -1}
		P_193 {Type I LastRead 0 FirstWrite -1}
		P_192 {Type I LastRead 0 FirstWrite -1}
		P_191 {Type I LastRead 0 FirstWrite -1}
		P_190 {Type I LastRead 0 FirstWrite -1}
		P_189 {Type I LastRead 0 FirstWrite -1}
		P_188 {Type I LastRead 0 FirstWrite -1}
		P_187 {Type I LastRead 0 FirstWrite -1}
		P_186 {Type I LastRead 0 FirstWrite -1}
		P_185 {Type I LastRead 0 FirstWrite -1}
		P_184 {Type I LastRead 0 FirstWrite -1}
		P_183 {Type I LastRead 0 FirstWrite -1}
		P_182 {Type I LastRead 0 FirstWrite -1}
		P_181 {Type I LastRead 0 FirstWrite -1}
		P_199 {Type I LastRead 0 FirstWrite -1}
		P_200 {Type I LastRead 0 FirstWrite -1}
		P_201 {Type I LastRead 0 FirstWrite -1}
		P_202 {Type I LastRead 0 FirstWrite -1}
		P_203 {Type I LastRead 0 FirstWrite -1}
		P_204 {Type I LastRead 0 FirstWrite -1}
		P_205 {Type I LastRead 0 FirstWrite -1}
		P_206 {Type I LastRead 0 FirstWrite -1}
		P_207 {Type I LastRead 0 FirstWrite -1}
		P_208 {Type I LastRead 0 FirstWrite -1}
		P_209 {Type I LastRead 0 FirstWrite -1}
		P_210 {Type I LastRead 0 FirstWrite -1}
		P_211 {Type I LastRead 0 FirstWrite -1}
		P_212 {Type I LastRead 0 FirstWrite -1}
		P_213 {Type I LastRead 0 FirstWrite -1}
		P_214 {Type I LastRead 0 FirstWrite -1}
		P_215 {Type I LastRead 0 FirstWrite -1}
		P_216 {Type I LastRead 0 FirstWrite -1}
		local {Type O LastRead -1 FirstWrite 0}
		local_1 {Type O LastRead -1 FirstWrite 0}
		local_2 {Type O LastRead -1 FirstWrite 0}
		local_3 {Type O LastRead -1 FirstWrite 0}
		local_4 {Type O LastRead -1 FirstWrite 0}
		local_5 {Type O LastRead -1 FirstWrite 0}
		local_6 {Type O LastRead -1 FirstWrite 0}
		local_7 {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "38", "Max" : "38"}
	, {"Name" : "Interval", "Min" : "38", "Max" : "38"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	P_198 { ap_none {  { P_198 in_data 0 32 } } }
	P_197 { ap_none {  { P_197 in_data 0 32 } } }
	P_196 { ap_none {  { P_196 in_data 0 32 } } }
	P_195 { ap_none {  { P_195 in_data 0 32 } } }
	P_194 { ap_none {  { P_194 in_data 0 32 } } }
	P_193 { ap_none {  { P_193 in_data 0 32 } } }
	P_192 { ap_none {  { P_192 in_data 0 32 } } }
	P_191 { ap_none {  { P_191 in_data 0 32 } } }
	P_190 { ap_none {  { P_190 in_data 0 32 } } }
	P_189 { ap_none {  { P_189 in_data 0 32 } } }
	P_188 { ap_none {  { P_188 in_data 0 32 } } }
	P_187 { ap_none {  { P_187 in_data 0 32 } } }
	P_186 { ap_none {  { P_186 in_data 0 32 } } }
	P_185 { ap_none {  { P_185 in_data 0 32 } } }
	P_184 { ap_none {  { P_184 in_data 0 32 } } }
	P_183 { ap_none {  { P_183 in_data 0 32 } } }
	P_182 { ap_none {  { P_182 in_data 0 32 } } }
	P_181 { ap_none {  { P_181 in_data 0 32 } } }
	P_199 { ap_none {  { P_199 in_data 0 32 } } }
	P_200 { ap_none {  { P_200 in_data 0 32 } } }
	P_201 { ap_none {  { P_201 in_data 0 32 } } }
	P_202 { ap_none {  { P_202 in_data 0 32 } } }
	P_203 { ap_none {  { P_203 in_data 0 32 } } }
	P_204 { ap_none {  { P_204 in_data 0 32 } } }
	P_205 { ap_none {  { P_205 in_data 0 32 } } }
	P_206 { ap_none {  { P_206 in_data 0 32 } } }
	P_207 { ap_none {  { P_207 in_data 0 32 } } }
	P_208 { ap_none {  { P_208 in_data 0 32 } } }
	P_209 { ap_none {  { P_209 in_data 0 32 } } }
	P_210 { ap_none {  { P_210 in_data 0 32 } } }
	P_211 { ap_none {  { P_211 in_data 0 32 } } }
	P_212 { ap_none {  { P_212 in_data 0 32 } } }
	P_213 { ap_none {  { P_213 in_data 0 32 } } }
	P_214 { ap_none {  { P_214 in_data 0 32 } } }
	P_215 { ap_none {  { P_215 in_data 0 32 } } }
	P_216 { ap_none {  { P_216 in_data 0 32 } } }
	local { ap_memory {  { local_address0 mem_address 1 4 }  { local_ce0 mem_ce 1 1 }  { local_we0 mem_we 1 1 }  { local_d0 mem_din 1 32 } } }
	local_1 { ap_memory {  { local_1_address0 mem_address 1 4 }  { local_1_ce0 mem_ce 1 1 }  { local_1_we0 mem_we 1 1 }  { local_1_d0 mem_din 1 32 } } }
	local_2 { ap_memory {  { local_2_address0 mem_address 1 4 }  { local_2_ce0 mem_ce 1 1 }  { local_2_we0 mem_we 1 1 }  { local_2_d0 mem_din 1 32 } } }
	local_3 { ap_memory {  { local_3_address0 mem_address 1 4 }  { local_3_ce0 mem_ce 1 1 }  { local_3_we0 mem_we 1 1 }  { local_3_d0 mem_din 1 32 } } }
	local_4 { ap_memory {  { local_4_address0 mem_address 1 4 }  { local_4_ce0 mem_ce 1 1 }  { local_4_we0 mem_we 1 1 }  { local_4_d0 mem_din 1 32 } } }
	local_5 { ap_memory {  { local_5_address0 mem_address 1 4 }  { local_5_ce0 mem_ce 1 1 }  { local_5_we0 mem_we 1 1 }  { local_5_d0 mem_din 1 32 } } }
	local_6 { ap_memory {  { local_6_address0 mem_address 1 4 }  { local_6_ce0 mem_ce 1 1 }  { local_6_we0 mem_we 1 1 }  { local_6_d0 mem_din 1 32 } } }
	local_7 { ap_memory {  { local_7_address0 mem_address 1 4 }  { local_7_ce0 mem_ce 1 1 }  { local_7_we0 mem_we 1 1 }  { local_7_d0 mem_din 1 32 } } }
}
