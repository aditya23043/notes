set moduleName FFT
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {FFT}
set C_modelType { void 0 }
set C_modelArgList {
	{ FFT_input_real float 32 regular {array 8 { 1 3 } 1 1 }  }
	{ FFT_input_imag float 32 regular {array 8 { 1 3 } 1 1 }  }
	{ FFT_output_real float 32 regular {array 8 { 0 0 } 0 1 }  }
	{ FFT_output_imag float 32 regular {array 8 { 0 0 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "FFT_input_real", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "FFT_input.real","cData": "complex","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 7,"step" : 1}]}]}]} , 
 	{ "Name" : "FFT_input_imag", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "FFT_input.imag","cData": "complex","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 7,"step" : 1}]}]}]} , 
 	{ "Name" : "FFT_output_real", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "FFT_output.real","cData": "complex","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 7,"step" : 1}]}]}]} , 
 	{ "Name" : "FFT_output_imag", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "FFT_output.imag","cData": "complex","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 7,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ FFT_input_real_address0 sc_out sc_lv 3 signal 0 } 
	{ FFT_input_real_ce0 sc_out sc_logic 1 signal 0 } 
	{ FFT_input_real_q0 sc_in sc_lv 32 signal 0 } 
	{ FFT_input_imag_address0 sc_out sc_lv 3 signal 1 } 
	{ FFT_input_imag_ce0 sc_out sc_logic 1 signal 1 } 
	{ FFT_input_imag_q0 sc_in sc_lv 32 signal 1 } 
	{ FFT_output_real_address0 sc_out sc_lv 3 signal 2 } 
	{ FFT_output_real_ce0 sc_out sc_logic 1 signal 2 } 
	{ FFT_output_real_we0 sc_out sc_logic 1 signal 2 } 
	{ FFT_output_real_d0 sc_out sc_lv 32 signal 2 } 
	{ FFT_output_real_address1 sc_out sc_lv 3 signal 2 } 
	{ FFT_output_real_ce1 sc_out sc_logic 1 signal 2 } 
	{ FFT_output_real_we1 sc_out sc_logic 1 signal 2 } 
	{ FFT_output_real_d1 sc_out sc_lv 32 signal 2 } 
	{ FFT_output_imag_address0 sc_out sc_lv 3 signal 3 } 
	{ FFT_output_imag_ce0 sc_out sc_logic 1 signal 3 } 
	{ FFT_output_imag_we0 sc_out sc_logic 1 signal 3 } 
	{ FFT_output_imag_d0 sc_out sc_lv 32 signal 3 } 
	{ FFT_output_imag_address1 sc_out sc_lv 3 signal 3 } 
	{ FFT_output_imag_ce1 sc_out sc_logic 1 signal 3 } 
	{ FFT_output_imag_we1 sc_out sc_logic 1 signal 3 } 
	{ FFT_output_imag_d1 sc_out sc_lv 32 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "FFT_input_real_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "FFT_input_real", "role": "address0" }} , 
 	{ "name": "FFT_input_real_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "FFT_input_real", "role": "ce0" }} , 
 	{ "name": "FFT_input_real_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "FFT_input_real", "role": "q0" }} , 
 	{ "name": "FFT_input_imag_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "FFT_input_imag", "role": "address0" }} , 
 	{ "name": "FFT_input_imag_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "FFT_input_imag", "role": "ce0" }} , 
 	{ "name": "FFT_input_imag_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "FFT_input_imag", "role": "q0" }} , 
 	{ "name": "FFT_output_real_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "FFT_output_real", "role": "address0" }} , 
 	{ "name": "FFT_output_real_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "FFT_output_real", "role": "ce0" }} , 
 	{ "name": "FFT_output_real_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "FFT_output_real", "role": "we0" }} , 
 	{ "name": "FFT_output_real_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "FFT_output_real", "role": "d0" }} , 
 	{ "name": "FFT_output_real_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "FFT_output_real", "role": "address1" }} , 
 	{ "name": "FFT_output_real_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "FFT_output_real", "role": "ce1" }} , 
 	{ "name": "FFT_output_real_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "FFT_output_real", "role": "we1" }} , 
 	{ "name": "FFT_output_real_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "FFT_output_real", "role": "d1" }} , 
 	{ "name": "FFT_output_imag_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "FFT_output_imag", "role": "address0" }} , 
 	{ "name": "FFT_output_imag_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "FFT_output_imag", "role": "ce0" }} , 
 	{ "name": "FFT_output_imag_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "FFT_output_imag", "role": "we0" }} , 
 	{ "name": "FFT_output_imag_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "FFT_output_imag", "role": "d0" }} , 
 	{ "name": "FFT_output_imag_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "FFT_output_imag", "role": "address1" }} , 
 	{ "name": "FFT_output_imag_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "FFT_output_imag", "role": "ce1" }} , 
 	{ "name": "FFT_output_imag_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "FFT_output_imag", "role": "we1" }} , 
 	{ "name": "FFT_output_imag_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "FFT_output_imag", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "FFT",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "197", "EstimateLatencyMax" : "197",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_FFT_stages_fu_120"}],
		"Port" : [
			{"Name" : "FFT_input_real", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "FFT_input_imag", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "FFT_output_real", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_FFT_stages_fu_120", "Port" : "FFT_output_real"}]},
			{"Name" : "FFT_output_imag", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_FFT_stages_fu_120", "Port" : "FFT_output_imag"}]},
			{"Name" : "rev8", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rev8_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FFT_rev_real_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FFT_rev_imag_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_FFT_stages_fu_120", "Parent" : "0", "Child" : ["5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18"],
		"CDFG" : "FFT_stages",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "171", "EstimateLatencyMax" : "171",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "FFT_input_real", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "FFT_input_imag", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "FFT_output_real", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "FFT_output_imag", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FFT_stages_fu_120.temp1_real_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FFT_stages_fu_120.temp1_imag_U", "Parent" : "4"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FFT_stages_fu_120.temp2_real_U", "Parent" : "4"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FFT_stages_fu_120.temp2_imag_U", "Parent" : "4"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FFT_stages_fu_120.FFT_faddfsub_32ns_32ns_32_5_full_dsp_1_U1", "Parent" : "4"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FFT_stages_fu_120.FFT_fadd_32ns_32ns_32_5_full_dsp_1_U2", "Parent" : "4"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FFT_stages_fu_120.FFT_fsub_32ns_32ns_32_5_full_dsp_1_U3", "Parent" : "4"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FFT_stages_fu_120.FFT_fsub_32ns_32ns_32_5_full_dsp_1_U4", "Parent" : "4"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FFT_stages_fu_120.FFT_fmul_32ns_32ns_32_4_max_dsp_1_U5", "Parent" : "4"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FFT_stages_fu_120.FFT_fmul_32ns_32ns_32_4_max_dsp_1_U6", "Parent" : "4"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FFT_stages_fu_120.FFT_fmul_32ns_32ns_32_4_max_dsp_1_U7", "Parent" : "4"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FFT_stages_fu_120.FFT_fmul_32ns_32ns_32_4_max_dsp_1_U8", "Parent" : "4"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FFT_stages_fu_120.FFT_mux_42_32_1_1_U9", "Parent" : "4"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FFT_stages_fu_120.FFT_mux_42_32_1_1_U10", "Parent" : "4"}]}


set ArgLastReadFirstWriteLatency {
	FFT {
		FFT_input_real {Type I LastRead 2 FirstWrite -1}
		FFT_input_imag {Type I LastRead 2 FirstWrite -1}
		FFT_output_real {Type O LastRead -1 FirstWrite 18}
		FFT_output_imag {Type O LastRead -1 FirstWrite 18}
		rev8 {Type I LastRead -1 FirstWrite -1}}
	FFT_stages {
		FFT_input_real {Type I LastRead 2 FirstWrite -1}
		FFT_input_imag {Type I LastRead 2 FirstWrite -1}
		FFT_output_real {Type O LastRead -1 FirstWrite 18}
		FFT_output_imag {Type O LastRead -1 FirstWrite 18}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "197", "Max" : "197"}
	, {"Name" : "Interval", "Min" : "198", "Max" : "198"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	FFT_input_real { ap_memory {  { FFT_input_real_address0 mem_address 1 3 }  { FFT_input_real_ce0 mem_ce 1 1 }  { FFT_input_real_q0 mem_dout 0 32 } } }
	FFT_input_imag { ap_memory {  { FFT_input_imag_address0 mem_address 1 3 }  { FFT_input_imag_ce0 mem_ce 1 1 }  { FFT_input_imag_q0 mem_dout 0 32 } } }
	FFT_output_real { ap_memory {  { FFT_output_real_address0 mem_address 1 3 }  { FFT_output_real_ce0 mem_ce 1 1 }  { FFT_output_real_we0 mem_we 1 1 }  { FFT_output_real_d0 mem_din 1 32 }  { FFT_output_real_address1 MemPortADDR2 1 3 }  { FFT_output_real_ce1 MemPortCE2 1 1 }  { FFT_output_real_we1 MemPortWE2 1 1 }  { FFT_output_real_d1 MemPortDIN2 1 32 } } }
	FFT_output_imag { ap_memory {  { FFT_output_imag_address0 mem_address 1 3 }  { FFT_output_imag_ce0 mem_ce 1 1 }  { FFT_output_imag_we0 mem_we 1 1 }  { FFT_output_imag_d0 mem_din 1 32 }  { FFT_output_imag_address1 MemPortADDR2 1 3 }  { FFT_output_imag_ce1 MemPortCE2 1 1 }  { FFT_output_imag_we1 MemPortWE2 1 1 }  { FFT_output_imag_d1 MemPortDIN2 1 32 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
