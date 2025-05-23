// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="LSTM_Top,hls_ip_2019_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020-clg400-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=9.514000,HLS_SYN_LAT=27924967,HLS_SYN_TPT=none,HLS_SYN_MEM=289,HLS_SYN_DSP=76,HLS_SYN_FF=14071,HLS_SYN_LUT=21283,HLS_VERSION=2019_2}" *)

module LSTM_Top (
        ap_clk,
        ap_rst_n,
        in_r_TDATA,
        in_r_TVALID,
        in_r_TREADY,
        in_r_TKEEP,
        in_r_TSTRB,
        in_r_TUSER,
        in_r_TLAST,
        in_r_TID,
        in_r_TDEST,
        out_r_TDATA,
        out_r_TVALID,
        out_r_TREADY,
        out_r_TKEEP,
        out_r_TSTRB,
        out_r_TUSER,
        out_r_TLAST,
        out_r_TID,
        out_r_TDEST
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_state3 = 4'd4;
parameter    ap_ST_fsm_state4 = 4'd8;

input   ap_clk;
input   ap_rst_n;
input  [31:0] in_r_TDATA;
input   in_r_TVALID;
output   in_r_TREADY;
input  [3:0] in_r_TKEEP;
input  [3:0] in_r_TSTRB;
input  [0:0] in_r_TUSER;
input  [0:0] in_r_TLAST;
input  [0:0] in_r_TID;
input  [0:0] in_r_TDEST;
output  [31:0] out_r_TDATA;
output   out_r_TVALID;
input   out_r_TREADY;
output  [3:0] out_r_TKEEP;
output  [3:0] out_r_TSTRB;
output  [0:0] out_r_TUSER;
output  [0:0] out_r_TLAST;
output  [0:0] out_r_TID;
output  [0:0] out_r_TDEST;

reg in_r_TREADY;

 reg    ap_rst_n_inv;
wire    grp_mnist_lstm_fu_76_ap_start;
wire    grp_mnist_lstm_fu_76_ap_done;
wire    grp_mnist_lstm_fu_76_ap_idle;
wire    grp_mnist_lstm_fu_76_ap_ready;
wire    grp_mnist_lstm_fu_76_in_r_TREADY;
wire   [31:0] grp_mnist_lstm_fu_76_out_r_TDATA;
wire    grp_mnist_lstm_fu_76_out_r_TVALID;
wire    grp_mnist_lstm_fu_76_out_r_TREADY;
wire   [3:0] grp_mnist_lstm_fu_76_out_r_TKEEP;
wire   [3:0] grp_mnist_lstm_fu_76_out_r_TSTRB;
wire   [0:0] grp_mnist_lstm_fu_76_out_r_TUSER;
wire   [0:0] grp_mnist_lstm_fu_76_out_r_TLAST;
wire   [0:0] grp_mnist_lstm_fu_76_out_r_TID;
wire   [0:0] grp_mnist_lstm_fu_76_out_r_TDEST;
reg    grp_mnist_lstm_fu_76_ap_start_reg;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state3;
reg   [3:0] ap_NS_fsm;
wire    ap_CS_fsm_state4;
wire    regslice_both_out_data_V_U_apdone_blk;
wire    regslice_both_in_data_V_U_apdone_blk;
wire   [31:0] in_r_TDATA_int;
wire    in_r_TVALID_int;
reg    in_r_TREADY_int;
wire    regslice_both_in_data_V_U_ack_in;
wire    regslice_both_in_keep_V_U_apdone_blk;
wire   [3:0] in_r_TKEEP_int;
wire    regslice_both_in_keep_V_U_vld_out;
wire    regslice_both_in_keep_V_U_ack_in;
wire    regslice_both_in_strb_V_U_apdone_blk;
wire   [3:0] in_r_TSTRB_int;
wire    regslice_both_in_strb_V_U_vld_out;
wire    regslice_both_in_strb_V_U_ack_in;
wire    regslice_both_in_user_V_U_apdone_blk;
wire   [0:0] in_r_TUSER_int;
wire    regslice_both_in_user_V_U_vld_out;
wire    regslice_both_in_user_V_U_ack_in;
wire    regslice_both_in_last_V_U_apdone_blk;
wire   [0:0] in_r_TLAST_int;
wire    regslice_both_in_last_V_U_vld_out;
wire    regslice_both_in_last_V_U_ack_in;
wire    regslice_both_in_id_V_U_apdone_blk;
wire   [0:0] in_r_TID_int;
wire    regslice_both_in_id_V_U_vld_out;
wire    regslice_both_in_id_V_U_ack_in;
wire    regslice_both_in_dest_V_U_apdone_blk;
wire   [0:0] in_r_TDEST_int;
wire    regslice_both_in_dest_V_U_vld_out;
wire    regslice_both_in_dest_V_U_ack_in;
wire    out_r_TREADY_int;
wire    regslice_both_out_data_V_U_vld_out;
wire    regslice_both_out_keep_V_U_apdone_blk;
wire    regslice_both_out_keep_V_U_ack_in_dummy;
wire    regslice_both_out_keep_V_U_vld_out;
wire    regslice_both_out_strb_V_U_apdone_blk;
wire    regslice_both_out_strb_V_U_ack_in_dummy;
wire    regslice_both_out_strb_V_U_vld_out;
wire    regslice_both_out_user_V_U_apdone_blk;
wire    regslice_both_out_user_V_U_ack_in_dummy;
wire    regslice_both_out_user_V_U_vld_out;
wire    regslice_both_out_last_V_U_apdone_blk;
wire    regslice_both_out_last_V_U_ack_in_dummy;
wire    regslice_both_out_last_V_U_vld_out;
wire    regslice_both_out_id_V_U_apdone_blk;
wire    regslice_both_out_id_V_U_ack_in_dummy;
wire    regslice_both_out_id_V_U_vld_out;
wire    regslice_both_out_dest_V_U_apdone_blk;
wire    regslice_both_out_dest_V_U_ack_in_dummy;
wire    regslice_both_out_dest_V_U_vld_out;

// power-on initialization
initial begin
#0 grp_mnist_lstm_fu_76_ap_start_reg = 1'b0;
#0 ap_CS_fsm = 4'd1;
end

mnist_lstm grp_mnist_lstm_fu_76(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(grp_mnist_lstm_fu_76_ap_start),
    .ap_done(grp_mnist_lstm_fu_76_ap_done),
    .ap_idle(grp_mnist_lstm_fu_76_ap_idle),
    .ap_ready(grp_mnist_lstm_fu_76_ap_ready),
    .in_r_TDATA(in_r_TDATA_int),
    .in_r_TVALID(in_r_TVALID_int),
    .in_r_TREADY(grp_mnist_lstm_fu_76_in_r_TREADY),
    .in_r_TKEEP(in_r_TKEEP_int),
    .in_r_TSTRB(in_r_TSTRB_int),
    .in_r_TUSER(in_r_TUSER_int),
    .in_r_TLAST(in_r_TLAST_int),
    .in_r_TID(in_r_TID_int),
    .in_r_TDEST(in_r_TDEST_int),
    .out_r_TDATA(grp_mnist_lstm_fu_76_out_r_TDATA),
    .out_r_TVALID(grp_mnist_lstm_fu_76_out_r_TVALID),
    .out_r_TREADY(grp_mnist_lstm_fu_76_out_r_TREADY),
    .out_r_TKEEP(grp_mnist_lstm_fu_76_out_r_TKEEP),
    .out_r_TSTRB(grp_mnist_lstm_fu_76_out_r_TSTRB),
    .out_r_TUSER(grp_mnist_lstm_fu_76_out_r_TUSER),
    .out_r_TLAST(grp_mnist_lstm_fu_76_out_r_TLAST),
    .out_r_TID(grp_mnist_lstm_fu_76_out_r_TID),
    .out_r_TDEST(grp_mnist_lstm_fu_76_out_r_TDEST)
);

regslice_both #(
    .DataWidth( 32 ))
