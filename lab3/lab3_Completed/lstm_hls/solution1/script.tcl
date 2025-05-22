############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
## Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
############################################################
open_project lstm_hls
set_top LSTM_Top
add_files lstm_hls/rnn.cpp
add_files lstm_hls/rnn.h
add_files lstm_hls/rnn_top.cpp
add_files lstm_hls/utils.h
add_files lstm_hls/weight.h
add_files -tb lstm_hls/main.cpp
open_solution "solution1" -flow_target vivado
set_part {xc7z020-clg400-1}
create_clock -period 10 -name default
config_export -format ip_catalog -rtl verilog
config_cosim -tool xsim
source "./lstm_hls/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog
