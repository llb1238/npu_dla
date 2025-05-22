set moduleName LSTM_Top
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 42
set C_modelName {LSTM_Top}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ in_r int 96 regular {axi_s 0 volatile  { in_r Data } }  }
	{ out_r int 96 regular {axi_s 1 volatile  { out_r Data } }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "in_r", "interface" : "axis", "bitwidth" : 96, "direction" : "READONLY"} , 
 	{ "Name" : "out_r", "interface" : "axis", "bitwidth" : 96, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 8
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ in_r_TDATA sc_in sc_lv 96 signal 0 } 
	{ in_r_TVALID sc_in sc_logic 1 invld 0 } 
	{ in_r_TREADY sc_out sc_logic 1 inacc 0 } 
	{ out_r_TDATA sc_out sc_lv 96 signal 1 } 
	{ out_r_TVALID sc_out sc_logic 1 outvld 1 } 
	{ out_r_TREADY sc_in sc_logic 1 outacc 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "in_r_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "in_r", "role": "TDATA" }} , 
 	{ "name": "in_r_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_r", "role": "TVALID" }} , 
 	{ "name": "in_r_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in_r", "role": "TREADY" }} , 
 	{ "name": "out_r_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "out_r", "role": "TDATA" }} , 
 	{ "name": "out_r_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_r", "role": "TVALID" }} , 
 	{ "name": "out_r_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "out_r", "role": "TREADY" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "5", "123", "125", "126", "127"],
		"CDFG" : "LSTM_Top",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "13463365", "EstimateLatencyMax" : "13463365",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "in_r", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_LSTM_Top_Pipeline_VITIS_LOOP_13_1_fu_68", "Port" : "in_r", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "out_r", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "123", "SubInstance" : "grp_LSTM_Top_Pipeline_VITIS_LOOP_27_2_fu_107", "Port" : "out_r", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "Weight0_f", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_infer_fu_75", "Port" : "Weight0_f", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "Bias0_f", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_infer_fu_75", "Port" : "Bias0_f", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "Weight0_i", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_infer_fu_75", "Port" : "Weight0_i", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "Bias0_i", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_infer_fu_75", "Port" : "Bias0_i", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "Weight0_c", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_infer_fu_75", "Port" : "Weight0_c", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "Bias0_c", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_infer_fu_75", "Port" : "Bias0_c", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_infer_fu_75", "Port" : "table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_infer_fu_75", "Port" : "table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_infer_fu_75", "Port" : "table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "Weight0_o", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_infer_fu_75", "Port" : "Weight0_o", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "Bias0_o", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_infer_fu_75", "Port" : "Bias0_o", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "Weight_lc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_infer_fu_75", "Port" : "Weight_lc", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "Bias_lc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_infer_fu_75", "Port" : "Bias_lc", "Inst_start_state" : "4", "Inst_end_state" : "5"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_dat_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.res_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_LSTM_Top_Pipeline_VITIS_LOOP_13_1_fu_68", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "LSTM_Top_Pipeline_VITIS_LOOP_13_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "802", "EstimateLatencyMax" : "802",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "in_r", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in_r_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_dat", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_13_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter17", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter17", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LSTM_Top_Pipeline_VITIS_LOOP_13_1_fu_68.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75", "Parent" : "0", "Child" : ["6", "7", "8", "9", "10", "11", "12", "14", "16", "18", "20", "22", "24", "26", "115", "118", "121", "122"],
		"CDFG" : "infer",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "13462544", "EstimateLatencyMax" : "13462544",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "input_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_infer_Outline_VITIS_LOOP_63_1_fu_118", "Port" : "input_r", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "res", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_infer_Pipeline_32_fu_112", "Port" : "res", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "115", "SubInstance" : "grp_infer_Pipeline_VITIS_LOOP_141_12_VITIS_LOOP_141_13_fu_152", "Port" : "res", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "118", "SubInstance" : "grp_infer_Pipeline_VITIS_LOOP_34_110_fu_161", "Port" : "res", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "Weight0_f", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_infer_Outline_VITIS_LOOP_63_1_fu_118", "Port" : "Weight0_f", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Bias0_f", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_infer_Outline_VITIS_LOOP_63_1_fu_118", "Port" : "Bias0_f", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Weight0_i", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_infer_Outline_VITIS_LOOP_63_1_fu_118", "Port" : "Weight0_i", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Bias0_i", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_infer_Outline_VITIS_LOOP_63_1_fu_118", "Port" : "Bias0_i", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Weight0_c", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_infer_Outline_VITIS_LOOP_63_1_fu_118", "Port" : "Weight0_c", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Bias0_c", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_infer_Outline_VITIS_LOOP_63_1_fu_118", "Port" : "Bias0_c", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_infer_Outline_VITIS_LOOP_63_1_fu_118", "Port" : "table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_infer_Outline_VITIS_LOOP_63_1_fu_118", "Port" : "table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_infer_Outline_VITIS_LOOP_63_1_fu_118", "Port" : "table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Weight0_o", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_infer_Outline_VITIS_LOOP_63_1_fu_118", "Port" : "Weight0_o", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Bias0_o", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_infer_Outline_VITIS_LOOP_63_1_fu_118", "Port" : "Bias0_o", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Weight_lc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "115", "SubInstance" : "grp_infer_Pipeline_VITIS_LOOP_141_12_VITIS_LOOP_141_13_fu_152", "Port" : "Weight_lc", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "Bias_lc", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_infer_Pipeline_VITIS_LOOP_34_110_fu_161", "Port" : "Bias_lc", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.gate_f_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.gate_i_U", "Parent" : "5"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.stat_C_U", "Parent" : "5"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.C_t_U", "Parent" : "5"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.gate_o_U", "Parent" : "5"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.h_t_U", "Parent" : "5"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Pipeline_1_fu_76", "Parent" : "5", "Child" : ["13"],
		"CDFG" : "infer_Pipeline_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "130", "EstimateLatencyMax" : "130",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gate_f", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Pipeline_1_fu_76.flow_control_loop_pipe_sequential_init_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Pipeline_2_fu_82", "Parent" : "5", "Child" : ["15"],
		"CDFG" : "infer_Pipeline_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "130", "EstimateLatencyMax" : "130",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gate_i", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Pipeline_2_fu_82.flow_control_loop_pipe_sequential_init_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Pipeline_3_fu_88", "Parent" : "5", "Child" : ["17"],
		"CDFG" : "infer_Pipeline_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "130", "EstimateLatencyMax" : "130",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "stat_C", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Pipeline_3_fu_88.flow_control_loop_pipe_sequential_init_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Pipeline_4_fu_94", "Parent" : "5", "Child" : ["19"],
		"CDFG" : "infer_Pipeline_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "130", "EstimateLatencyMax" : "130",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "C_t", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Pipeline_4_fu_94.flow_control_loop_pipe_sequential_init_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Pipeline_5_fu_100", "Parent" : "5", "Child" : ["21"],
		"CDFG" : "infer_Pipeline_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "130", "EstimateLatencyMax" : "130",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gate_o", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Pipeline_5_fu_100.flow_control_loop_pipe_sequential_init_U", "Parent" : "20"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Pipeline_6_fu_106", "Parent" : "5", "Child" : ["23"],
		"CDFG" : "infer_Pipeline_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "130", "EstimateLatencyMax" : "130",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "h_t", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Pipeline_6_fu_106.flow_control_loop_pipe_sequential_init_U", "Parent" : "22"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Pipeline_32_fu_112", "Parent" : "5", "Child" : ["25"],
		"CDFG" : "infer_Pipeline_32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "res", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Pipeline_32_fu_112.flow_control_loop_pipe_sequential_init_U", "Parent" : "24"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118", "Parent" : "5", "Child" : ["27", "28", "29", "31", "33", "35", "37", "39", "41", "45", "48", "52", "54", "57", "61", "63", "66", "70", "73", "75", "78", "80", "82", "84", "86", "88", "90", "112", "113", "114"],
		"CDFG" : "infer_Outline_VITIS_LOOP_63_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "13454701", "EstimateLatencyMax" : "13454701",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gate_o", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_infer_Pipeline_22_fu_145", "Port" : "gate_o", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "66", "SubInstance" : "grp_infer_Pipeline_VITIS_LOOP_117_10_VITIS_LOOP_117_11_fu_219", "Port" : "gate_o", "Inst_start_state" : "12", "Inst_end_state" : "13"},
					{"ID" : "75", "SubInstance" : "grp_infer_Pipeline_VITIS_LOOP_34_14_fu_249", "Port" : "gate_o", "Inst_start_state" : "14", "Inst_end_state" : "15"},
					{"ID" : "78", "SubInstance" : "grp_infer_Pipeline_VITIS_LOOP_20_15_fu_257", "Port" : "gate_o", "Inst_start_state" : "16", "Inst_end_state" : "17"},
					{"ID" : "88", "SubInstance" : "grp_infer_Pipeline_VITIS_LOOP_41_19_fu_298", "Port" : "gate_o", "Inst_start_state" : "24", "Inst_end_state" : "25"}]},
			{"Name" : "h_t", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_infer_Pipeline_VITIS_LOOP_91_3_fu_151", "Port" : "h_t", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "88", "SubInstance" : "grp_infer_Pipeline_VITIS_LOOP_41_19_fu_298", "Port" : "h_t", "Inst_start_state" : "24", "Inst_end_state" : "25"}]},
			{"Name" : "stat_C", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "70", "SubInstance" : "grp_infer_Pipeline_VITIS_LOOP_41_1_fu_228", "Port" : "stat_C", "Inst_start_state" : "12", "Inst_end_state" : "13"},
					{"ID" : "82", "SubInstance" : "grp_infer_Pipeline_VITIS_LOOP_34_17_fu_270", "Port" : "stat_C", "Inst_start_state" : "18", "Inst_end_state" : "19"},
					{"ID" : "84", "SubInstance" : "grp_infer_Pipeline_29_fu_277", "Port" : "stat_C", "Inst_start_state" : "20", "Inst_end_state" : "21"},
					{"ID" : "86", "SubInstance" : "grp_infer_Pipeline_VITIS_LOOP_27_18_fu_285", "Port" : "stat_C", "Inst_start_state" : "22", "Inst_end_state" : "23"}]},
			{"Name" : "C_t", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "70", "SubInstance" : "grp_infer_Pipeline_VITIS_LOOP_41_1_fu_228", "Port" : "C_t", "Inst_start_state" : "12", "Inst_end_state" : "13"},
					{"ID" : "84", "SubInstance" : "grp_infer_Pipeline_29_fu_277", "Port" : "C_t", "Inst_start_state" : "20", "Inst_end_state" : "21"}]},
			{"Name" : "gate_i", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_infer_Pipeline_14_fu_134", "Port" : "gate_i", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "48", "SubInstance" : "grp_infer_Pipeline_VITIS_LOOP_103_6_VITIS_LOOP_103_7_fu_175", "Port" : "gate_i", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "54", "SubInstance" : "grp_infer_Pipeline_VITIS_LOOP_34_11_fu_190", "Port" : "gate_i", "Inst_start_state" : "10", "Inst_end_state" : "11"},
					{"ID" : "61", "SubInstance" : "grp_infer_Pipeline_VITIS_LOOP_20_12_fu_206", "Port" : "gate_i", "Inst_start_state" : "12", "Inst_end_state" : "13"},
					{"ID" : "80", "SubInstance" : "grp_infer_Pipeline_VITIS_LOOP_41_16_fu_263", "Port" : "gate_i", "Inst_start_state" : "16", "Inst_end_state" : "17"}]},
			{"Name" : "gate_f", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_infer_Pipeline_10_fu_128", "Port" : "gate_f", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "41", "SubInstance" : "grp_infer_Pipeline_VITIS_LOOP_96_4_VITIS_LOOP_96_5_fu_158", "Port" : "gate_f", "Inst_start_state" : "6", "Inst_end_state" : "7"},
					{"ID" : "45", "SubInstance" : "grp_infer_Pipeline_VITIS_LOOP_34_1_fu_167", "Port" : "gate_f", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "52", "SubInstance" : "grp_infer_Pipeline_VITIS_LOOP_20_1_fu_184", "Port" : "gate_f", "Inst_start_state" : "10", "Inst_end_state" : "11"},
					{"ID" : "70", "SubInstance" : "grp_infer_Pipeline_VITIS_LOOP_41_1_fu_228", "Port" : "gate_f", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "input_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_infer_Pipeline_VITIS_LOOP_90_2_fu_120", "Port" : "input_r", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "Weight0_f", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_infer_Pipeline_VITIS_LOOP_96_4_VITIS_LOOP_96_5_fu_158", "Port" : "Weight0_f", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "Bias0_f", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "grp_infer_Pipeline_VITIS_LOOP_34_1_fu_167", "Port" : "Bias0_f", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "Weight0_i", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_infer_Pipeline_VITIS_LOOP_103_6_VITIS_LOOP_103_7_fu_175", "Port" : "Weight0_i", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "Bias0_i", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_infer_Pipeline_VITIS_LOOP_34_11_fu_190", "Port" : "Bias0_i", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "Weight0_c", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "grp_infer_Pipeline_VITIS_LOOP_110_8_VITIS_LOOP_110_9_fu_198", "Port" : "Weight0_c", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "Bias0_c", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "grp_infer_Pipeline_VITIS_LOOP_34_13_fu_212", "Port" : "Bias0_c", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "73", "SubInstance" : "grp_infer_Pipeline_VITIS_LOOP_27_1_fu_238", "Port" : "table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array", "Inst_start_state" : "14", "Inst_end_state" : "15"},
					{"ID" : "86", "SubInstance" : "grp_infer_Pipeline_VITIS_LOOP_27_18_fu_285", "Port" : "table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array", "Inst_start_state" : "22", "Inst_end_state" : "23"}]},
			{"Name" : "table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "73", "SubInstance" : "grp_infer_Pipeline_VITIS_LOOP_27_1_fu_238", "Port" : "table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array", "Inst_start_state" : "14", "Inst_end_state" : "15"},
					{"ID" : "86", "SubInstance" : "grp_infer_Pipeline_VITIS_LOOP_27_18_fu_285", "Port" : "table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array", "Inst_start_state" : "22", "Inst_end_state" : "23"}]},
			{"Name" : "table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "73", "SubInstance" : "grp_infer_Pipeline_VITIS_LOOP_27_1_fu_238", "Port" : "table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array", "Inst_start_state" : "14", "Inst_end_state" : "15"},
					{"ID" : "86", "SubInstance" : "grp_infer_Pipeline_VITIS_LOOP_27_18_fu_285", "Port" : "table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array", "Inst_start_state" : "22", "Inst_end_state" : "23"}]},
			{"Name" : "Weight0_o", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "grp_infer_Pipeline_VITIS_LOOP_117_10_VITIS_LOOP_117_11_fu_219", "Port" : "Weight0_o", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "Bias0_o", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "grp_infer_Pipeline_VITIS_LOOP_34_14_fu_249", "Port" : "Bias0_o", "Inst_start_state" : "14", "Inst_end_state" : "15"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_63_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "25", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state25"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.vec_tmp_U", "Parent" : "26"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.vec_i_U", "Parent" : "26"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.grp_infer_Pipeline_VITIS_LOOP_90_2_fu_120", "Parent" : "26", "Child" : ["30"],
		"CDFG" : "infer_Pipeline_VITIS_LOOP_90_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "30", "EstimateLatencyMax" : "30",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "vec_i", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_90_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "30", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.grp_infer_Pipeline_VITIS_LOOP_90_2_fu_120.flow_control_loop_pipe_sequential_init_U", "Parent" : "29"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.grp_infer_Pipeline_10_fu_128", "Parent" : "26", "Child" : ["32"],
		"CDFG" : "infer_Pipeline_10",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "130", "EstimateLatencyMax" : "130",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gate_f", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "32", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.grp_infer_Pipeline_10_fu_128.flow_control_loop_pipe_sequential_init_U", "Parent" : "31"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.grp_infer_Pipeline_14_fu_134", "Parent" : "26", "Child" : ["34"],
		"CDFG" : "infer_Pipeline_14",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "130", "EstimateLatencyMax" : "130",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gate_i", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "34", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.grp_infer_Pipeline_14_fu_134.flow_control_loop_pipe_sequential_init_U", "Parent" : "33"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.grp_infer_Pipeline_18_fu_140", "Parent" : "26", "Child" : ["36"],
		"CDFG" : "infer_Pipeline_18",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "130", "EstimateLatencyMax" : "130",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "vec_tmp", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "36", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.grp_infer_Pipeline_18_fu_140.flow_control_loop_pipe_sequential_init_U", "Parent" : "35"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.grp_infer_Pipeline_22_fu_145", "Parent" : "26", "Child" : ["38"],
		"CDFG" : "infer_Pipeline_22",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "130", "EstimateLatencyMax" : "130",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gate_o", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "38", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.grp_infer_Pipeline_22_fu_145.flow_control_loop_pipe_sequential_init_U", "Parent" : "37"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.grp_infer_Pipeline_VITIS_LOOP_91_3_fu_151", "Parent" : "26", "Child" : ["40"],
		"CDFG" : "infer_Pipeline_VITIS_LOOP_91_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "130", "EstimateLatencyMax" : "130",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "h_t", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "vec_i", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_91_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "40", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.grp_infer_Pipeline_VITIS_LOOP_91_3_fu_151.flow_control_loop_pipe_sequential_init_U", "Parent" : "39"},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.grp_infer_Pipeline_VITIS_LOOP_96_4_VITIS_LOOP_96_5_fu_158", "Parent" : "26", "Child" : ["42", "43", "44"],
		"CDFG" : "infer_Pipeline_VITIS_LOOP_96_4_VITIS_LOOP_96_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "119817", "EstimateLatencyMax" : "119817",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "vec_i", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "gate_f", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "Weight0_f", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_96_4_VITIS_LOOP_96_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "42", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.grp_infer_Pipeline_VITIS_LOOP_96_4_VITIS_LOOP_96_5_fu_158.Weight0_f_U", "Parent" : "41"},
	{"ID" : "43", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.grp_infer_Pipeline_VITIS_LOOP_96_4_VITIS_LOOP_96_5_fu_158.mul_8ns_9ns_15_1_1_U18", "Parent" : "41"},
	{"ID" : "44", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.grp_infer_Pipeline_VITIS_LOOP_96_4_VITIS_LOOP_96_5_fu_158.flow_control_loop_pipe_sequential_init_U", "Parent" : "41"},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.grp_infer_Pipeline_VITIS_LOOP_34_1_fu_167", "Parent" : "26", "Child" : ["46", "47"],
		"CDFG" : "infer_Pipeline_VITIS_LOOP_34_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "136", "EstimateLatencyMax" : "136",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gate_f", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "Bias0_f", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_34_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter7", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter7", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "46", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.grp_infer_Pipeline_VITIS_LOOP_34_1_fu_167.Bias0_f_U", "Parent" : "45"},
	{"ID" : "47", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.grp_infer_Pipeline_VITIS_LOOP_34_1_fu_167.flow_control_loop_pipe_sequential_init_U", "Parent" : "45"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.grp_infer_Pipeline_VITIS_LOOP_103_6_VITIS_LOOP_103_7_fu_175", "Parent" : "26", "Child" : ["49", "50", "51"],
		"CDFG" : "infer_Pipeline_VITIS_LOOP_103_6_VITIS_LOOP_103_7",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "119817", "EstimateLatencyMax" : "119817",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "vec_i", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "gate_i", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "Weight0_i", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_103_6_VITIS_LOOP_103_7", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "49", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.grp_infer_Pipeline_VITIS_LOOP_103_6_VITIS_LOOP_103_7_fu_175.Weight0_i_U", "Parent" : "48"},
	{"ID" : "50", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.grp_infer_Pipeline_VITIS_LOOP_103_6_VITIS_LOOP_103_7_fu_175.mul_8ns_9ns_15_1_1_U33", "Parent" : "48"},
	{"ID" : "51", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.grp_infer_Pipeline_VITIS_LOOP_103_6_VITIS_LOOP_103_7_fu_175.flow_control_loop_pipe_sequential_init_U", "Parent" : "48"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.grp_infer_Pipeline_VITIS_LOOP_20_1_fu_184", "Parent" : "26", "Child" : ["53"],
		"CDFG" : "infer_Pipeline_VITIS_LOOP_20_1",
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
			{"Name" : "gate_f", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_20_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter33", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter33", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "53", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.grp_infer_Pipeline_VITIS_LOOP_20_1_fu_184.flow_control_loop_pipe_sequential_init_U", "Parent" : "52"},
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.grp_infer_Pipeline_VITIS_LOOP_34_11_fu_190", "Parent" : "26", "Child" : ["55", "56"],
		"CDFG" : "infer_Pipeline_VITIS_LOOP_34_11",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "136", "EstimateLatencyMax" : "136",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gate_i", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "Bias0_i", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_34_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter7", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter7", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "55", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.grp_infer_Pipeline_VITIS_LOOP_34_11_fu_190.Bias0_i_U", "Parent" : "54"},
	{"ID" : "56", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.grp_infer_Pipeline_VITIS_LOOP_34_11_fu_190.flow_control_loop_pipe_sequential_init_U", "Parent" : "54"},
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.grp_infer_Pipeline_VITIS_LOOP_110_8_VITIS_LOOP_110_9_fu_198", "Parent" : "26", "Child" : ["58", "59", "60"],
		"CDFG" : "infer_Pipeline_VITIS_LOOP_110_8_VITIS_LOOP_110_9",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "119817", "EstimateLatencyMax" : "119817",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "vec_i", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "vec_tmp", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "Weight0_c", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_110_8_VITIS_LOOP_110_9", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "58", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.grp_infer_Pipeline_VITIS_LOOP_110_8_VITIS_LOOP_110_9_fu_198.Weight0_c_U", "Parent" : "57"},
	{"ID" : "59", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.grp_infer_Pipeline_VITIS_LOOP_110_8_VITIS_LOOP_110_9_fu_198.mul_8ns_9ns_15_1_1_U47", "Parent" : "57"},
	{"ID" : "60", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.grp_infer_Pipeline_VITIS_LOOP_110_8_VITIS_LOOP_110_9_fu_198.flow_control_loop_pipe_sequential_init_U", "Parent" : "57"},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.grp_infer_Pipeline_VITIS_LOOP_20_12_fu_206", "Parent" : "26", "Child" : ["62"],
		"CDFG" : "infer_Pipeline_VITIS_LOOP_20_12",
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
			{"Name" : "gate_i", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_20_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter33", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter33", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "62", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.grp_infer_Pipeline_VITIS_LOOP_20_12_fu_206.flow_control_loop_pipe_sequential_init_U", "Parent" : "61"},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.grp_infer_Pipeline_VITIS_LOOP_34_13_fu_212", "Parent" : "26", "Child" : ["64", "65"],
		"CDFG" : "infer_Pipeline_VITIS_LOOP_34_13",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "136", "EstimateLatencyMax" : "136",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "vec_tmp", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "Bias0_c", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_34_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter7", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter7", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "64", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.grp_infer_Pipeline_VITIS_LOOP_34_13_fu_212.Bias0_c_U", "Parent" : "63"},
	{"ID" : "65", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.grp_infer_Pipeline_VITIS_LOOP_34_13_fu_212.flow_control_loop_pipe_sequential_init_U", "Parent" : "63"},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.grp_infer_Pipeline_VITIS_LOOP_117_10_VITIS_LOOP_117_11_fu_219", "Parent" : "26", "Child" : ["67", "68", "69"],
		"CDFG" : "infer_Pipeline_VITIS_LOOP_117_10_VITIS_LOOP_117_11",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "119817", "EstimateLatencyMax" : "119817",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "vec_i", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "gate_o", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "Weight0_o", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_117_10_VITIS_LOOP_117_11", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "67", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.grp_infer_Pipeline_VITIS_LOOP_117_10_VITIS_LOOP_117_11_fu_219.Weight0_o_U", "Parent" : "66"},
	{"ID" : "68", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.grp_infer_Pipeline_VITIS_LOOP_117_10_VITIS_LOOP_117_11_fu_219.mul_8ns_9ns_15_1_1_U91", "Parent" : "66"},
	{"ID" : "69", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.grp_infer_Pipeline_VITIS_LOOP_117_10_VITIS_LOOP_117_11_fu_219.flow_control_loop_pipe_sequential_init_U", "Parent" : "66"},
	{"ID" : "70", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.grp_infer_Pipeline_VITIS_LOOP_41_1_fu_228", "Parent" : "26", "Child" : ["71", "72"],
		"CDFG" : "infer_Pipeline_VITIS_LOOP_41_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "135", "EstimateLatencyMax" : "135",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gate_f", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "C_t", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "stat_C", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_41_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter6", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter6", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "71", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.grp_infer_Pipeline_VITIS_LOOP_41_1_fu_228.fmul_32ns_32ns_32_4_max_dsp_1_U102", "Parent" : "70"},
	{"ID" : "72", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.grp_infer_Pipeline_VITIS_LOOP_41_1_fu_228.flow_control_loop_pipe_sequential_init_U", "Parent" : "70"},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.grp_infer_Pipeline_VITIS_LOOP_27_1_fu_238", "Parent" : "26", "Child" : ["74"],
		"CDFG" : "infer_Pipeline_VITIS_LOOP_27_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "205", "EstimateLatencyMax" : "205",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "vec_tmp", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_27_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter76", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter76", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "74", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.grp_infer_Pipeline_VITIS_LOOP_27_1_fu_238.flow_control_loop_pipe_sequential_init_U", "Parent" : "73"},
	{"ID" : "75", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.grp_infer_Pipeline_VITIS_LOOP_34_14_fu_249", "Parent" : "26", "Child" : ["76", "77"],
		"CDFG" : "infer_Pipeline_VITIS_LOOP_34_14",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "136", "EstimateLatencyMax" : "136",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gate_o", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "Bias0_o", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_34_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter7", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter7", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "76", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.grp_infer_Pipeline_VITIS_LOOP_34_14_fu_249.Bias0_o_U", "Parent" : "75"},
	{"ID" : "77", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.grp_infer_Pipeline_VITIS_LOOP_34_14_fu_249.flow_control_loop_pipe_sequential_init_U", "Parent" : "75"},
	{"ID" : "78", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.grp_infer_Pipeline_VITIS_LOOP_20_15_fu_257", "Parent" : "26", "Child" : ["79"],
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
	{"ID" : "79", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.grp_infer_Pipeline_VITIS_LOOP_20_15_fu_257.flow_control_loop_pipe_sequential_init_U", "Parent" : "78"},
	{"ID" : "80", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.grp_infer_Pipeline_VITIS_LOOP_41_16_fu_263", "Parent" : "26", "Child" : ["81"],
		"CDFG" : "infer_Pipeline_VITIS_LOOP_41_16",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "135", "EstimateLatencyMax" : "135",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gate_i", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "vec_tmp", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_41_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter6", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter6", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "81", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.grp_infer_Pipeline_VITIS_LOOP_41_16_fu_263.flow_control_loop_pipe_sequential_init_U", "Parent" : "80"},
	{"ID" : "82", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.grp_infer_Pipeline_VITIS_LOOP_34_17_fu_270", "Parent" : "26", "Child" : ["83"],
		"CDFG" : "infer_Pipeline_VITIS_LOOP_34_17",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "136", "EstimateLatencyMax" : "136",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "vec_tmp", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "stat_C", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_34_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter7", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter7", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "83", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.grp_infer_Pipeline_VITIS_LOOP_34_17_fu_270.flow_control_loop_pipe_sequential_init_U", "Parent" : "82"},
	{"ID" : "84", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.grp_infer_Pipeline_29_fu_277", "Parent" : "26", "Child" : ["85"],
		"CDFG" : "infer_Pipeline_29",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "130", "EstimateLatencyMax" : "130",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "stat_C", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "C_t", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "85", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.grp_infer_Pipeline_29_fu_277.flow_control_loop_pipe_sequential_init_U", "Parent" : "84"},
	{"ID" : "86", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.grp_infer_Pipeline_VITIS_LOOP_27_18_fu_285", "Parent" : "26", "Child" : ["87"],
		"CDFG" : "infer_Pipeline_VITIS_LOOP_27_18",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "205", "EstimateLatencyMax" : "205",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "stat_C", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "vec_tmp", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_27_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter76", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter76", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "87", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.grp_infer_Pipeline_VITIS_LOOP_27_18_fu_285.flow_control_loop_pipe_sequential_init_U", "Parent" : "86"},
	{"ID" : "88", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.grp_infer_Pipeline_VITIS_LOOP_41_19_fu_298", "Parent" : "26", "Child" : ["89"],
		"CDFG" : "infer_Pipeline_VITIS_LOOP_41_19",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "135", "EstimateLatencyMax" : "135",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gate_o", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "vec_tmp", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "h_t", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_41_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter6", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter6", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "89", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.grp_infer_Pipeline_VITIS_LOOP_41_19_fu_298.flow_control_loop_pipe_sequential_init_U", "Parent" : "88"},
	{"ID" : "90", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.grp_generic_tanh_float_s_fu_398", "Parent" : "26", "Child" : ["91", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111"],
		"CDFG" : "generic_tanh_float_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "73", "EstimateLatencyMin" : "73", "EstimateLatencyMax" : "73",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "t_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "grp_exp_generic_double_s_fu_89", "Port" : "table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array"}]},
			{"Name" : "table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "grp_exp_generic_double_s_fu_89", "Port" : "table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array"}]},
			{"Name" : "table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "grp_exp_generic_double_s_fu_89", "Port" : "table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array"}]}]},
	{"ID" : "91", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.grp_generic_tanh_float_s_fu_398.grp_exp_generic_double_s_fu_89", "Parent" : "90", "Child" : ["92", "93", "94", "95", "96", "97", "98", "99", "100"],
		"CDFG" : "exp_generic_double_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "28", "EstimateLatencyMin" : "28", "EstimateLatencyMax" : "28",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "92", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.grp_generic_tanh_float_s_fu_398.grp_exp_generic_double_s_fu_89.table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array_U", "Parent" : "91"},
	{"ID" : "93", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.grp_generic_tanh_float_s_fu_398.grp_exp_generic_double_s_fu_89.table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_U", "Parent" : "91"},
	{"ID" : "94", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.grp_generic_tanh_float_s_fu_398.grp_exp_generic_double_s_fu_89.table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_U", "Parent" : "91"},
	{"ID" : "95", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.grp_generic_tanh_float_s_fu_398.grp_exp_generic_double_s_fu_89.mul_13s_71s_71_5_0_U54", "Parent" : "91"},
	{"ID" : "96", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.grp_generic_tanh_float_s_fu_398.grp_exp_generic_double_s_fu_89.mul_43ns_36ns_79_3_0_U55", "Parent" : "91"},
	{"ID" : "97", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.grp_generic_tanh_float_s_fu_398.grp_exp_generic_double_s_fu_89.mul_49ns_44ns_93_5_0_U56", "Parent" : "91"},
	{"ID" : "98", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.grp_generic_tanh_float_s_fu_398.grp_exp_generic_double_s_fu_89.mul_50ns_50ns_99_5_0_U57", "Parent" : "91"},
	{"ID" : "99", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.grp_generic_tanh_float_s_fu_398.grp_exp_generic_double_s_fu_89.sparsemux_9_3_64_1_0_U58", "Parent" : "91"},
	{"ID" : "100", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.grp_generic_tanh_float_s_fu_398.grp_exp_generic_double_s_fu_89.mac_muladd_16s_15ns_19s_31_4_0_U59", "Parent" : "91"},
	{"ID" : "101", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.grp_generic_tanh_float_s_fu_398.fadd_32ns_32ns_32_5_full_dsp_1_U70", "Parent" : "90"},
	{"ID" : "102", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.grp_generic_tanh_float_s_fu_398.fsub_32ns_32ns_32_5_full_dsp_1_U71", "Parent" : "90"},
	{"ID" : "103", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.grp_generic_tanh_float_s_fu_398.fadd_32ns_32ns_32_5_full_dsp_1_U72", "Parent" : "90"},
	{"ID" : "104", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.grp_generic_tanh_float_s_fu_398.fadd_32ns_32ns_32_5_full_dsp_1_U73", "Parent" : "90"},
	{"ID" : "105", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.grp_generic_tanh_float_s_fu_398.fsub_32ns_32ns_32_5_full_dsp_1_U74", "Parent" : "90"},
	{"ID" : "106", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.grp_generic_tanh_float_s_fu_398.fmul_32ns_32ns_32_4_max_dsp_1_U75", "Parent" : "90"},
	{"ID" : "107", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.grp_generic_tanh_float_s_fu_398.fdiv_32ns_32ns_32_16_no_dsp_1_U76", "Parent" : "90"},
	{"ID" : "108", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.grp_generic_tanh_float_s_fu_398.fptrunc_64ns_32_2_no_dsp_1_U77", "Parent" : "90"},
	{"ID" : "109", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.grp_generic_tanh_float_s_fu_398.fpext_32ns_64_2_no_dsp_1_U78", "Parent" : "90"},
	{"ID" : "110", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.grp_generic_tanh_float_s_fu_398.fcmp_32ns_32ns_1_2_no_dsp_1_U79", "Parent" : "90"},
	{"ID" : "111", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.grp_generic_tanh_float_s_fu_398.dadd_64ns_64ns_64_7_full_dsp_1_U80", "Parent" : "90"},
	{"ID" : "112", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.fadd_32ns_32ns_32_5_full_dsp_1_U122", "Parent" : "26"},
	{"ID" : "113", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.fexp_32ns_32ns_32_10_full_dsp_1_U124", "Parent" : "26"},
	{"ID" : "114", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Outline_VITIS_LOOP_63_1_fu_118.fadd_32ns_32ns_32_5_full_dsp_1_U125", "Parent" : "26"},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Pipeline_VITIS_LOOP_141_12_VITIS_LOOP_141_13_fu_152", "Parent" : "5", "Child" : ["116", "117"],
		"CDFG" : "infer_Pipeline_VITIS_LOOP_141_12_VITIS_LOOP_141_13",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7688", "EstimateLatencyMax" : "7688",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "h_t", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "res", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "Weight_lc", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_141_12_VITIS_LOOP_141_13", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "116", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Pipeline_VITIS_LOOP_141_12_VITIS_LOOP_141_13_fu_152.Weight_lc_U", "Parent" : "115"},
	{"ID" : "117", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Pipeline_VITIS_LOOP_141_12_VITIS_LOOP_141_13_fu_152.flow_control_loop_pipe_sequential_init_U", "Parent" : "115"},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Pipeline_VITIS_LOOP_34_110_fu_161", "Parent" : "5", "Child" : ["119", "120"],
		"CDFG" : "infer_Pipeline_VITIS_LOOP_34_110",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "res", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "Bias_lc", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_34_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter7", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter7", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "119", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Pipeline_VITIS_LOOP_34_110_fu_161.Bias_lc_U", "Parent" : "118"},
	{"ID" : "120", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.grp_infer_Pipeline_VITIS_LOOP_34_110_fu_161.flow_control_loop_pipe_sequential_init_U", "Parent" : "118"},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.fmul_32ns_32ns_32_4_max_dsp_1_U146", "Parent" : "5"},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_infer_fu_75.fadd_32ns_32ns_32_5_full_dsp_1_U147", "Parent" : "5"},
	{"ID" : "123", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_LSTM_Top_Pipeline_VITIS_LOOP_27_2_fu_107", "Parent" : "0", "Child" : ["124"],
		"CDFG" : "LSTM_Top_Pipeline_VITIS_LOOP_27_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "res", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "out_r", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out_r_TDATA_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_27_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_LSTM_Top_Pipeline_VITIS_LOOP_27_2_fu_107.flow_control_loop_pipe_sequential_init_U", "Parent" : "123"},
	{"ID" : "125", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fdiv_32ns_32ns_32_16_no_dsp_1_U157", "Parent" : "0"},
	{"ID" : "126", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_r_U", "Parent" : "0"},
	{"ID" : "127", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_r_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	LSTM_Top {
		in_r {Type I LastRead 1 FirstWrite -1}
		out_r {Type O LastRead -1 FirstWrite 1}
		Weight0_f {Type I LastRead -1 FirstWrite -1}
		Bias0_f {Type I LastRead -1 FirstWrite -1}
		Weight0_i {Type I LastRead -1 FirstWrite -1}
		Bias0_i {Type I LastRead -1 FirstWrite -1}
		Weight0_c {Type I LastRead -1 FirstWrite -1}
		Bias0_c {Type I LastRead -1 FirstWrite -1}
		table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array {Type I LastRead -1 FirstWrite -1}
		table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array {Type I LastRead -1 FirstWrite -1}
		table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array {Type I LastRead -1 FirstWrite -1}
		Weight0_o {Type I LastRead -1 FirstWrite -1}
		Bias0_o {Type I LastRead -1 FirstWrite -1}
		Weight_lc {Type I LastRead -1 FirstWrite -1}
		Bias_lc {Type I LastRead -1 FirstWrite -1}}
	LSTM_Top_Pipeline_VITIS_LOOP_13_1 {
		in_r {Type I LastRead 1 FirstWrite -1}
		img_dat {Type O LastRead -1 FirstWrite 17}}
	infer {
		input_r {Type I LastRead 0 FirstWrite -1}
		res {Type IO LastRead 0 FirstWrite 0}
		Weight0_f {Type I LastRead -1 FirstWrite -1}
		Bias0_f {Type I LastRead -1 FirstWrite -1}
		Weight0_i {Type I LastRead -1 FirstWrite -1}
		Bias0_i {Type I LastRead -1 FirstWrite -1}
		Weight0_c {Type I LastRead -1 FirstWrite -1}
		Bias0_c {Type I LastRead -1 FirstWrite -1}
		table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array {Type I LastRead -1 FirstWrite -1}
		table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array {Type I LastRead -1 FirstWrite -1}
		table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array {Type I LastRead -1 FirstWrite -1}
		Weight0_o {Type I LastRead -1 FirstWrite -1}
		Bias0_o {Type I LastRead -1 FirstWrite -1}
		Weight_lc {Type I LastRead -1 FirstWrite -1}
		Bias_lc {Type I LastRead -1 FirstWrite -1}}
	infer_Pipeline_1 {
		gate_f {Type O LastRead -1 FirstWrite 0}}
	infer_Pipeline_2 {
		gate_i {Type O LastRead -1 FirstWrite 0}}
	infer_Pipeline_3 {
		stat_C {Type O LastRead -1 FirstWrite 0}}
	infer_Pipeline_4 {
		C_t {Type O LastRead -1 FirstWrite 0}}
	infer_Pipeline_5 {
		gate_o {Type O LastRead -1 FirstWrite 0}}
	infer_Pipeline_6 {
		h_t {Type O LastRead -1 FirstWrite 0}}
	infer_Pipeline_32 {
		res {Type O LastRead -1 FirstWrite 0}}
	infer_Outline_VITIS_LOOP_63_1 {
		gate_o {Type IO LastRead 1 FirstWrite -1}
		h_t {Type IO LastRead 0 FirstWrite -1}
		stat_C {Type IO LastRead 0 FirstWrite -1}
		C_t {Type IO LastRead 0 FirstWrite -1}
		gate_i {Type IO LastRead 1 FirstWrite -1}
		gate_f {Type IO LastRead 1 FirstWrite -1}
		input_r {Type I LastRead 0 FirstWrite -1}
		Weight0_f {Type I LastRead -1 FirstWrite -1}
		Bias0_f {Type I LastRead -1 FirstWrite -1}
		Weight0_i {Type I LastRead -1 FirstWrite -1}
		Bias0_i {Type I LastRead -1 FirstWrite -1}
		Weight0_c {Type I LastRead -1 FirstWrite -1}
		Bias0_c {Type I LastRead -1 FirstWrite -1}
		table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array {Type I LastRead -1 FirstWrite -1}
		table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array {Type I LastRead -1 FirstWrite -1}
		table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array {Type I LastRead -1 FirstWrite -1}
		Weight0_o {Type I LastRead -1 FirstWrite -1}
		Bias0_o {Type I LastRead -1 FirstWrite -1}}
	infer_Pipeline_VITIS_LOOP_90_2 {
		empty {Type I LastRead 0 FirstWrite -1}
		input_r {Type I LastRead 0 FirstWrite -1}
		vec_i {Type O LastRead -1 FirstWrite 1}}
	infer_Pipeline_10 {
		gate_f {Type O LastRead -1 FirstWrite 0}}
	infer_Pipeline_14 {
		gate_i {Type O LastRead -1 FirstWrite 0}}
	infer_Pipeline_18 {
		vec_tmp {Type O LastRead -1 FirstWrite 0}}
	infer_Pipeline_22 {
		gate_o {Type O LastRead -1 FirstWrite 0}}
	infer_Pipeline_VITIS_LOOP_91_3 {
		h_t {Type I LastRead 0 FirstWrite -1}
		vec_i {Type O LastRead -1 FirstWrite 1}}
	infer_Pipeline_VITIS_LOOP_96_4_VITIS_LOOP_96_5 {
		vec_i {Type I LastRead 1 FirstWrite -1}
		gate_f {Type IO LastRead 1 FirstWrite 13}
		Weight0_f {Type I LastRead -1 FirstWrite -1}}
	infer_Pipeline_VITIS_LOOP_34_1 {
		gate_f {Type IO LastRead 0 FirstWrite 7}
		Bias0_f {Type I LastRead -1 FirstWrite -1}}
	infer_Pipeline_VITIS_LOOP_103_6_VITIS_LOOP_103_7 {
		vec_i {Type I LastRead 1 FirstWrite -1}
		gate_i {Type IO LastRead 1 FirstWrite 13}
		Weight0_i {Type I LastRead -1 FirstWrite -1}}
	infer_Pipeline_VITIS_LOOP_20_1 {
		gate_f {Type IO LastRead 0 FirstWrite 33}}
	infer_Pipeline_VITIS_LOOP_34_11 {
		gate_i {Type IO LastRead 0 FirstWrite 7}
		Bias0_i {Type I LastRead -1 FirstWrite -1}}
	infer_Pipeline_VITIS_LOOP_110_8_VITIS_LOOP_110_9 {
		vec_i {Type I LastRead 1 FirstWrite -1}
		vec_tmp {Type IO LastRead 1 FirstWrite 13}
		Weight0_c {Type I LastRead -1 FirstWrite -1}}
	infer_Pipeline_VITIS_LOOP_20_12 {
		gate_i {Type IO LastRead 0 FirstWrite 33}}
	infer_Pipeline_VITIS_LOOP_34_13 {
		vec_tmp {Type IO LastRead 0 FirstWrite 7}
		Bias0_c {Type I LastRead -1 FirstWrite -1}}
	infer_Pipeline_VITIS_LOOP_117_10_VITIS_LOOP_117_11 {
		vec_i {Type I LastRead 1 FirstWrite -1}
		gate_o {Type IO LastRead 1 FirstWrite 13}
		Weight0_o {Type I LastRead -1 FirstWrite -1}}
	infer_Pipeline_VITIS_LOOP_41_1 {
		gate_f {Type I LastRead 0 FirstWrite -1}
		C_t {Type I LastRead 0 FirstWrite -1}
		stat_C {Type O LastRead -1 FirstWrite 6}}
	infer_Pipeline_VITIS_LOOP_27_1 {
		vec_tmp {Type IO LastRead 0 FirstWrite 76}
		table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array {Type I LastRead -1 FirstWrite -1}
		table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array {Type I LastRead -1 FirstWrite -1}
		table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array {Type I LastRead -1 FirstWrite -1}}
	infer_Pipeline_VITIS_LOOP_34_14 {
		gate_o {Type IO LastRead 0 FirstWrite 7}
		Bias0_o {Type I LastRead -1 FirstWrite -1}}
	infer_Pipeline_VITIS_LOOP_20_15 {
		gate_o {Type IO LastRead 0 FirstWrite 33}}
	infer_Pipeline_VITIS_LOOP_41_16 {
		gate_i {Type I LastRead 0 FirstWrite -1}
		vec_tmp {Type IO LastRead 0 FirstWrite 6}}
	infer_Pipeline_VITIS_LOOP_34_17 {
		vec_tmp {Type I LastRead 0 FirstWrite -1}
		stat_C {Type IO LastRead 0 FirstWrite 7}}
	infer_Pipeline_29 {
		stat_C {Type I LastRead 0 FirstWrite -1}
		C_t {Type O LastRead -1 FirstWrite 1}}
	infer_Pipeline_VITIS_LOOP_27_18 {
		stat_C {Type I LastRead 0 FirstWrite -1}
		vec_tmp {Type O LastRead -1 FirstWrite 76}
		table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array {Type I LastRead -1 FirstWrite -1}
		table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array {Type I LastRead -1 FirstWrite -1}
		table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array {Type I LastRead -1 FirstWrite -1}}
	infer_Pipeline_VITIS_LOOP_41_19 {
		gate_o {Type I LastRead 0 FirstWrite -1}
		vec_tmp {Type I LastRead 0 FirstWrite -1}
		h_t {Type O LastRead -1 FirstWrite 6}}
	generic_tanh_float_s {
		t_in {Type I LastRead 0 FirstWrite -1}
		table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array {Type I LastRead -1 FirstWrite -1}
		table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array {Type I LastRead -1 FirstWrite -1}
		table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array {Type I LastRead -1 FirstWrite -1}}
	exp_generic_double_s {
		x {Type I LastRead 0 FirstWrite -1}
		table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array {Type I LastRead -1 FirstWrite -1}
		table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array {Type I LastRead -1 FirstWrite -1}
		table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array {Type I LastRead -1 FirstWrite -1}}
	infer_Pipeline_VITIS_LOOP_141_12_VITIS_LOOP_141_13 {
		h_t {Type I LastRead 1 FirstWrite -1}
		res {Type IO LastRead 0 FirstWrite 12}
		Weight_lc {Type I LastRead -1 FirstWrite -1}}
	infer_Pipeline_VITIS_LOOP_34_110 {
		res {Type IO LastRead 0 FirstWrite 7}
		Bias_lc {Type I LastRead -1 FirstWrite -1}}
	LSTM_Top_Pipeline_VITIS_LOOP_27_2 {
		res {Type I LastRead 0 FirstWrite -1}
		out_r {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "13463365", "Max" : "13463365"}
	, {"Name" : "Interval", "Min" : "13463366", "Max" : "13463366"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	in_r { axis {  { in_r_TDATA in_data 0 96 }  { in_r_TVALID in_vld 0 1 }  { in_r_TREADY in_acc 1 1 } } }
	out_r { axis {  { out_r_TDATA out_data 1 96 }  { out_r_TVALID out_vld 1 1 }  { out_r_TREADY out_acc 0 1 } } }
}

set maxi_interface_dict [dict create]

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