regslice_both_in_data_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(in_r_TDATA),
    .vld_in(in_r_TVALID),
    .ack_in(regslice_both_in_data_V_U_ack_in),
    .data_out(in_r_TDATA_int),
    .vld_out(in_r_TVALID_int),
    .ack_out(in_r_TREADY_int),
    .apdone_blk(regslice_both_in_data_V_U_apdone_blk)
);

regslice_both #(
    .DataWidth( 4 ))
regslice_both_in_keep_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(in_r_TKEEP),
    .vld_in(in_r_TVALID),
    .ack_in(regslice_both_in_keep_V_U_ack_in),
    .data_out(in_r_TKEEP_int),
    .vld_out(regslice_both_in_keep_V_U_vld_out),
    .ack_out(in_r_TREADY_int),
    .apdone_blk(regslice_both_in_keep_V_U_apdone_blk)
);

regslice_both #(
    .DataWidth( 4 ))
regslice_both_in_strb_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(in_r_TSTRB),
    .vld_in(in_r_TVALID),
    .ack_in(regslice_both_in_strb_V_U_ack_in),
    .data_out(in_r_TSTRB_int),
    .vld_out(regslice_both_in_strb_V_U_vld_out),
    .ack_out(in_r_TREADY_int),
    .apdone_blk(regslice_both_in_strb_V_U_apdone_blk)
);

