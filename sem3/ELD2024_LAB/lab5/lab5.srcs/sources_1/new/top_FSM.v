`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 09/03/2024 09:51:20 AM
// Design Name:
// Module Name: top_count
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


module top_FSM (
    input inp_0, inp_1,
    input Clk_100M,
    input clear,
    output detect,
    output [2:0] FSM_state
);

  wire Clk_8M, Clk_1Hz, inp_1, inp_0, clk_pb;

  // CMT INSTANTIATION
  clk_wiz_0 cmt (
      // Clock out ports
      .Clk_8M  (Clk_8M),   // output Clk_8M
      // Clock in ports
      .Clk_100M(Clk_100M)
  );  // input Clk_100M

  // FREQ DIVISION INSTANTIATION
  clk_div_rtl fd (
      .Clk_8M (Clk_8M),
      .Clk_1Hz(Clk_1Hz)
  );

  pb_clk pb (
      .Clk_1Hz(Clk_1Hz), .inp_0(inp_0), .inp_1(inp_1), .clk_pb(clk_pb)
  );

  // COUNTER INSTANTIATION
  FSM_moore_1101 fsm(
      .clk_pb(clk_pb), .clear(clear), .inp_1(inp_1), .detect(detect), .FSM_state(FSM_state)
  );

endmodule
