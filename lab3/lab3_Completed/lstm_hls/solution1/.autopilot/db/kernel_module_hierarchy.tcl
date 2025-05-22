set ModuleHierarchy {[{
"Name" : "LSTM_Top","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_LSTM_Top_Pipeline_VITIS_LOOP_13_1_fu_68","ID" : "1","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_13_1","ID" : "2","Type" : "pipeline"},]},
	{"Name" : "grp_infer_fu_75","ID" : "3","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_infer_Pipeline_1_fu_76","ID" : "4","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "Loop 1","ID" : "5","Type" : "pipeline"},]},
		{"Name" : "grp_infer_Pipeline_2_fu_82","ID" : "6","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "Loop 1","ID" : "7","Type" : "pipeline"},]},
		{"Name" : "grp_infer_Pipeline_3_fu_88","ID" : "8","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "Loop 1","ID" : "9","Type" : "pipeline"},]},
		{"Name" : "grp_infer_Pipeline_4_fu_94","ID" : "10","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "Loop 1","ID" : "11","Type" : "pipeline"},]},
		{"Name" : "grp_infer_Pipeline_5_fu_100","ID" : "12","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "Loop 1","ID" : "13","Type" : "pipeline"},]},
		{"Name" : "grp_infer_Pipeline_6_fu_106","ID" : "14","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "Loop 1","ID" : "15","Type" : "pipeline"},]},
		{"Name" : "grp_infer_Pipeline_32_fu_112","ID" : "16","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "Loop 1","ID" : "17","Type" : "pipeline"},]},
		{"Name" : "grp_infer_Outline_VITIS_LOOP_63_1_fu_118","ID" : "18","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_63_1","ID" : "19","Type" : "no",
			"SubInsts" : [
			{"Name" : "grp_infer_Pipeline_VITIS_LOOP_90_2_fu_120","ID" : "20","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_90_2","ID" : "21","Type" : "pipeline"},]},
			{"Name" : "grp_infer_Pipeline_10_fu_128","ID" : "22","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "Loop 1","ID" : "23","Type" : "pipeline"},]},
			{"Name" : "grp_infer_Pipeline_14_fu_134","ID" : "24","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "Loop 1","ID" : "25","Type" : "pipeline"},]},
			{"Name" : "grp_infer_Pipeline_18_fu_140","ID" : "26","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "Loop 1","ID" : "27","Type" : "pipeline"},]},
			{"Name" : "grp_infer_Pipeline_22_fu_145","ID" : "28","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "Loop 1","ID" : "29","Type" : "pipeline"},]},
			{"Name" : "grp_infer_Pipeline_VITIS_LOOP_91_3_fu_151","ID" : "30","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_91_3","ID" : "31","Type" : "pipeline"},]},
			{"Name" : "grp_infer_Pipeline_VITIS_LOOP_96_4_VITIS_LOOP_96_5_fu_158","ID" : "32","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_96_4_VITIS_LOOP_96_5","ID" : "33","Type" : "pipeline"},]},
			{"Name" : "grp_infer_Pipeline_VITIS_LOOP_34_1_fu_167","ID" : "34","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_34_1","ID" : "35","Type" : "pipeline"},]},
			{"Name" : "grp_infer_Pipeline_VITIS_LOOP_103_6_VITIS_LOOP_103_7_fu_175","ID" : "36","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_103_6_VITIS_LOOP_103_7","ID" : "37","Type" : "pipeline"},]},
			{"Name" : "grp_infer_Pipeline_VITIS_LOOP_20_1_fu_184","ID" : "38","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_20_1","ID" : "39","Type" : "pipeline"},]},
			{"Name" : "grp_infer_Pipeline_VITIS_LOOP_34_11_fu_190","ID" : "40","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_34_1","ID" : "41","Type" : "pipeline"},]},
			{"Name" : "grp_infer_Pipeline_VITIS_LOOP_110_8_VITIS_LOOP_110_9_fu_198","ID" : "42","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_110_8_VITIS_LOOP_110_9","ID" : "43","Type" : "pipeline"},]},
			{"Name" : "grp_infer_Pipeline_VITIS_LOOP_20_12_fu_206","ID" : "44","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_20_1","ID" : "45","Type" : "pipeline"},]},
			{"Name" : "grp_infer_Pipeline_VITIS_LOOP_34_13_fu_212","ID" : "46","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_34_1","ID" : "47","Type" : "pipeline"},]},
			{"Name" : "grp_infer_Pipeline_VITIS_LOOP_117_10_VITIS_LOOP_117_11_fu_219","ID" : "48","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_117_10_VITIS_LOOP_117_11","ID" : "49","Type" : "pipeline"},]},
			{"Name" : "grp_infer_Pipeline_VITIS_LOOP_41_1_fu_228","ID" : "50","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_41_1","ID" : "51","Type" : "pipeline"},]},
			{"Name" : "grp_infer_Pipeline_VITIS_LOOP_27_1_fu_238","ID" : "52","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_27_1","ID" : "53","Type" : "pipeline",
					"SubInsts" : [
					{"Name" : "generic_tanh_float_s","ID" : "54","Type" : "pipeline",
							"SubInsts" : [
							{"Name" : "grp_exp_generic_double_s_fu_89","ID" : "55","Type" : "pipeline"},]},]},]},
			{"Name" : "grp_infer_Pipeline_VITIS_LOOP_34_14_fu_249","ID" : "56","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_34_1","ID" : "57","Type" : "pipeline"},]},
			{"Name" : "grp_infer_Pipeline_VITIS_LOOP_20_15_fu_257","ID" : "58","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_20_1","ID" : "59","Type" : "pipeline"},]},
			{"Name" : "grp_infer_Pipeline_VITIS_LOOP_41_16_fu_263","ID" : "60","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_41_1","ID" : "61","Type" : "pipeline"},]},
			{"Name" : "grp_infer_Pipeline_VITIS_LOOP_34_17_fu_270","ID" : "62","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_34_1","ID" : "63","Type" : "pipeline"},]},
			{"Name" : "grp_infer_Pipeline_29_fu_277","ID" : "64","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "Loop 1","ID" : "65","Type" : "pipeline"},]},
			{"Name" : "grp_infer_Pipeline_VITIS_LOOP_27_18_fu_285","ID" : "66","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_27_1","ID" : "67","Type" : "pipeline",
					"SubInsts" : [
					{"Name" : "generic_tanh_float_s","ID" : "68","Type" : "pipeline",
							"SubInsts" : [
							{"Name" : "grp_exp_generic_double_s_fu_89","ID" : "69","Type" : "pipeline"},]},]},]},
			{"Name" : "grp_infer_Pipeline_VITIS_LOOP_41_19_fu_298","ID" : "70","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_41_1","ID" : "71","Type" : "pipeline"},]},]},]},
		{"Name" : "grp_infer_Pipeline_VITIS_LOOP_141_12_VITIS_LOOP_141_13_fu_152","ID" : "72","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_141_12_VITIS_LOOP_141_13","ID" : "73","Type" : "pipeline"},]},
		{"Name" : "grp_infer_Pipeline_VITIS_LOOP_34_110_fu_161","ID" : "74","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_34_1","ID" : "75","Type" : "pipeline"},]},]},
	{"Name" : "grp_LSTM_Top_Pipeline_VITIS_LOOP_27_2_fu_107","ID" : "76","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_27_2","ID" : "77","Type" : "pipeline"},]},]
}]}