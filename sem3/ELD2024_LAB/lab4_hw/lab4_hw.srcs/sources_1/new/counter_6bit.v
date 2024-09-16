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


module counter_6bit (
    input Clk_1Hz,
    input reset,
    output [5:0] sec,
    output [5:0] min
);

  reg [5:0] sec_count_reg = 0, sec_count_next;
  reg [5:0] min_count_reg = 0, min_count_next;

  always @(posedge Clk_1Hz) begin
    if (reset)
      sec_count_reg <= 0;
    else
      sec_count_reg <= sec_count_next;
  end

  always @(*) begin
    if (sec_count_reg == 59)
      sec_count_next = 0;
    else
      sec_count_next = sec_count_reg + 1;
  end

  always @(posedge Clk_1Hz) begin
    if (reset)
      min_count_reg <= 0;
    else
      min_count_reg <= min_count_next;
  end

  always @(*) begin
    if (sec_count_reg == 59)
      if(min_count_reg == 59)
        min_count_next = 0;
      else
        min_count_next = min_count_reg + 1;
    else
      min_count_next = min_count_reg;
  end

  assign sec = sec_count_reg;
  assign min = min_count_reg;

endmodule
