// ==============================================================
// File generated on Fri Dec 06 22:34:57 +0800 2019
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================

`timescale 1ns/1ps

module Pool_fcmp_32ns_32eOg
#(parameter
    ID         = 4,
    NUM_STAGE  = 1,
    din0_WIDTH = 32,
    din1_WIDTH = 32,
    dout_WIDTH = 1
)(
    input  wire [din0_WIDTH-1:0] din0,
    input  wire [din1_WIDTH-1:0] din1,
    input  wire [4:0]            opcode,
    output wire [dout_WIDTH-1:0] dout
);
//------------------------Parameter----------------------
// AutoESL opcode
localparam [4:0]
    AP_OEQ = 5'b00001,
    AP_OGT = 5'b00010,
    AP_OGE = 5'b00011,
    AP_OLT = 5'b00100,
    AP_OLE = 5'b00101,
    AP_ONE = 5'b00110,
    AP_UNO = 5'b01000;
// FPV6 opcode
localparam [7:0]
    OP_EQ = 8'b00010100,
    OP_GT = 8'b00100100,
    OP_GE = 8'b00110100,
    OP_LT = 8'b00001100,
    OP_LE = 8'b00011100,
    OP_NE = 8'b00101100,
    OP_UO = 8'b00000100;
//------------------------Local signal-------------------
wire        a_tvalid;
wire [31:0] a_tdata;
wire        b_tvalid;
wire [31:0] b_tdata;
wire        op_tvalid;
reg  [7:0]  op_tdata;
wire        r_tvalid;
wire [7:0]  r_tdata;
//------------------------Instantiation------------------
Pool_ap_fcmp_0_no_dsp_32 Pool_ap_fcmp_0_no_dsp_32_u (
    .s_axis_a_tvalid         ( a_tvalid ),
    .s_axis_a_tdata          ( a_tdata ),
    .s_axis_b_tvalid         ( b_tvalid ),
    .s_axis_b_tdata          ( b_tdata ),
    .s_axis_operation_tvalid ( op_tvalid ),
    .s_axis_operation_tdata  ( op_tdata ),
    .m_axis_result_tvalid    ( r_tvalid ),
    .m_axis_result_tdata     ( r_tdata )
);
//------------------------Body---------------------------
assign a_tvalid  = 1'b1;
assign a_tdata   = din0;
assign b_tvalid  = 1'b1;
assign b_tdata   = din1;
assign op_tvalid = 1'b1;
assign dout      = r_tdata[0];

always @(*) begin
    case (opcode)
        AP_OEQ  : op_tdata = OP_EQ;
        AP_OGT  : op_tdata = OP_GT;
        AP_OGE  : op_tdata = OP_GE;
        AP_OLT  : op_tdata = OP_LT;
        AP_OLE  : op_tdata = OP_LE;
        AP_ONE  : op_tdata = OP_NE;
        AP_UNO  : op_tdata = OP_UO;
        default : op_tdata = OP_EQ;
    endcase
end

endmodule
