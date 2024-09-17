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

  vio_0 vio (
    .clk(pb_clk),                // input wire clk
    .probe_in0(detect),    // input wire [0 : 0] probe_in0
    .probe_in1(FSM_state),    // input wire [2 : 0] probe_in1
    .probe_out0(inp_0),  // output wire [0 : 0] probe_out0
    .probe_out1(inp_1),  // output wire [0 : 0] probe_out1
    .probe_out2(clear)  // output wire [0 : 0] probe_out2
  );


endmodule
