`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 09/24/2024 10:07:23 AM
// Design Name:
// Module Name: Top_FL_TB
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


module Top_FL_TB(

  );

  // inputs -> reg
  // outputs -> wire

  reg Clock;
  reg [31:0] Slave_data;
  reg Slave_valid;
  wire Slave_ready;
  wire [31:0] Master_data;
  wire Master_valid;
  reg Master_ready;

  top_module t1(
    .Clock(Clock),
    .Slave_data(Slave_data),
    .Slave_valid(Slave_valid),
    .Slave_ready(Slave_ready),
    .Master_data(Master_data),
    .Master_valid(Master_valid),
    .Master_ready(Master_ready)
  );

  initial
    begin
      Clock = 0;
      Slave_valid = 0;
      Slave_data = 0;
      Master_ready = 1;
      // test bench is accepting data from the inverse block
      // hence we set Master_ready = 1 because it is always ready to accept
      // data
    end

  always
    begin
      #5 Clock = ~Clock;

      // Put data on data bus
      // Put valid signal to one
      // make the valid = 1 till the ready = 1
      // make valid = 0 at the next positive edge clock cycle after handshake (i.e. ready = 1)
      //    in order to prevent garbage values from going in

    end

  initial
  begin
    #50 Slave_data = 32'b01000001011100000000000000000000;
    Slave_valid = 1;
    while(Slave_ready == 0)
      Slave_valid = 1;
    // at the next clock cycle transmission happens and the valid should be
    // set to zero in order to prevent any garbage values from going in
    #5 Slave_valid = 0;
    // waiting for the inverse IP to set M_valid once the operation has been
    // carried out
    @(posedge Master_valid);
    #20 $stop;
  end

endmodule