regslice_both #(
    .DataWidth( 1 ))
regslice_both_in_user_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(in_r_TUSER),
    .vld_in(in_r_TVALID),
    .ack_in(regslice_both_in_user_V_U_ack_in),
    .data_out(in_r_TUSER_int),
    .vld_out(regslice_both_in_user_V_U_vld_out),
    .ack_out(in_r_TREADY_int),
    .apdone_blk(regslice_both_in_user_V_U_apdone_blk)
);

regslice_both #(
    .DataWidth( 1 ))
regslice_both_in_last_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(in_r_TLAST),
    .vld_in(in_r_TVALID),
    .ack_in(regslice_both_in_last_V_U_ack_in),
    .data_out(in_r_TLAST_int),
    .vld_out(regslice_both_in_last_V_U_vld_out),
    .ack_out(in_r_TREADY_int),
    .apdone_blk(regslice_both_in_last_V_U_apdone_blk)
);

regslice_both #(
    .DataWidth( 1 ))
regslice_both_in_id_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(in_r_TID),
    .vld_in(in_r_TVALID),
    .ack_in(regslice_both_in_id_V_U_ack_in),
    .data_out(in_r_TID_int),
    .vld_out(regslice_both_in_id_V_U_vld_out),
    .ack_out(in_r_TREADY_int),
    .apdone_blk(regslice_both_in_id_V_U_apdone_blk)
);

regslice_both #(
    .DataWidth( 1 ))
regslice_both_in_dest_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(in_r_TDEST),
    .vld_in(in_r_TVALID),
    .ack_in(regslice_both_in_dest_V_U_ack_in),
    .data_out(in_r_TDEST_int),
    .vld_out(regslice_both_in_dest_V_U_vld_out),
    .ack_out(in_r_TREADY_int),
    .apdone_blk(regslice_both_in_dest_V_U_apdone_blk)
);

regslice_both #(
    .DataWidth( 32 ))
regslice_both_out_data_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(grp_mnist_lstm_fu_76_out_r_TDATA),
    .vld_in(grp_mnist_lstm_fu_76_out_r_TVALID),
    .ack_in(out_r_TREADY_int),
    .data_out(out_r_TDATA),
    .vld_out(regslice_both_out_data_V_U_vld_out),
    .ack_out(out_r_TREADY),
    .apdone_blk(regslice_both_out_data_V_U_apdone_blk)
);

regslice_both #(
    .DataWidth( 4 ))
regslice_both_out_keep_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(grp_mnist_lstm_fu_76_out_r_TKEEP),
    .vld_in(grp_mnist_lstm_fu_76_out_r_TVALID),
    .ack_in(regslice_both_out_keep_V_U_ack_in_dummy),
    .data_out(out_r_TKEEP),
    .vld_out(regslice_both_out_keep_V_U_vld_out),
    .ack_out(out_r_TREADY),
    .apdone_blk(regslice_both_out_keep_V_U_apdone_blk)
);

