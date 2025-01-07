// (c) Copyright 1995-2019 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:hls:fft_8point:1.0
// IP Revision: 1905261114

(* X_CORE_INFO = "fft_8point,Vivado 2019.1" *)
(* CHECK_LICENSE_TYPE = "fft_8point_0,fft_8point,{}" *)
(* CORE_GENERATION_INFO = "fft_8point_0,fft_8point,{x_ipProduct=Vivado 2019.1,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=fft_8point,x_ipVersion=1.0,x_ipCoreRevision=1905261114,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* IP_DEFINITION_SOURCE = "HLS" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module fft_8point_0 (
  FFT_input_M_real_ce0,
  FFT_input_M_real_ce1,
  FFT_input_M_imag_ce0,
  FFT_input_M_imag_ce1,
  FFT_output_M_real_ce0,
  FFT_output_M_real_we0,
  FFT_output_M_real_ce1,
  FFT_output_M_real_we1,
  FFT_output_M_imag_ce0,
  FFT_output_M_imag_we0,
  FFT_output_M_imag_ce1,
  FFT_output_M_imag_we1,
  ap_clk,
  ap_rst,
  ap_start,
  ap_done,
  ap_idle,
  ap_ready,
  FFT_input_M_real_address0,
  FFT_input_M_real_q0,
  FFT_input_M_real_address1,
  FFT_input_M_real_q1,
  FFT_input_M_imag_address0,
  FFT_input_M_imag_q0,
  FFT_input_M_imag_address1,
  FFT_input_M_imag_q1,
  FFT_output_M_real_address0,
  FFT_output_M_real_d0,
  FFT_output_M_real_address1,
  FFT_output_M_real_d1,
  FFT_output_M_imag_address0,
  FFT_output_M_imag_d0,
  FFT_output_M_imag_address1,
  FFT_output_M_imag_d1
);

output wire FFT_input_M_real_ce0;
output wire FFT_input_M_real_ce1;
output wire FFT_input_M_imag_ce0;
output wire FFT_input_M_imag_ce1;
output wire FFT_output_M_real_ce0;
output wire FFT_output_M_real_we0;
output wire FFT_output_M_real_ce1;
output wire FFT_output_M_real_we1;
output wire FFT_output_M_imag_ce0;
output wire FFT_output_M_imag_we0;
output wire FFT_output_M_imag_ce1;
output wire FFT_output_M_imag_we1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
input wire ap_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst RST" *)
input wire ap_rst;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start" *)
input wire ap_start;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done" *)
output wire ap_done;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle" *)
output wire ap_idle;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready" *)
output wire ap_ready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FFT_input_M_real_address0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 FFT_input_M_real_address0 DATA" *)
output wire [2 : 0] FFT_input_M_real_address0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FFT_input_M_real_q0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 FFT_input_M_real_q0 DATA" *)
input wire [31 : 0] FFT_input_M_real_q0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FFT_input_M_real_address1, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 FFT_input_M_real_address1 DATA" *)
output wire [2 : 0] FFT_input_M_real_address1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FFT_input_M_real_q1, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 FFT_input_M_real_q1 DATA" *)
input wire [31 : 0] FFT_input_M_real_q1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FFT_input_M_imag_address0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 FFT_input_M_imag_address0 DATA" *)
output wire [2 : 0] FFT_input_M_imag_address0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FFT_input_M_imag_q0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 FFT_input_M_imag_q0 DATA" *)
input wire [31 : 0] FFT_input_M_imag_q0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FFT_input_M_imag_address1, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 FFT_input_M_imag_address1 DATA" *)
output wire [2 : 0] FFT_input_M_imag_address1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FFT_input_M_imag_q1, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 FFT_input_M_imag_q1 DATA" *)
input wire [31 : 0] FFT_input_M_imag_q1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FFT_output_M_real_address0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 FFT_output_M_real_address0 DATA" *)
output wire [2 : 0] FFT_output_M_real_address0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FFT_output_M_real_d0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 FFT_output_M_real_d0 DATA" *)
output wire [31 : 0] FFT_output_M_real_d0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FFT_output_M_real_address1, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 FFT_output_M_real_address1 DATA" *)
output wire [2 : 0] FFT_output_M_real_address1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FFT_output_M_real_d1, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 FFT_output_M_real_d1 DATA" *)
output wire [31 : 0] FFT_output_M_real_d1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FFT_output_M_imag_address0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 FFT_output_M_imag_address0 DATA" *)
output wire [2 : 0] FFT_output_M_imag_address0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FFT_output_M_imag_d0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 FFT_output_M_imag_d0 DATA" *)
output wire [31 : 0] FFT_output_M_imag_d0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FFT_output_M_imag_address1, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 FFT_output_M_imag_address1 DATA" *)
output wire [2 : 0] FFT_output_M_imag_address1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FFT_output_M_imag_d1, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 FFT_output_M_imag_d1 DATA" *)
output wire [31 : 0] FFT_output_M_imag_d1;

  fft_8point inst (
    .FFT_input_M_real_ce0(FFT_input_M_real_ce0),
    .FFT_input_M_real_ce1(FFT_input_M_real_ce1),
    .FFT_input_M_imag_ce0(FFT_input_M_imag_ce0),
    .FFT_input_M_imag_ce1(FFT_input_M_imag_ce1),
    .FFT_output_M_real_ce0(FFT_output_M_real_ce0),
    .FFT_output_M_real_we0(FFT_output_M_real_we0),
    .FFT_output_M_real_ce1(FFT_output_M_real_ce1),
    .FFT_output_M_real_we1(FFT_output_M_real_we1),
    .FFT_output_M_imag_ce0(FFT_output_M_imag_ce0),
    .FFT_output_M_imag_we0(FFT_output_M_imag_we0),
    .FFT_output_M_imag_ce1(FFT_output_M_imag_ce1),
    .FFT_output_M_imag_we1(FFT_output_M_imag_we1),
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .ap_ready(ap_ready),
    .FFT_input_M_real_address0(FFT_input_M_real_address0),
    .FFT_input_M_real_q0(FFT_input_M_real_q0),
    .FFT_input_M_real_address1(FFT_input_M_real_address1),
    .FFT_input_M_real_q1(FFT_input_M_real_q1),
    .FFT_input_M_imag_address0(FFT_input_M_imag_address0),
    .FFT_input_M_imag_q0(FFT_input_M_imag_q0),
    .FFT_input_M_imag_address1(FFT_input_M_imag_address1),
    .FFT_input_M_imag_q1(FFT_input_M_imag_q1),
    .FFT_output_M_real_address0(FFT_output_M_real_address0),
    .FFT_output_M_real_d0(FFT_output_M_real_d0),
    .FFT_output_M_real_address1(FFT_output_M_real_address1),
    .FFT_output_M_real_d1(FFT_output_M_real_d1),
    .FFT_output_M_imag_address0(FFT_output_M_imag_address0),
    .FFT_output_M_imag_d0(FFT_output_M_imag_d0),
    .FFT_output_M_imag_address1(FFT_output_M_imag_address1),
    .FFT_output_M_imag_d1(FFT_output_M_imag_d1)
  );
endmodule
