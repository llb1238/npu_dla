set moduleName infer_Pipeline_VITIS_LOOP_20_15
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type loop_auto_rewind
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 42
set C_modelName {infer_Pipeline_VITIS_LOOP_20_15}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict gate_o { MEM_WIDTH 32 MEM_SIZE 512 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ gate_o float 32 regular {array 128 { 0 1 } 1 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "gate_o", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ gate_o_address0 sc_out sc_lv 7 signal 0 } 
	{ gate_o_ce0 sc_out sc_logic 1 signal 0 } 
	{ gate_o_we0 sc_out sc_logic 1 signal 0 } 
	{ gate_o_d0 sc_out sc_lv 32 signal 0 } 
	{ gate_o_address1 sc_out sc_lv 7 signal 0 } 
	{ gate_o_ce1 sc_out sc_logic 1 signal 0 } 
	{ gate_o_q1 sc_in sc_lv 32 signal 0 } 
	{ grp_fu_378_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_378_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_378_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_378_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_378_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_386_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_386_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_386_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_386_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_390_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_390_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_390_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_390_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "gate_o_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "gate_o", "role": "address0" }} , 
 	{ "name": "gate_o_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gate_o", "role": "ce0" }} , 
 	{ "name": "gate_o_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gate_o", "role": "we0" }} , 
 	{ "name": "gate_o_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gate_o", "role": "d0" }} , 
 	{ "name": "gate_o_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "gate_o", "role": "address1" }} , 
 	{ "name": "gate_o_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gate_o", "role": "ce1" }} , 
 	{ "name": "gate_o_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gate_o", "role": "q1" }} , 
 	{ "name": "grp_fu_378_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_378_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_378_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_378_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_378_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_378_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_378_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_378_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_378_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_378_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_386_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_386_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_386_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_386_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_386_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_386_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_386_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_386_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_390_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_390_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_390_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_390_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_390_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_390_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_390_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_390_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "infer_Pipeline_VITIS_LOOP_20_15",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "162", "EstimateLatencyMax" : "162",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gate_o", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_20_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter33", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter33", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	infer_Pipeline_VITIS_LOOP_20_15 {
		gate_o {Type IO LastRead 0 FirstWrite 33}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "162", "Max" : "162"}
	, {"Name" : "Interval", "Min" : "162", "Max" : "162"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	gate_o { ap_memory {  { gate_o_address0 mem_address 1 7 }  { gate_o_ce0 mem_ce 1 1 }  { gate_o_we0 mem_we 1 1 }  { gate_o_d0 mem_din 1 32 }  { gate_o_address1 MemPortADDR2 1 7 }  { gate_o_ce1 MemPortCE2 1 1 }  { gate_o_q1 MemPortDOUT2 0 32 } } }
}