regslice_both #(
    .DataWidth( 4 ))
regslice_both_out_strb_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(grp_mnist_lstm_fu_76_out_r_TSTRB),
    .vld_in(grp_mnist_lstm_fu_76_out_r_TVALID),
    .ack_in(regslice_both_out_strb_V_U_ack_in_dummy),
    .data_out(out_r_TSTRB),
    .vld_out(regslice_both_out_strb_V_U_vld_out),
    .ack_out(out_r_TREADY),
    .apdone_blk(regslice_both_out_strb_V_U_apdone_blk)
);

regslice_both #(
    .DataWidth( 1 ))
regslice_both_out_user_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(grp_mnist_lstm_fu_76_out_r_TUSER),
    .vld_in(grp_mnist_lstm_fu_76_out_r_TVALID),
    .ack_in(regslice_both_out_user_V_U_ack_in_dummy),
    .data_out(out_r_TUSER),
    .vld_out(regslice_both_out_user_V_U_vld_out),
    .ack_out(out_r_TREADY),
    .apdone_blk(regslice_both_out_user_V_U_apdone_blk)
);

regslice_both #(
    .DataWidth( 1 ))
regslice_both_out_last_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(grp_mnist_lstm_fu_76_out_r_TLAST),
    .vld_in(grp_mnist_lstm_fu_76_out_r_TVALID),
    .ack_in(regslice_both_out_last_V_U_ack_in_dummy),
    .data_out(out_r_TLAST),
    .vld_out(regslice_both_out_last_V_U_vld_out),
    .ack_out(out_r_TREADY),
    .apdone_blk(regslice_both_out_last_V_U_apdone_blk)
);

regslice_both #(
    .DataWidth( 1 ))
regslice_both_out_id_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(grp_mnist_lstm_fu_76_out_r_TID),
    .vld_in(grp_mnist_lstm_fu_76_out_r_TVALID),
    .ack_in(regslice_both_out_id_V_U_ack_in_dummy),
    .data_out(out_r_TID),
    .vld_out(regslice_both_out_id_V_U_vld_out),
    .ack_out(out_r_TREADY),
    .apdone_blk(regslice_both_out_id_V_U_apdone_blk)
);

regslice_both #(
    .DataWidth( 1 ))
regslice_both_out_dest_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(grp_mnist_lstm_fu_76_out_r_TDEST),
    .vld_in(grp_mnist_lstm_fu_76_out_r_TVALID),
    .ack_in(regslice_both_out_dest_V_U_ack_in_dummy),
    .data_out(out_r_TDEST),
    .vld_out(regslice_both_out_dest_V_U_vld_out),
    .ack_out(out_r_TREADY),
    .apdone_blk(regslice_both_out_dest_V_U_apdone_blk)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        grp_mnist_lstm_fu_76_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state2)) begin
            grp_mnist_lstm_fu_76_ap_start_reg <= 1'b1;
        end else if ((grp_mnist_lstm_fu_76_ap_ready == 1'b1)) begin
            grp_mnist_lstm_fu_76_ap_start_reg <= 1'b0;
        end
    end
end

always @ (*) begin
    if (((regslice_both_in_data_V_U_ack_in == 1'b1) & (in_r_TVALID == 1'b1))) begin
        in_r_TREADY = 1'b1;
    end else begin
        in_r_TREADY = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        in_r_TREADY_int = grp_mnist_lstm_fu_76_in_r_TREADY;
    end else begin
        in_r_TREADY_int = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            if (((grp_mnist_lstm_fu_76_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((regslice_both_out_data_V_U_apdone_blk == 1'b0) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign grp_mnist_lstm_fu_76_ap_start = grp_mnist_lstm_fu_76_ap_start_reg;

assign grp_mnist_lstm_fu_76_out_r_TREADY = (out_r_TREADY_int & ap_CS_fsm_state3);

assign out_r_TVALID = regslice_both_out_data_V_U_vld_out;

endmodule //LSTM_Top
