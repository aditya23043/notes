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


module top_count (
    input Clk_100M,
    input reset,
    output [7:0] Count
);

  wire Clk_8M, Clk_1Hz;

  // CMT INSTANTIATION
  clk_wiz_0 cmt (
      // Clock out ports
      .Clk_8M  (Clk_8M),   // output Clk_8M
      // Clock in ports
      .Clk_100M(Clk_100M)
  );  // input Clk_100M

  // FREQ DIVISION INSTANTIATION
  clk_div_rt1 fd (
      .Clk_8M (Clk_8M),
      .Clk_1Hz(Clk_1Hz)
  );

  // COUNTER INSTANTIATION
  counter_8bit counter(
      .Clk_1Hz(Clk_1Hz), .reset(reset), .Count(Count),
  );

endmodule
