`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 09/17/2024 10:04:42 AM
// Design Name:
// Module Name: pb_clk
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


module pb_clk (
    input Clk_1Hz,
    input inp_0,
    input inp_1,
    output reg clk_pb
  );
  assign inp_pulse = inp_0 | inp_1;

  always @ (posedge Clk_1Hz)
    begin
      clk_pb <= inp_pulse;
    end

endmodule
