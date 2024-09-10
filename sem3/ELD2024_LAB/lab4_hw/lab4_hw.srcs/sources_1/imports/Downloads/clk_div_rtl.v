`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 09/05/2023 09:25:07 AM
// Design Name:
// Module Name: clk_div_rtl
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


module clk_div_rtl (
    input  Clk_8M,
    output Clk_1Hz
);

  reg [23:0] Count_reg = 0;  // Initialization of FFs during FPGA configuration
  reg [23:0] Count_next;  // output of combinational circuit...can not be initialized
  always @(posedge Clk_8M) begin
    Count_reg <= Count_next;  // D-FF
  end

  always @(*)  // Comb. ckt to find out next state
    Count_next = Count_reg + 1;

  assign Clk_1Hz = Count_reg[23];

endmodule

