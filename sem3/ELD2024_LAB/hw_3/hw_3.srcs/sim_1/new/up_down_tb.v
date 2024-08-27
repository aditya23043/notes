`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 08/27/2024 10:44:36 AM
// Design Name:
// Module Name: up_down_tb
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


module up_down_tb();

  reg clk, reset, up;
  wire [6:0] out;


  up_down_7bit foo(
    .clk(clk),
    .reset(reset),
    .up(up),
    .out(out)
  );

  always
  begin
    #2 clk = ~clk;
  end

  initial
  begin
    clk = 0;
    up = 1;
    reset = 1;
    #50 reset = 0;
    #1000 up = 0;
    #2000 $stop;
  end

endmodule

