`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 08/27/2024 09:48:36 AM
// Design Name:
// Module Name: counter_8bit
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


module counter_8bit (
    input Clk_1Hz,
    input reset,
    output [7:0] Count
);

  reg [7:0] PS, NS;

  always @(posedge Clk_1Hz) begin
    if (reset) PS <= 8'd0;
    else PS <= NS;
  end

  always @(*) begin
    // NS = PS + 1;
    // Note: this is a 32 bit adder because even though NS and PS are 8 bits in
    // size but, 1 is 32 bits by default
    // Hence, always define the size as a HW engineer
    NS = PS + 8'd1;
  end

  assign Count = PS;

endmodule
