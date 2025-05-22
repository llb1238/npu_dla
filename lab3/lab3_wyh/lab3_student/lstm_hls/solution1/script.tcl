############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project lstm_hls
set_top LSTM_Top
add_files lstm_hls/rnn.cpp
add_files lstm_hls/rnn.h
add_files lstm_hls/rnn_top.cpp
add_files lstm_hls/utils.h
add_files lstm_hls/weight.h
add_files -tb lstm_hls/main.cpp
open_solution "solution1"
set_part {xc7z020clg400-1}
create_clock -period 10 -name default
config_export -format ip_catalog -rtl verilog
#source "./lstm_hls/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog -version "2025.5.22"
