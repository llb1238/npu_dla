// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Bias_lc_H__
#define __infer_Bias_lc_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Bias_lc_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 32;
  static const unsigned AddressRange = 10;
  static const unsigned AddressWidth = 4;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(infer_Bias_lc_ram) {
        ram[0] = "0b10111101100100111001100100100010";
        ram[1] = "0b00111110010000001000000101100101";
        ram[2] = "0b00111100100100110011011111010110";
        ram[3] = "0b10111100111001011111101100111100";
        ram[4] = "0b10111100111001010111000000001100";
        ram[5] = "0b10111101100101010111100011100111";
        ram[6] = "0b10111110001001001010110010100011";
        ram[7] = "0b00111101111001011101110000001010";
        ram[8] = "0b10111101101010111011110000001111";
        ram[9] = "0b00111101100111100100000011001110";


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();
   }


void prc_write_0()
{
    if (ce0.read() == sc_dt::Log_1) 
    {
            if(address0.read().is_01() && address0.read().to_uint()<AddressRange)
              q0 = ram[address0.read().to_uint()];
            else
              q0 = sc_lv<DataWidth>();
    }
}


}; //endmodule


SC_MODULE(infer_Bias_lc) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 10;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Bias_lc_ram* meminst;


SC_CTOR(infer_Bias_lc) {
meminst = new infer_Bias_lc_ram("infer_Bias_lc_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~infer_Bias_lc() {
    delete meminst;
}


};//endmodule
#endif
