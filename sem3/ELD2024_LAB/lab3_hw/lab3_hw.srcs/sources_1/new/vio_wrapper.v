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

  wire [6:0] Count;
  wire reset;
  wire up;

  top_count t1(
    .Clk_100M(Clk_100M),
    .reset(reset),
    .up(up),
    .Count(Count)
  );

  vio_0 vio0 (
    .clk(clk),                // input wire clk
    .probe_in0(Count),        // input wire [7 : 0] probe_in0
    .probe_out0(reset),       // output wire [0 : 0] probe_out0
    .probe_out1(up)           // output wire [0 : 0] probe_out0
  );

endmodule
