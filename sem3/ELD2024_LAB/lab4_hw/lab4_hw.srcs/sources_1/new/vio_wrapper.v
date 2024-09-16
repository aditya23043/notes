`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 09/03/2024 10:32:47 AM
// Design Name:
// Module Name: vio_wrapper
// Project Name:
// Target Devices:
// Tool Versions:
// Description:
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////


module vio_wrapper (
    input Clk_100M
);

  wire [5:0] sec, min;
  wire reset;

  top_count t1(
    .Clk_100M(Clk_100M),
    .reset(reset),
    .min(min),
    .sec(sec)
  );

  vio_0 vio0 (
    .clk(Clk_100M),     // input wire clk
    .probe_in0(sec),    // input wire [5 : 0] probe_in0
    .probe_in1(min),    // input wire [5 : 0] probe_in1
    .probe_out0(reset)  // output wire [0 : 0] probe_out0
  );

  ila_0 ila0 (
    .clk(Clk_100M), // input wire clk
    .probe0(sec), // input wire [5:0]  probe0
    .probe1(min), // input wire [5:0]  probe1
    .probe2(reset) // input wire [0:0]  probe2
  );


endmodule
