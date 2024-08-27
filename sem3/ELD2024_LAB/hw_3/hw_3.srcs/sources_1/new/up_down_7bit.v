`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 08/27/2024 10:39:09 AM
// Design Name:
// Module Name: up_down_7bit
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


module up_down_7bit (
    input clk,
    input reset,
    input up,
    output [6:0] out
);


  reg [6:0] PS = 0, NS = 0;

  always @(posedge clk) begin
    if (reset) PS <= 7'd0;
    else PS <= NS;
  end

  always @(*) begin
    if(up==1'b1)
      if(PS == 7'd85)
        NS = 7'd0;
      else
        NS = PS + 7'd1;
    else if(up==1'b0)
      if(PS == 7'd0)
        NS = 7'd85;
      else
        NS = PS - 7'd1;
  end

  assign out = PS;

endmodule
