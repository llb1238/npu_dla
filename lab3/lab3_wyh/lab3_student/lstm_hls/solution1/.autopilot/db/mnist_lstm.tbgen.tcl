set moduleName mnist_lstm
set isTopModule 0
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
set C_modelName {mnist_lstm}
set C_modelType { void 0 }
set C_modelArgList {
	{ in_data_V int 32 regular {axi_s 0 volatile  { in_r Data } }  }
	{ in_keep_V int 4 regular {axi_s 0 volatile  { in_r Keep } }  }
	{ in_strb_V int 4 regular {axi_s 0 volatile  { in_r Strb } }  }
	{ in_user_V int 1 regular {axi_s 0 volatile  { in_r User } }  }
	{ in_last_V int 1 regular {axi_s 0 volatile  { in_r Last } }  }
	{ in_id_V int 1 regular {axi_s 0 volatile  { in_r ID } }  }
	{ in_dest_V int 1 regular {axi_s 0 volatile  { in_r Dest } }  }
	{ out_data_V int 32 regular {axi_s 1 volatile  { out_r Data } }  }
	{ out_keep_V int 4 regular {axi_s 1 volatile  { out_r Keep } }  }
	{ out_strb_V int 4 regular {axi_s 1 volatile  { out_r Strb } }  }
	{ out_user_V int 1 regular {axi_s 1 volatile  { out_r User } }  }
	{ out_last_V int 1 regular {axi_s 1 volatile  { out_r Last } }  }
	{ out_id_V int 1 regular {axi_s 1 volatile  { out_r ID } }  }
	{ out_dest_V int 1 regular {axi_s 1 volatile  { out_r Dest } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "in_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "in_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "in_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "in_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "in_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "out_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 24
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ in_r_TDATA sc_in sc_lv 32 signal 0 } 
	{ in_r_TVALID sc_in sc_logic 1 invld 0 } 
	{ in_r_TREADY sc_out sc_logic 1 inacc 6 } 
	{ in_r_TKEEP sc_in sc_lv 4 signal 1 } 
	{ in_r_TSTRB sc_in sc_lv 4 signal 2 } 
	{ in_r_TUSER sc_in sc_lv 1 signal 3 } 
	{ in_r_TLAST sc_in sc_lv 1 signal 4 } 
	{ in_r_TID sc_in sc_lv 1 signal 5 } 
	{ in_r_TDEST sc_in sc_lv 1 signal 6 } 
	{ out_r_TDATA sc_out sc_lv 32 signal 7 } 
	{ out_r_TVALID sc_out sc_logic 1 outvld 13 } 
	{ out_r_TREADY sc_in sc_logic 1 outacc 7 } 
	{ out_r_TKEEP sc_out sc_lv 4 signal 8 } 
	{ out_r_TSTRB sc_out sc_lv 4 signal 9 } 
	{ out_r_TUSER sc_out sc_lv 1 signal 10 } 
	{ out_r_TLAST sc_out sc_lv 1 signal 11 } 
	{ out_r_TID sc_out sc_lv 1 signal 12 } 
	{ out_r_TDEST sc_out sc_lv 1 signal 13 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "in_r_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_data_V", "role": "" }} , 
 	{ "name": "in_r_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_data_V", "role": "D" }} , 
 	{ "name": "in_r_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in_dest_V", "role": "Y" }} , 
 	{ "name": "in_r_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_keep_V", "role": "" }} , 
 	{ "name": "in_r_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_strb_V", "role": "" }} , 
 	{ "name": "in_r_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_user_V", "role": "" }} , 
 	{ "name": "in_r_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_last_V", "role": "" }} , 
 	{ "name": "in_r_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_id_V", "role": "" }} , 
 	{ "name": "in_r_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_dest_V", "role": "" }} , 
 	{ "name": "out_r_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_data_V", "role": "" }} , 
 	{ "name": "out_r_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_dest_V", "role": "D" }} , 
 	{ "name": "out_r_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "out_data_V", "role": "Y" }} , 
 	{ "name": "out_r_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_keep_V", "role": "" }} , 
 	{ "name": "out_r_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_strb_V", "role": "" }} , 
 	{ "name": "out_r_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_user_V", "role": "" }} , 
 	{ "name": "out_r_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_last_V", "role": "" }} , 
 	{ "name": "out_r_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_id_V", "role": "" }} , 
 	{ "name": "out_r_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_dest_V", "role": "" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "52"],
		"CDFG" : "mnist_lstm",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "27795940", "EstimateLatencyMax" : "28226020",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state20", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_infer_fu_215"}],
		"Port" : [
			{"Name" : "in_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in_r_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "in_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "in_user_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "in_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "in_id_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "in_dest_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "out_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out_r_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "out_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "out_user_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "out_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "out_id_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "out_dest_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "Weight0_f", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_infer_fu_215", "Port" : "Weight0_f"}]},
			{"Name" : "Bias0_f", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_infer_fu_215", "Port" : "Bias0_f"}]},
			{"Name" : "Weight0_i", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_infer_fu_215", "Port" : "Weight0_i"}]},
			{"Name" : "Bias0_i", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_infer_fu_215", "Port" : "Bias0_i"}]},
			{"Name" : "Weight0_c", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_infer_fu_215", "Port" : "Weight0_c"}]},
			{"Name" : "Bias0_c", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_infer_fu_215", "Port" : "Bias0_c"}]},
			{"Name" : "table_exp_Z1_array_s", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_infer_fu_215", "Port" : "table_exp_Z1_array_s"}]},
			{"Name" : "table_f_Z3_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_infer_fu_215", "Port" : "table_f_Z3_array_V"}]},
			{"Name" : "table_f_Z2_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_infer_fu_215", "Port" : "table_f_Z2_array_V"}]},
			{"Name" : "Weight0_o", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_infer_fu_215", "Port" : "Weight0_o"}]},
			{"Name" : "Bias0_o", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_infer_fu_215", "Port" : "Bias0_o"}]},
			{"Name" : "Weight_lc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_infer_fu_215", "Port" : "Weight_lc"}]},
			{"Name" : "Bias_lc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_infer_fu_215", "Port" : "Bias_lc"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_dat_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.res_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_215", "Parent" : "0", "Child" : ["4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "28", "45", "47", "49", "50", "51"],
		"CDFG" : "infer",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "27795126", "EstimateLatencyMax" : "28225206",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state29", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sigmoid_fu_763"},
			{"State" : "ap_ST_fsm_state47", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sigmoid_fu_763"},
			{"State" : "ap_ST_fsm_state84", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sigmoid_fu_763"},
			{"State" : "ap_ST_fsm_state67", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_generic_tanh_float_s_fu_769"},
			{"State" : "ap_ST_fsm_state94", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_generic_tanh_float_s_fu_769"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_geva_1_fu_782"},
			{"State" : "ap_ST_fsm_state45", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_geva_1_fu_782"},
			{"State" : "ap_ST_fsm_state63", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_geva_1_fu_782"},
			{"State" : "ap_ST_fsm_state82", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_geva_1_fu_782"},
			{"State" : "ap_ST_fsm_state90", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_geva_1_fu_782"},
			{"State" : "ap_ST_fsm_state86", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_hprod_fu_792"},
			{"State" : "ap_ST_fsm_state88", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_hprod_fu_792"},
			{"State" : "ap_ST_fsm_state95", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_hprod_fu_792"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fill_n_fu_799"},
			{"State" : "ap_ST_fsm_state31", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fill_n_fu_799"},
			{"State" : "ap_ST_fsm_state49", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fill_n_fu_799"},
			{"State" : "ap_ST_fsm_state68", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fill_n_fu_799"}],
		"Port" : [
			{"Name" : "input_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "res", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "Weight0_f", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Bias0_f", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "grp_geva_1_fu_782", "Port" : "a"}]},
			{"Name" : "Weight0_i", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Bias0_i", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "grp_geva_1_fu_782", "Port" : "a"}]},
			{"Name" : "Weight0_c", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Bias0_c", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "grp_geva_1_fu_782", "Port" : "a"}]},
			{"Name" : "table_exp_Z1_array_s", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_generic_tanh_float_s_fu_769", "Port" : "table_exp_Z1_array_s"}]},
			{"Name" : "table_f_Z3_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_generic_tanh_float_s_fu_769", "Port" : "table_f_Z3_array_V"}]},
			{"Name" : "table_f_Z2_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_generic_tanh_float_s_fu_769", "Port" : "table_f_Z2_array_V"}]},
			{"Name" : "Weight0_o", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Bias0_o", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "grp_geva_1_fu_782", "Port" : "a"}]},
			{"Name" : "Weight_lc", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Bias_lc", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_215.Weight0_f_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_215.Bias0_f_U", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_215.Weight0_i_U", "Parent" : "3"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_215.Bias0_i_U", "Parent" : "3"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_215.Weight0_c_U", "Parent" : "3"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_215.Bias0_c_U", "Parent" : "3"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_215.Weight0_o_U", "Parent" : "3"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_215.Bias0_o_U", "Parent" : "3"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_215.Weight_lc_U", "Parent" : "3"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_215.Bias_lc_U", "Parent" : "3"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_215.gate_f_U", "Parent" : "3"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_215.gate_i_U", "Parent" : "3"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_215.stat_C_U", "Parent" : "3"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_215.C_t_U", "Parent" : "3"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_215.gate_o_U", "Parent" : "3"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_215.h_t_U", "Parent" : "3"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_215.vec_i_U", "Parent" : "3"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_215.vec_tmp_U", "Parent" : "3"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_215.grp_sigmoid_fu_763", "Parent" : "3", "Child" : ["23", "24", "25", "26", "27"],
		"CDFG" : "sigmoid",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7553", "EstimateLatencyMax" : "7553",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "res", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_215.grp_sigmoid_fu_763.LSTM_Top_fptrunc_cud_U6", "Parent" : "22"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_215.grp_sigmoid_fu_763.LSTM_Top_fpext_32dEe_U7", "Parent" : "22"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_215.grp_sigmoid_fu_763.LSTM_Top_dadd_64neOg_U8", "Parent" : "22"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_215.grp_sigmoid_fu_763.LSTM_Top_ddiv_64nfYi_U9", "Parent" : "22"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_215.grp_sigmoid_fu_763.LSTM_Top_dexp_64ng8j_U10", "Parent" : "22"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_215.grp_generic_tanh_float_s_fu_769", "Parent" : "3", "Child" : ["29", "38", "39", "40", "41", "42", "43", "44"],
		"CDFG" : "generic_tanh_float_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "61",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "table_exp_Z1_array_s", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_exp_generic_double_s_fu_89", "Port" : "table_exp_Z1_array_s"}]},
			{"Name" : "table_f_Z3_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_exp_generic_double_s_fu_89", "Port" : "table_f_Z3_array_V"}]},
			{"Name" : "table_f_Z2_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_exp_generic_double_s_fu_89", "Port" : "table_f_Z2_array_V"}]}]},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_215.grp_generic_tanh_float_s_fu_769.grp_exp_generic_double_s_fu_89", "Parent" : "28", "Child" : ["30", "31", "32", "33", "34", "35", "36", "37"],
		"CDFG" : "exp_generic_double_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "19", "EstimateLatencyMin" : "19", "EstimateLatencyMax" : "19",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "table_exp_Z1_array_s", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "table_f_Z3_array_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "table_f_Z2_array_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "30", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_215.grp_generic_tanh_float_s_fu_769.grp_exp_generic_double_s_fu_89.table_exp_Z1_array_s_U", "Parent" : "29"},
	{"ID" : "31", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_215.grp_generic_tanh_float_s_fu_769.grp_exp_generic_double_s_fu_89.table_f_Z3_array_V_U", "Parent" : "29"},
	{"ID" : "32", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_215.grp_generic_tanh_float_s_fu_769.grp_exp_generic_double_s_fu_89.table_f_Z2_array_V_U", "Parent" : "29"},
	{"ID" : "33", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_215.grp_generic_tanh_float_s_fu_769.grp_exp_generic_double_s_fu_89.LSTM_Top_mul_72nskbM_U18", "Parent" : "29"},
	{"ID" : "34", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_215.grp_generic_tanh_float_s_fu_769.grp_exp_generic_double_s_fu_89.LSTM_Top_mul_36nslbW_U19", "Parent" : "29"},
	{"ID" : "35", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_215.grp_generic_tanh_float_s_fu_769.grp_exp_generic_double_s_fu_89.LSTM_Top_mul_44nsmb6_U20", "Parent" : "29"},
	{"ID" : "36", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_215.grp_generic_tanh_float_s_fu_769.grp_exp_generic_double_s_fu_89.LSTM_Top_mul_50nsncg_U21", "Parent" : "29"},
	{"ID" : "37", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_215.grp_generic_tanh_float_s_fu_769.grp_exp_generic_double_s_fu_89.LSTM_Top_mac_mulaocq_U22", "Parent" : "29"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_215.grp_generic_tanh_float_s_fu_769.LSTM_Top_faddfsubpcA_U32", "Parent" : "28"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_215.grp_generic_tanh_float_s_fu_769.LSTM_Top_fmul_32nqcK_U33", "Parent" : "28"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_215.grp_generic_tanh_float_s_fu_769.LSTM_Top_fdiv_32nrcU_U34", "Parent" : "28"},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_215.grp_generic_tanh_float_s_fu_769.LSTM_Top_fptrunc_cud_U35", "Parent" : "28"},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_215.grp_generic_tanh_float_s_fu_769.LSTM_Top_fpext_32dEe_U36", "Parent" : "28"},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_215.grp_generic_tanh_float_s_fu_769.LSTM_Top_fcmp_32nsc4_U37", "Parent" : "28"},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_215.grp_generic_tanh_float_s_fu_769.LSTM_Top_dadd_64neOg_U38", "Parent" : "28"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_215.grp_geva_1_fu_782", "Parent" : "3", "Child" : ["46"],
		"CDFG" : "geva_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1025", "EstimateLatencyMax" : "1025",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "res", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_215.grp_geva_1_fu_782.LSTM_Top_fadd_32nbkb_U2", "Parent" : "45"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_215.grp_hprod_fu_792", "Parent" : "3", "Child" : ["48"],
		"CDFG" : "hprod",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "897", "EstimateLatencyMax" : "897",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "res", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_215.grp_hprod_fu_792.LSTM_Top_fmul_32nqcK_U44", "Parent" : "47"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_215.grp_fill_n_fu_799", "Parent" : "3",
		"CDFG" : "fill_n",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "129", "EstimateLatencyMax" : "129",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_first", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_215.LSTM_Top_fadd_32nbkb_U48", "Parent" : "3"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_215.LSTM_Top_fmul_32nqcK_U49", "Parent" : "3"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.LSTM_Top_fdiv_32nrcU_U64", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	mnist_lstm {
		in_data_V {Type I LastRead 1 FirstWrite -1}
		in_keep_V {Type I LastRead 1 FirstWrite -1}
		in_strb_V {Type I LastRead 1 FirstWrite -1}
		in_user_V {Type I LastRead 1 FirstWrite -1}
		in_last_V {Type I LastRead 1 FirstWrite -1}
		in_id_V {Type I LastRead 1 FirstWrite -1}
		in_dest_V {Type I LastRead 1 FirstWrite -1}
		out_data_V {Type O LastRead -1 FirstWrite 5}
		out_keep_V {Type O LastRead -1 FirstWrite 5}
		out_strb_V {Type O LastRead -1 FirstWrite 5}
		out_user_V {Type O LastRead -1 FirstWrite 5}
		out_last_V {Type O LastRead -1 FirstWrite 5}
		out_id_V {Type O LastRead -1 FirstWrite 5}
		out_dest_V {Type O LastRead -1 FirstWrite 5}
		Weight0_f {Type I LastRead -1 FirstWrite -1}
		Bias0_f {Type I LastRead -1 FirstWrite -1}
		Weight0_i {Type I LastRead -1 FirstWrite -1}
		Bias0_i {Type I LastRead -1 FirstWrite -1}
		Weight0_c {Type I LastRead -1 FirstWrite -1}
		Bias0_c {Type I LastRead -1 FirstWrite -1}
		table_exp_Z1_array_s {Type I LastRead -1 FirstWrite -1}
		table_f_Z3_array_V {Type I LastRead -1 FirstWrite -1}
		table_f_Z2_array_V {Type I LastRead -1 FirstWrite -1}
		Weight0_o {Type I LastRead -1 FirstWrite -1}
		Bias0_o {Type I LastRead -1 FirstWrite -1}
		Weight_lc {Type I LastRead -1 FirstWrite -1}
		Bias_lc {Type I LastRead -1 FirstWrite -1}}
	infer {
		input_r {Type I LastRead 8 FirstWrite -1}
		res {Type IO LastRead 14 FirstWrite 8}
		Weight0_f {Type I LastRead -1 FirstWrite -1}
		Bias0_f {Type I LastRead -1 FirstWrite -1}
		Weight0_i {Type I LastRead -1 FirstWrite -1}
		Bias0_i {Type I LastRead -1 FirstWrite -1}
		Weight0_c {Type I LastRead -1 FirstWrite -1}
		Bias0_c {Type I LastRead -1 FirstWrite -1}
		table_exp_Z1_array_s {Type I LastRead -1 FirstWrite -1}
		table_f_Z3_array_V {Type I LastRead -1 FirstWrite -1}
		table_f_Z2_array_V {Type I LastRead -1 FirstWrite -1}
		Weight0_o {Type I LastRead -1 FirstWrite -1}
		Bias0_o {Type I LastRead -1 FirstWrite -1}
		Weight_lc {Type I LastRead -1 FirstWrite -1}
		Bias_lc {Type I LastRead -1 FirstWrite -1}}
	sigmoid {
		res {Type O LastRead -1 FirstWrite 59}
		a {Type I LastRead 1 FirstWrite -1}}
	generic_tanh_float_s {
		t_in {Type I LastRead 0 FirstWrite -1}
		table_exp_Z1_array_s {Type I LastRead -1 FirstWrite -1}
		table_f_Z3_array_V {Type I LastRead -1 FirstWrite -1}
		table_f_Z2_array_V {Type I LastRead -1 FirstWrite -1}}
	exp_generic_double_s {
		x {Type I LastRead 0 FirstWrite -1}
		table_exp_Z1_array_s {Type I LastRead -1 FirstWrite -1}
		table_f_Z3_array_V {Type I LastRead -1 FirstWrite -1}
		table_f_Z2_array_V {Type I LastRead -1 FirstWrite -1}}
	geva_1 {
		res {Type IO LastRead 1 FirstWrite 8}
		a {Type I LastRead 1 FirstWrite -1}}
	hprod {
		res {Type O LastRead -1 FirstWrite 7}
		a {Type I LastRead 1 FirstWrite -1}
		b {Type I LastRead 1 FirstWrite -1}}
	fill_n {
		p_first {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "27795940", "Max" : "28226020"}
	, {"Name" : "Interval", "Min" : "27795940", "Max" : "28226020"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
]}

set Spec2ImplPortList { 
	in_data_V { axis {  { in_r_TDATA in_data 0 32 }  { in_r_TVALID in_vld 0 1 } } }
	in_keep_V { axis {  { in_r_TKEEP in_data 0 4 } } }
	in_strb_V { axis {  { in_r_TSTRB in_data 0 4 } } }
	in_user_V { axis {  { in_r_TUSER in_data 0 1 } } }
	in_last_V { axis {  { in_r_TLAST in_data 0 1 } } }
	in_id_V { axis {  { in_r_TID in_data 0 1 } } }
	in_dest_V { axis {  { in_r_TREADY in_acc 1 1 }  { in_r_TDEST in_data 0 1 } } }
	out_data_V { axis {  { out_r_TDATA out_data 1 32 }  { out_r_TREADY out_acc 0 1 } } }
	out_keep_V { axis {  { out_r_TKEEP out_data 1 4 } } }
	out_strb_V { axis {  { out_r_TSTRB out_data 1 4 } } }
	out_user_V { axis {  { out_r_TUSER out_data 1 1 } } }
	out_last_V { axis {  { out_r_TLAST out_data 1 1 } } }
	out_id_V { axis {  { out_r_TID out_data 1 1 } } }
	out_dest_V { axis {  { out_r_TVALID out_vld 1 1 }  { out_r_TDEST out_data 1 1 } } }
}
