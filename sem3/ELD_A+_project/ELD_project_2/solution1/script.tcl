############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project ELD_project_2
set_top fft_8point
add_files ELD_project_2/solution1/fft.cpp
add_files ELD_project_2/solution1/fft.h
add_files -tb ELD_project_2/solution1/fft_tb.cpp
open_solution "solution1"
set_part {xc7z020clg484-1} -tool vivado
create_clock -period 10 -name default
config_export -format ip_catalog -rtl verilog
set_clock_uncertainty 1.25
#source "./ELD_project_2/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog
