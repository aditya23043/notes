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

  wire detect;
  wire [2:0] FSM_state;
  wire clear;

  top_FSM t1(
    .Clk_100M(Clk_100M),
    .clear(clear),
    .detect(detect),
    .FSM_state(FSM_state)
  );

endmodule
