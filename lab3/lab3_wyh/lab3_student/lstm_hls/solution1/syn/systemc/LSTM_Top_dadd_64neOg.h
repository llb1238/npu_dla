// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __LSTM_Top_dadd_64neOg__HH__
#define __LSTM_Top_dadd_64neOg__HH__
#include "ACMP_dadd.h"
#include <systemc>

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int dout_WIDTH>
SC_MODULE(LSTM_Top_dadd_64neOg) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    ACMP_dadd<ID, 5, din0_WIDTH, din1_WIDTH, dout_WIDTH> ACMP_dadd_U;

    SC_CTOR(LSTM_Top_dadd_64neOg):  ACMP_dadd_U ("ACMP_dadd_U") {
        ACMP_dadd_U.clk(clk);
        ACMP_dadd_U.reset(reset);
        ACMP_dadd_U.ce(ce);
        ACMP_dadd_U.din0(din0);
        ACMP_dadd_U.din1(din1);
        ACMP_dadd_U.dout(dout);

    }

};

#endif //
