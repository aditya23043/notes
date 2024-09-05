`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 09/05/2024 11:58:11 AM
// Design Name:
// Module Name: updown_counter
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


module updown_counter (
    input Clk_1Hz,
    input reset,
    input up,
    output [6:0] Count
);

  reg [6:0] PS = 0, NS = 0;

  always @(posedge Clk_1Hz) begin
    if (reset) PS <= 7'd0;
    else PS <= NS;
  end

  always @(*) begin
    if (up == 1'b1)
      if (PS == 7'd85) NS = 7'd0;
      else NS = PS + 7'd1;
    else if (up == 1'b0)
      if (PS == 7'd0) NS = 7'd85;
      else NS = PS - 7'd1;
  end

  assign count = PS;
endmodule
