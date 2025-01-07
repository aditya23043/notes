// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Sun May 26 11:23:53 2019
// Host        : archlinux running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fft_8point_0_stub.v
// Design      : fft_8point_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "fft_8point,Vivado 2019.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(FFT_input_M_real_ce0, FFT_input_M_real_ce1, 
  FFT_input_M_imag_ce0, FFT_input_M_imag_ce1, FFT_output_M_real_ce0, 
  FFT_output_M_real_we0, FFT_output_M_real_ce1, FFT_output_M_real_we1, 
  FFT_output_M_imag_ce0, FFT_output_M_imag_we0, FFT_output_M_imag_ce1, 
  FFT_output_M_imag_we1, ap_clk, ap_rst, ap_start, ap_done, ap_idle, ap_ready, 
  FFT_input_M_real_address0, FFT_input_M_real_q0, FFT_input_M_real_address1, 
  FFT_input_M_real_q1, FFT_input_M_imag_address0, FFT_input_M_imag_q0, 
  FFT_input_M_imag_address1, FFT_input_M_imag_q1, FFT_output_M_real_address0, 
  FFT_output_M_real_d0, FFT_output_M_real_address1, FFT_output_M_real_d1, 
  FFT_output_M_imag_address0, FFT_output_M_imag_d0, FFT_output_M_imag_address1, 
  FFT_output_M_imag_d1)
/* synthesis syn_black_box black_box_pad_pin="FFT_input_M_real_ce0,FFT_input_M_real_ce1,FFT_input_M_imag_ce0,FFT_input_M_imag_ce1,FFT_output_M_real_ce0,FFT_output_M_real_we0,FFT_output_M_real_ce1,FFT_output_M_real_we1,FFT_output_M_imag_ce0,FFT_output_M_imag_we0,FFT_output_M_imag_ce1,FFT_output_M_imag_we1,ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,FFT_input_M_real_address0[2:0],FFT_input_M_real_q0[31:0],FFT_input_M_real_address1[2:0],FFT_input_M_real_q1[31:0],FFT_input_M_imag_address0[2:0],FFT_input_M_imag_q0[31:0],FFT_input_M_imag_address1[2:0],FFT_input_M_imag_q1[31:0],FFT_output_M_real_address0[2:0],FFT_output_M_real_d0[31:0],FFT_output_M_real_address1[2:0],FFT_output_M_real_d1[31:0],FFT_output_M_imag_address0[2:0],FFT_output_M_imag_d0[31:0],FFT_output_M_imag_address1[2:0],FFT_output_M_imag_d1[31:0]" */;
  output FFT_input_M_real_ce0;
  output FFT_input_M_real_ce1;
  output FFT_input_M_imag_ce0;
  output FFT_input_M_imag_ce1;
  output FFT_output_M_real_ce0;
  output FFT_output_M_real_we0;
  output FFT_output_M_real_ce1;
  output FFT_output_M_real_we1;
  output FFT_output_M_imag_ce0;
  output FFT_output_M_imag_we0;
  output FFT_output_M_imag_ce1;
  output FFT_output_M_imag_we1;
  input ap_clk;
  input ap_rst;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  output [2:0]FFT_input_M_real_address0;
  input [31:0]FFT_input_M_real_q0;
  output [2:0]FFT_input_M_real_address1;
  input [31:0]FFT_input_M_real_q1;
  output [2:0]FFT_input_M_imag_address0;
  input [31:0]FFT_input_M_imag_q0;
  output [2:0]FFT_input_M_imag_address1;
  input [31:0]FFT_input_M_imag_q1;
  output [2:0]FFT_output_M_real_address0;
  output [31:0]FFT_output_M_real_d0;
  output [2:0]FFT_output_M_real_address1;
  output [31:0]FFT_output_M_real_d1;
  output [2:0]FFT_output_M_imag_address0;
  output [31:0]FFT_output_M_imag_d0;
  output [2:0]FFT_output_M_imag_address1;
  output [31:0]FFT_output_M_imag_d1;
endmodule
