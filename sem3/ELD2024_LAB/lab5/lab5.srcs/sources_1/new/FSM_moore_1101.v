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


// 1
module FSM_moore_1101 (
    input clk_pb,
    input clear,
    input inp_1,
    output reg detect,
    output [2:0] FSM_state
);

  // 2
  parameter S0 = 3'b000, S1 = 3'b001, S2 = 3'b010, S3 = 3'b0111, S4 = 3'b100;
  reg [2:0] present_state = S0, next_state;

  // 3 STATE REGISTER
  always @ (posedge clk_pb or posedge clear)
    begin
      if(clear == 1)
        present_state <= 0;
      else
        present_state <= next_state;
    end

    // 4 Login Comb CKt
    always @ (*)
      begin
        case (present_state)
          S0:
            if(inp_1 == 1)
              next_state = S1;
            else
              next_state = S0;
          S1:
            if(inp_1 == 1)
              next_state = S2;
            else
              next_state = S0;
          S2:
            if(inp_1 == 1)
              next_state = S3;
            else
              next_state = S0;
          S3:
            if(inp_1 == 1)
              next_state = S4;
            else
              next_state = S0;
          S4:
            if(inp_1 == 1)
              next_state = S1;
            else
              next_state = S0;
          default:
            next_state = S0;
        endcase
      end

      // 5 Output Comb Ckt
      always @ (*)
        begin
          if(next_state == S4)
            detect = 1;
          else
            devtect = 0;
        end

  assign FSM_state = present_state;

endmodule
