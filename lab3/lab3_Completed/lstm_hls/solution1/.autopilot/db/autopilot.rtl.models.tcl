set SynModuleInfo {
  {SRCNAME LSTM_Top_Pipeline_VITIS_LOOP_13_1 MODELNAME LSTM_Top_Pipeline_VITIS_LOOP_13_1 RTLNAME LSTM_Top_LSTM_Top_Pipeline_VITIS_LOOP_13_1
    SUBMODULES {
      {MODELNAME LSTM_Top_flow_control_loop_pipe_sequential_init RTLNAME LSTM_Top_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME LSTM_Top_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME infer_Pipeline_1 MODELNAME infer_Pipeline_1 RTLNAME LSTM_Top_infer_Pipeline_1}
  {SRCNAME infer_Pipeline_2 MODELNAME infer_Pipeline_2 RTLNAME LSTM_Top_infer_Pipeline_2}
  {SRCNAME infer_Pipeline_3 MODELNAME infer_Pipeline_3 RTLNAME LSTM_Top_infer_Pipeline_3}
  {SRCNAME infer_Pipeline_4 MODELNAME infer_Pipeline_4 RTLNAME LSTM_Top_infer_Pipeline_4}
  {SRCNAME infer_Pipeline_5 MODELNAME infer_Pipeline_5 RTLNAME LSTM_Top_infer_Pipeline_5}
  {SRCNAME infer_Pipeline_6 MODELNAME infer_Pipeline_6 RTLNAME LSTM_Top_infer_Pipeline_6}
  {SRCNAME infer_Pipeline_VITIS_LOOP_90_2 MODELNAME infer_Pipeline_VITIS_LOOP_90_2 RTLNAME LSTM_Top_infer_Pipeline_VITIS_LOOP_90_2}
  {SRCNAME infer_Pipeline_VITIS_LOOP_91_3 MODELNAME infer_Pipeline_VITIS_LOOP_91_3 RTLNAME LSTM_Top_infer_Pipeline_VITIS_LOOP_91_3}
  {SRCNAME infer_Pipeline_10 MODELNAME infer_Pipeline_10 RTLNAME LSTM_Top_infer_Pipeline_10}
  {SRCNAME infer_Pipeline_VITIS_LOOP_96_4_VITIS_LOOP_96_5 MODELNAME infer_Pipeline_VITIS_LOOP_96_4_VITIS_LOOP_96_5 RTLNAME LSTM_Top_infer_Pipeline_VITIS_LOOP_96_4_VITIS_LOOP_96_5
    SUBMODULES {
      {MODELNAME LSTM_Top_mul_8ns_9ns_15_1_1 RTLNAME LSTM_Top_mul_8ns_9ns_15_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME LSTM_Top_infer_Pipeline_VITIS_LOOP_96_4_VITIS_LOOP_96_5_Weight0_f_ROM_AUTO_1R RTLNAME LSTM_Top_infer_Pipeline_VITIS_LOOP_96_4_VITIS_LOOP_96_5_Weight0_f_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME infer_Pipeline_VITIS_LOOP_34_1 MODELNAME infer_Pipeline_VITIS_LOOP_34_1 RTLNAME LSTM_Top_infer_Pipeline_VITIS_LOOP_34_1
    SUBMODULES {
      {MODELNAME LSTM_Top_infer_Pipeline_VITIS_LOOP_34_1_Bias0_f_ROM_AUTO_1R RTLNAME LSTM_Top_infer_Pipeline_VITIS_LOOP_34_1_Bias0_f_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME infer_Pipeline_VITIS_LOOP_20_1 MODELNAME infer_Pipeline_VITIS_LOOP_20_1 RTLNAME LSTM_Top_infer_Pipeline_VITIS_LOOP_20_1}
  {SRCNAME infer_Pipeline_14 MODELNAME infer_Pipeline_14 RTLNAME LSTM_Top_infer_Pipeline_14}
  {SRCNAME infer_Pipeline_VITIS_LOOP_103_6_VITIS_LOOP_103_7 MODELNAME infer_Pipeline_VITIS_LOOP_103_6_VITIS_LOOP_103_7 RTLNAME LSTM_Top_infer_Pipeline_VITIS_LOOP_103_6_VITIS_LOOP_103_7
    SUBMODULES {
      {MODELNAME LSTM_Top_infer_Pipeline_VITIS_LOOP_103_6_VITIS_LOOP_103_7_Weight0_i_ROM_AUTO_1R RTLNAME LSTM_Top_infer_Pipeline_VITIS_LOOP_103_6_VITIS_LOOP_103_7_Weight0_i_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME infer_Pipeline_VITIS_LOOP_34_11 MODELNAME infer_Pipeline_VITIS_LOOP_34_11 RTLNAME LSTM_Top_infer_Pipeline_VITIS_LOOP_34_11
    SUBMODULES {
      {MODELNAME LSTM_Top_infer_Pipeline_VITIS_LOOP_34_11_Bias0_i_ROM_AUTO_1R RTLNAME LSTM_Top_infer_Pipeline_VITIS_LOOP_34_11_Bias0_i_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME infer_Pipeline_VITIS_LOOP_20_12 MODELNAME infer_Pipeline_VITIS_LOOP_20_12 RTLNAME LSTM_Top_infer_Pipeline_VITIS_LOOP_20_12}
  {SRCNAME infer_Pipeline_18 MODELNAME infer_Pipeline_18 RTLNAME LSTM_Top_infer_Pipeline_18}
  {SRCNAME infer_Pipeline_VITIS_LOOP_110_8_VITIS_LOOP_110_9 MODELNAME infer_Pipeline_VITIS_LOOP_110_8_VITIS_LOOP_110_9 RTLNAME LSTM_Top_infer_Pipeline_VITIS_LOOP_110_8_VITIS_LOOP_110_9
    SUBMODULES {
      {MODELNAME LSTM_Top_infer_Pipeline_VITIS_LOOP_110_8_VITIS_LOOP_110_9_Weight0_c_ROM_AUTO_1R RTLNAME LSTM_Top_infer_Pipeline_VITIS_LOOP_110_8_VITIS_LOOP_110_9_Weight0_c_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME infer_Pipeline_VITIS_LOOP_34_13 MODELNAME infer_Pipeline_VITIS_LOOP_34_13 RTLNAME LSTM_Top_infer_Pipeline_VITIS_LOOP_34_13
    SUBMODULES {
      {MODELNAME LSTM_Top_infer_Pipeline_VITIS_LOOP_34_13_Bias0_c_ROM_AUTO_1R RTLNAME LSTM_Top_infer_Pipeline_VITIS_LOOP_34_13_Bias0_c_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME exp_generic<double> MODELNAME exp_generic_double_s RTLNAME LSTM_Top_exp_generic_double_s
    SUBMODULES {
      {MODELNAME LSTM_Top_mul_13s_71s_71_5_0 RTLNAME LSTM_Top_mul_13s_71s_71_5_0 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME LSTM_Top_mul_43ns_36ns_79_3_0 RTLNAME LSTM_Top_mul_43ns_36ns_79_3_0 BINDTYPE op TYPE mul IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME LSTM_Top_mul_49ns_44ns_93_5_0 RTLNAME LSTM_Top_mul_49ns_44ns_93_5_0 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME LSTM_Top_mul_50ns_50ns_99_5_0 RTLNAME LSTM_Top_mul_50ns_50ns_99_5_0 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME LSTM_Top_sparsemux_9_3_64_1_0 RTLNAME LSTM_Top_sparsemux_9_3_64_1_0 BINDTYPE op TYPE sparsemux IMPL onehotencoding_realdef}
      {MODELNAME LSTM_Top_mac_muladd_16s_15ns_19s_31_4_0 RTLNAME LSTM_Top_mac_muladd_16s_15ns_19s_31_4_0 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME LSTM_Top_exp_generic_double_s_table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_arbkb RTLNAME LSTM_Top_exp_generic_double_s_table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_arbkb BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME LSTM_Top_exp_generic_double_s_table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_arracud RTLNAME LSTM_Top_exp_generic_double_s_table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_arracud BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME LSTM_Top_exp_generic_double_s_table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_arradEe RTLNAME LSTM_Top_exp_generic_double_s_table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_arradEe BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME generic_tanh<float> MODELNAME generic_tanh_float_s RTLNAME LSTM_Top_generic_tanh_float_s
    SUBMODULES {
      {MODELNAME LSTM_Top_fsub_32ns_32ns_32_5_full_dsp_1 RTLNAME LSTM_Top_fsub_32ns_32ns_32_5_full_dsp_1 BINDTYPE op TYPE fsub IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME LSTM_Top_fptrunc_64ns_32_2_no_dsp_1 RTLNAME LSTM_Top_fptrunc_64ns_32_2_no_dsp_1 BINDTYPE op TYPE fptrunc IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME LSTM_Top_fpext_32ns_64_2_no_dsp_1 RTLNAME LSTM_Top_fpext_32ns_64_2_no_dsp_1 BINDTYPE op TYPE fpext IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME LSTM_Top_fcmp_32ns_32ns_1_2_no_dsp_1 RTLNAME LSTM_Top_fcmp_32ns_32ns_1_2_no_dsp_1 BINDTYPE op TYPE fcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME LSTM_Top_dadd_64ns_64ns_64_7_full_dsp_1 RTLNAME LSTM_Top_dadd_64ns_64ns_64_7_full_dsp_1 BINDTYPE op TYPE dadd IMPL fulldsp LATENCY 6 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME infer_Pipeline_VITIS_LOOP_27_1 MODELNAME infer_Pipeline_VITIS_LOOP_27_1 RTLNAME LSTM_Top_infer_Pipeline_VITIS_LOOP_27_1}
  {SRCNAME infer_Pipeline_22 MODELNAME infer_Pipeline_22 RTLNAME LSTM_Top_infer_Pipeline_22}
  {SRCNAME infer_Pipeline_VITIS_LOOP_117_10_VITIS_LOOP_117_11 MODELNAME infer_Pipeline_VITIS_LOOP_117_10_VITIS_LOOP_117_11 RTLNAME LSTM_Top_infer_Pipeline_VITIS_LOOP_117_10_VITIS_LOOP_117_11
    SUBMODULES {
      {MODELNAME LSTM_Top_infer_Pipeline_VITIS_LOOP_117_10_VITIS_LOOP_117_11_Weight0_o_ROM_AUTO_1R RTLNAME LSTM_Top_infer_Pipeline_VITIS_LOOP_117_10_VITIS_LOOP_117_11_Weight0_o_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME infer_Pipeline_VITIS_LOOP_34_14 MODELNAME infer_Pipeline_VITIS_LOOP_34_14 RTLNAME LSTM_Top_infer_Pipeline_VITIS_LOOP_34_14
    SUBMODULES {
      {MODELNAME LSTM_Top_infer_Pipeline_VITIS_LOOP_34_14_Bias0_o_ROM_AUTO_1R RTLNAME LSTM_Top_infer_Pipeline_VITIS_LOOP_34_14_Bias0_o_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME infer_Pipeline_VITIS_LOOP_20_15 MODELNAME infer_Pipeline_VITIS_LOOP_20_15 RTLNAME LSTM_Top_infer_Pipeline_VITIS_LOOP_20_15}
  {SRCNAME infer_Pipeline_VITIS_LOOP_41_1 MODELNAME infer_Pipeline_VITIS_LOOP_41_1 RTLNAME LSTM_Top_infer_Pipeline_VITIS_LOOP_41_1}
  {SRCNAME infer_Pipeline_VITIS_LOOP_41_16 MODELNAME infer_Pipeline_VITIS_LOOP_41_16 RTLNAME LSTM_Top_infer_Pipeline_VITIS_LOOP_41_16}
  {SRCNAME infer_Pipeline_VITIS_LOOP_34_17 MODELNAME infer_Pipeline_VITIS_LOOP_34_17 RTLNAME LSTM_Top_infer_Pipeline_VITIS_LOOP_34_17}
  {SRCNAME infer_Pipeline_29 MODELNAME infer_Pipeline_29 RTLNAME LSTM_Top_infer_Pipeline_29}
  {SRCNAME infer_Pipeline_VITIS_LOOP_27_18 MODELNAME infer_Pipeline_VITIS_LOOP_27_18 RTLNAME LSTM_Top_infer_Pipeline_VITIS_LOOP_27_18}
  {SRCNAME infer_Pipeline_VITIS_LOOP_41_19 MODELNAME infer_Pipeline_VITIS_LOOP_41_19 RTLNAME LSTM_Top_infer_Pipeline_VITIS_LOOP_41_19}
  {SRCNAME infer_Outline_VITIS_LOOP_63_1 MODELNAME infer_Outline_VITIS_LOOP_63_1 RTLNAME LSTM_Top_infer_Outline_VITIS_LOOP_63_1
    SUBMODULES {
      {MODELNAME LSTM_Top_fadd_32ns_32ns_32_5_full_dsp_1 RTLNAME LSTM_Top_fadd_32ns_32ns_32_5_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME LSTM_Top_fexp_32ns_32ns_32_10_full_dsp_1 RTLNAME LSTM_Top_fexp_32ns_32ns_32_10_full_dsp_1 BINDTYPE op TYPE fexp IMPL fulldsp LATENCY 9 ALLOW_PRAGMA 1}
      {MODELNAME LSTM_Top_infer_Outline_VITIS_LOOP_63_1_vec_tmp_RAM_AUTO_1R1W RTLNAME LSTM_Top_infer_Outline_VITIS_LOOP_63_1_vec_tmp_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME LSTM_Top_infer_Outline_VITIS_LOOP_63_1_vec_i_RAM_AUTO_1R1W RTLNAME LSTM_Top_infer_Outline_VITIS_LOOP_63_1_vec_i_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME infer_Pipeline_32 MODELNAME infer_Pipeline_32 RTLNAME LSTM_Top_infer_Pipeline_32}
  {SRCNAME infer_Pipeline_VITIS_LOOP_141_12_VITIS_LOOP_141_13 MODELNAME infer_Pipeline_VITIS_LOOP_141_12_VITIS_LOOP_141_13 RTLNAME LSTM_Top_infer_Pipeline_VITIS_LOOP_141_12_VITIS_LOOP_141_13
    SUBMODULES {
      {MODELNAME LSTM_Top_infer_Pipeline_VITIS_LOOP_141_12_VITIS_LOOP_141_13_Weight_lc_ROM_AUTO_1R RTLNAME LSTM_Top_infer_Pipeline_VITIS_LOOP_141_12_VITIS_LOOP_141_13_Weight_lc_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME infer_Pipeline_VITIS_LOOP_34_110 MODELNAME infer_Pipeline_VITIS_LOOP_34_110 RTLNAME LSTM_Top_infer_Pipeline_VITIS_LOOP_34_110
    SUBMODULES {
      {MODELNAME LSTM_Top_infer_Pipeline_VITIS_LOOP_34_110_Bias_lc_ROM_AUTO_1R RTLNAME LSTM_Top_infer_Pipeline_VITIS_LOOP_34_110_Bias_lc_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME infer MODELNAME infer RTLNAME LSTM_Top_infer
    SUBMODULES {
      {MODELNAME LSTM_Top_fmul_32ns_32ns_32_4_max_dsp_1 RTLNAME LSTM_Top_fmul_32ns_32ns_32_4_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME LSTM_Top_infer_gate_f_RAM_AUTO_1R1W RTLNAME LSTM_Top_infer_gate_f_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME LSTM_Top_infer_C_t_RAM_AUTO_1R1W RTLNAME LSTM_Top_infer_C_t_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME LSTM_Top_Pipeline_VITIS_LOOP_27_2 MODELNAME LSTM_Top_Pipeline_VITIS_LOOP_27_2 RTLNAME LSTM_Top_LSTM_Top_Pipeline_VITIS_LOOP_27_2}
  {SRCNAME LSTM_Top MODELNAME LSTM_Top RTLNAME LSTM_Top IS_TOP 1
    SUBMODULES {
      {MODELNAME LSTM_Top_fdiv_32ns_32ns_32_16_no_dsp_1 RTLNAME LSTM_Top_fdiv_32ns_32ns_32_16_no_dsp_1 BINDTYPE op TYPE fdiv IMPL fabric LATENCY 15 ALLOW_PRAGMA 1}
      {MODELNAME LSTM_Top_img_dat_RAM_AUTO_1R1W RTLNAME LSTM_Top_img_dat_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME LSTM_Top_res_RAM_AUTO_1R1W RTLNAME LSTM_Top_res_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME LSTM_Top_regslice_both RTLNAME LSTM_Top_regslice_both BINDTYPE interface TYPE adapter IMPL reg_slice}
    }
  }
}
