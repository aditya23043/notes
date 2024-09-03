`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 08/27/2024 10:06:12 AM
// Design Name:
// Module Name: counter_tb
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


module counter_tb ();

  // Output of your module : Wire
  // Input of your module : Reg
  reg Clk_1Hz, reset;
  wire [7:0] Count;

  // Module Instantiation
  counter_8bit foo(
    .Clk_1Hz(Clk_1Hz),
    .reset(reset),
    .Count(Count)
  );

  // While true
  always
  begin
    #2 Clk_1Hz = ~Clk_1Hz;
  end

  // Executed only once
  initial
  begin
    Clk_1Hz = 0;
    reset = 1;
    #50 reset = 0;
    #1000 $stop;
  end

endmodule
