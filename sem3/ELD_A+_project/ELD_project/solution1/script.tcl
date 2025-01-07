############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project ELD_project
set_top FFT
add_files ELD_project/solution1/fft.cpp
add_files -tb ELD_project/solution1/fft_tb.cpp
open_solution "solution1"
set_part {xc7z020-clg484-1} -tool vivado
create_clock -period 10 -name default
config_sdx -optimization_level none -target none
config_export -vivado_optimization_level 2
set_clock_uncertainty 12.5%
#source "./ELD_project/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
