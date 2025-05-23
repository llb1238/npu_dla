// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _mnist_lstm_HH_
#define _mnist_lstm_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "infer.h"
#include "LSTM_Top_fdiv_32nrcU.h"
#include "mnist_lstm_img_dat.h"
#include "mnist_lstm_res.h"

namespace ap_rtl {

struct mnist_lstm : public sc_module {
    // Port declarations 24
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<32> > in_r_TDATA;
    sc_in< sc_logic > in_r_TVALID;
    sc_out< sc_logic > in_r_TREADY;
    sc_in< sc_lv<4> > in_r_TKEEP;
    sc_in< sc_lv<4> > in_r_TSTRB;
    sc_in< sc_lv<1> > in_r_TUSER;
    sc_in< sc_lv<1> > in_r_TLAST;
    sc_in< sc_lv<1> > in_r_TID;
    sc_in< sc_lv<1> > in_r_TDEST;
    sc_out< sc_lv<32> > out_r_TDATA;
    sc_out< sc_logic > out_r_TVALID;
    sc_in< sc_logic > out_r_TREADY;
    sc_out< sc_lv<4> > out_r_TKEEP;
    sc_out< sc_lv<4> > out_r_TSTRB;
    sc_out< sc_lv<1> > out_r_TUSER;
    sc_out< sc_lv<1> > out_r_TLAST;
    sc_out< sc_lv<1> > out_r_TID;
    sc_out< sc_lv<1> > out_r_TDEST;
    sc_signal< sc_lv<32> > ap_var_for_const0;


    // Module declarations
    mnist_lstm(sc_module_name name);
    SC_HAS_PROCESS(mnist_lstm);

    ~mnist_lstm();

    sc_trace_file* mVcdFile;

    mnist_lstm_img_dat* img_dat_U;
    mnist_lstm_res* res_U;
    infer* grp_infer_fu_215;
    LSTM_Top_fdiv_32nrcU<1,16,32,32,32>* LSTM_Top_fdiv_32nrcU_U64;
    sc_signal< sc_lv<6> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > in_r_TDATA_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<1> > icmp_ln10_fu_252_p2;
    sc_signal< sc_logic > out_r_TDATA_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_pp1_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter1;
    sc_signal< bool > ap_block_pp1_stage0;
    sc_signal< sc_lv<1> > icmp_ln23_reg_325;
    sc_signal< sc_lv<10> > i_0_reg_192;
    sc_signal< sc_lv<10> > i_0_reg_192_pp0_iter1_reg;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter2;
    sc_signal< bool > ap_block_state5_pp0_stage0_iter3;
    sc_signal< bool > ap_block_state6_pp0_stage0_iter4;
    sc_signal< bool > ap_block_state7_pp0_stage0_iter5;
    sc_signal< bool > ap_block_state8_pp0_stage0_iter6;
    sc_signal< bool > ap_block_state9_pp0_stage0_iter7;
    sc_signal< bool > ap_block_state10_pp0_stage0_iter8;
    sc_signal< bool > ap_block_state11_pp0_stage0_iter9;
    sc_signal< bool > ap_block_state12_pp0_stage0_iter10;
    sc_signal< bool > ap_block_state13_pp0_stage0_iter11;
    sc_signal< bool > ap_block_state14_pp0_stage0_iter12;
    sc_signal< bool > ap_block_state15_pp0_stage0_iter13;
    sc_signal< bool > ap_block_state16_pp0_stage0_iter14;
    sc_signal< bool > ap_block_state17_pp0_stage0_iter15;
    sc_signal< bool > ap_block_state18_pp0_stage0_iter16;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<10> > i_0_reg_192_pp0_iter2_reg;
    sc_signal< sc_lv<10> > i_0_reg_192_pp0_iter3_reg;
    sc_signal< sc_lv<10> > i_0_reg_192_pp0_iter4_reg;
    sc_signal< sc_lv<10> > i_0_reg_192_pp0_iter5_reg;
    sc_signal< sc_lv<10> > i_0_reg_192_pp0_iter6_reg;
    sc_signal< sc_lv<10> > i_0_reg_192_pp0_iter7_reg;
    sc_signal< sc_lv<10> > i_0_reg_192_pp0_iter8_reg;
    sc_signal< sc_lv<10> > i_0_reg_192_pp0_iter9_reg;
    sc_signal< sc_lv<10> > i_0_reg_192_pp0_iter10_reg;
    sc_signal< sc_lv<10> > i_0_reg_192_pp0_iter11_reg;
    sc_signal< sc_lv<10> > i_0_reg_192_pp0_iter12_reg;
    sc_signal< sc_lv<10> > i_0_reg_192_pp0_iter13_reg;
    sc_signal< sc_lv<10> > i_0_reg_192_pp0_iter14_reg;
    sc_signal< sc_lv<10> > i_0_reg_192_pp0_iter15_reg;
    sc_signal< sc_lv<4> > i1_0_reg_204;
    sc_signal< sc_lv<1> > icmp_ln10_reg_306;
    sc_signal< sc_lv<1> > icmp_ln10_reg_306_pp0_iter1_reg;
    sc_signal< sc_lv<1> > icmp_ln10_reg_306_pp0_iter2_reg;
    sc_signal< sc_lv<1> > icmp_ln10_reg_306_pp0_iter3_reg;
    sc_signal< sc_lv<1> > icmp_ln10_reg_306_pp0_iter4_reg;
    sc_signal< sc_lv<1> > icmp_ln10_reg_306_pp0_iter5_reg;
    sc_signal< sc_lv<1> > icmp_ln10_reg_306_pp0_iter6_reg;
    sc_signal< sc_lv<1> > icmp_ln10_reg_306_pp0_iter7_reg;
    sc_signal< sc_lv<1> > icmp_ln10_reg_306_pp0_iter8_reg;
    sc_signal< sc_lv<1> > icmp_ln10_reg_306_pp0_iter9_reg;
    sc_signal< sc_lv<1> > icmp_ln10_reg_306_pp0_iter10_reg;
    sc_signal< sc_lv<1> > icmp_ln10_reg_306_pp0_iter11_reg;
    sc_signal< sc_lv<1> > icmp_ln10_reg_306_pp0_iter12_reg;
    sc_signal< sc_lv<1> > icmp_ln10_reg_306_pp0_iter13_reg;
    sc_signal< sc_lv<1> > icmp_ln10_reg_306_pp0_iter14_reg;
    sc_signal< sc_lv<1> > icmp_ln10_reg_306_pp0_iter15_reg;
    sc_signal< sc_lv<10> > i_fu_258_p2;
    sc_signal< sc_lv<10> > i_reg_310;
    sc_signal< sc_lv<32> > grp_fu_247_p2;
    sc_signal< sc_lv<32> > tmp_reg_320;
    sc_signal< sc_lv<1> > icmp_ln23_fu_278_p2;
    sc_signal< bool > ap_block_state21_pp1_stage0_iter0;
    sc_signal< bool > ap_block_state22_pp1_stage0_iter1;
    sc_signal< bool > ap_block_state22_io;
    sc_signal< bool > ap_block_pp1_stage0_11001;
    sc_signal< sc_lv<4> > i_1_fu_284_p2;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter0;
    sc_signal< sc_lv<1> > icmp_ln26_fu_295_p2;
    sc_signal< sc_lv<1> > icmp_ln26_reg_339;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter3;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter4;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter5;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter6;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter7;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter8;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter9;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter10;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter11;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter12;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter13;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter14;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter15;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter16;
    sc_signal< sc_logic > ap_CS_fsm_state20;
    sc_signal< sc_logic > grp_infer_fu_215_ap_ready;
    sc_signal< sc_logic > grp_infer_fu_215_ap_done;
    sc_signal< bool > ap_block_pp1_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp1_exit_iter0_state21;
    sc_signal< sc_lv<10> > img_dat_address0;
    sc_signal< sc_logic > img_dat_ce0;
    sc_signal< sc_logic > img_dat_we0;
    sc_signal< sc_lv<32> > img_dat_q0;
    sc_signal< sc_lv<4> > res_address0;
    sc_signal< sc_logic > res_ce0;
    sc_signal< sc_logic > res_we0;
    sc_signal< sc_lv<32> > res_q0;
    sc_signal< sc_logic > grp_infer_fu_215_ap_start;
    sc_signal< sc_logic > grp_infer_fu_215_ap_idle;
    sc_signal< sc_lv<10> > grp_infer_fu_215_input_r_address0;
    sc_signal< sc_logic > grp_infer_fu_215_input_r_ce0;
    sc_signal< sc_lv<4> > grp_infer_fu_215_res_address0;
    sc_signal< sc_logic > grp_infer_fu_215_res_ce0;
    sc_signal< sc_logic > grp_infer_fu_215_res_we0;
    sc_signal< sc_lv<32> > grp_infer_fu_215_res_d0;
    sc_signal< sc_lv<10> > ap_phi_mux_i_0_phi_fu_196_p4;
    sc_signal< sc_logic > grp_infer_fu_215_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state19;
    sc_signal< sc_lv<64> > zext_ln13_fu_273_p1;
    sc_signal< sc_lv<64> > zext_ln26_fu_290_p1;
    sc_signal< bool > ap_block_pp1_stage0_01001;
    sc_signal< sc_lv<32> > grp_fu_247_p0;
    sc_signal< sc_logic > grp_fu_247_ce;
    sc_signal< sc_logic > ap_CS_fsm_state23;
    sc_signal< sc_lv<6> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    sc_signal< sc_logic > ap_idle_pp1;
    sc_signal< sc_logic > ap_enable_pp1;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<6> ap_ST_fsm_state1;
    static const sc_lv<6> ap_ST_fsm_pp0_stage0;
    static const sc_lv<6> ap_ST_fsm_state19;
    static const sc_lv<6> ap_ST_fsm_state20;
    static const sc_lv<6> ap_ST_fsm_pp1_stage0;
    static const sc_lv<6> ap_ST_fsm_state23;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<10> ap_const_lv10_0;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<4> ap_const_lv4_F;
    static const sc_lv<32> ap_const_lv32_437F0000;
    static const sc_lv<10> ap_const_lv10_310;
    static const sc_lv<10> ap_const_lv10_1;
    static const sc_lv<4> ap_const_lv4_A;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<4> ap_const_lv4_9;
    static const sc_lv<32> ap_const_lv32_5;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_pp1_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state19();
    void thread_ap_CS_fsm_state20();
    void thread_ap_CS_fsm_state23();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_pp1_stage0();
    void thread_ap_block_pp1_stage0_01001();
    void thread_ap_block_pp1_stage0_11001();
    void thread_ap_block_pp1_stage0_subdone();
    void thread_ap_block_state10_pp0_stage0_iter8();
    void thread_ap_block_state11_pp0_stage0_iter9();
    void thread_ap_block_state12_pp0_stage0_iter10();
    void thread_ap_block_state13_pp0_stage0_iter11();
    void thread_ap_block_state14_pp0_stage0_iter12();
    void thread_ap_block_state15_pp0_stage0_iter13();
    void thread_ap_block_state16_pp0_stage0_iter14();
    void thread_ap_block_state17_pp0_stage0_iter15();
    void thread_ap_block_state18_pp0_stage0_iter16();
    void thread_ap_block_state21_pp1_stage0_iter0();
    void thread_ap_block_state22_io();
    void thread_ap_block_state22_pp1_stage0_iter1();
    void thread_ap_block_state2_pp0_stage0_iter0();
    void thread_ap_block_state3_pp0_stage0_iter1();
    void thread_ap_block_state4_pp0_stage0_iter2();
    void thread_ap_block_state5_pp0_stage0_iter3();
    void thread_ap_block_state6_pp0_stage0_iter4();
    void thread_ap_block_state7_pp0_stage0_iter5();
    void thread_ap_block_state8_pp0_stage0_iter6();
    void thread_ap_block_state9_pp0_stage0_iter7();
    void thread_ap_condition_pp0_exit_iter0_state2();
    void thread_ap_condition_pp1_exit_iter0_state21();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_enable_pp1();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_idle_pp1();
    void thread_ap_phi_mux_i_0_phi_fu_196_p4();
    void thread_ap_ready();
    void thread_grp_fu_247_ce();
    void thread_grp_fu_247_p0();
    void thread_grp_infer_fu_215_ap_start();
    void thread_i_1_fu_284_p2();
    void thread_i_fu_258_p2();
    void thread_icmp_ln10_fu_252_p2();
    void thread_icmp_ln23_fu_278_p2();
    void thread_icmp_ln26_fu_295_p2();
    void thread_img_dat_address0();
    void thread_img_dat_ce0();
    void thread_img_dat_we0();
    void thread_in_r_TDATA_blk_n();
    void thread_in_r_TREADY();
    void thread_out_r_TDATA();
    void thread_out_r_TDATA_blk_n();
    void thread_out_r_TDEST();
    void thread_out_r_TID();
    void thread_out_r_TKEEP();
    void thread_out_r_TLAST();
    void thread_out_r_TSTRB();
    void thread_out_r_TUSER();
    void thread_out_r_TVALID();
    void thread_res_address0();
    void thread_res_ce0();
    void thread_res_we0();
    void thread_zext_ln13_fu_273_p1();
    void thread_zext_ln26_fu_290_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
