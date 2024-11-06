`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 09/24/2024 09:57:28 AM
// Design Name:
// Module Name: top_module
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


module top_module(

  input Clock,

  input [31:0] Slave_x_data,
  input Slave_x_valid,
  output Slave_x_ready,

  input [31:0] Slave_y_data,
  input Slave_y_valid,
  output Slave_y_ready,

  input [31:0] Slave_t_data,
  input Slave_t_valid,
  output Slave_t_ready,

  output [31:0] Master_data,
  output Master_valid,
  input Master_ready

  );

  wire intermediate_x_by_y_valid;
  wire intermediate_x_by_y_ready;
  wire [31:0] intermediate_x_by_y_data;

  wire intermediate_ln_t_valid;
  wire intermediate_ln_t_ready;
  wire [31:0] intermediate_ln_t_data;

  wire intermediate_two_ln_t_valid;
  wire intermediate_two_ln_t_ready;
  wire [31:0] intermediate_two_ln_t_data;

  wire two_data_valid;
  wire two_data_ready;
  wire [31:0] two_data = 32'b01000000000000000000000000000000;

  wire intermediate_two_ln_t_by_y_valid;
  wire intermediate_two_ln_t_by_y_ready;
  wire [31:0] intermediate_two_ln_t_by_y_data;

  wire intermediate_sqrt_two_ln_t_by_y_valid;
  wire intermediate_sqrt_two_ln_t_by_y_ready;
  wire [31:0] intermediate_sqrt_two_ln_t_by_y_data;

  // x / y
  FL_divide divide_x_y (
    .aclk(Clock),                                  // input wire aclk

    .s_axis_a_tvalid(Slave_x_valid),            // input wire s_axis_a_tvalid
    .s_axis_a_tready(Slave_x_ready),            // output wire s_axis_a_tready
    .s_axis_a_tdata(Slave_x_data),              // input wire [31 : 0] s_axis_a_tdata

    .s_axis_b_tvalid(Slave_y_valid),            // input wire s_axis_b_tvalid
    .s_axis_b_tready(Slave_y_ready),            // output wire s_axis_b_tready
    .s_axis_b_tdata(Slave_y_data),              // input wire [31 : 0] s_axis_b_tdata

    .m_axis_result_tvalid(intermediate_x_by_y_valid),  // output wire m_axis_result_tvalid
    .m_axis_result_tready(intermediate_x_by_y_ready),  // input wire m_axis_result_tready
    .m_axis_result_tdata(intermediate_x_by_y_data)    // output wire [31 : 0] m_axis_result_tdata
  );

  // ln(t)
  FL_log ln_t (
    .aclk(Clock),                                  // input wire aclk

    .s_axis_a_tvalid(Slave_t_valid),            // input wire s_axis_a_tvalid
    .s_axis_a_tready(Slave_t_ready),            // output wire s_axis_a_tready
    .s_axis_a_tdata(Slave_t_data),              // input wire [31 : 0] s_axis_a_tdata

    .m_axis_result_tvalid(intermediate_ln_t_valid),  // output wire m_axis_result_tvalid
    .m_axis_result_tready(intermediate_ln_t_ready),  // input wire m_axis_result_tready
    .m_axis_result_tdata(intermediate_ln_t_data)    // output wire [31 : 0] m_axis_result_tdata
  );

  // 2 * ln(t)
  FL_multiply two_ln_t (
    .aclk(Clock),                                  // input wire aclk

    .s_axis_a_tvalid(two_data_valid),            // input wire s_axis_a_tvalid
    .s_axis_a_tready(two_data_ready),            // output wire s_axis_a_tready
    .s_axis_a_tdata(two_data),              // input wire [31 : 0] s_axis_a_tdata

    .s_axis_b_tvalid(intermediate_ln_t_valid),            // input wire s_axis_b_tvalid
    .s_axis_b_tready(intermediate_ln_t_ready),            // output wire s_axis_b_tready
    .s_axis_b_tdata(intermediate_ln_t_data),              // input wire [31 : 0] s_axis_b_tdata

    .m_axis_result_tvalid(intermediate_two_ln_t_valid),  // output wire m_axis_result_tvalid
    .m_axis_result_tready(intermediate_two_ln_t_ready),  // input wire m_axis_result_tready
    .m_axis_result_tdata(intermediate_two_ln_t_data)    // output wire [31 : 0] m_axis_result_tdata
  );

  // 2 * lnt / y
  FL_divide two_lnt_by_y (
    .aclk(Clock),                                  // input wire aclk

    .s_axis_a_tvalid(intermediate_two_ln_t_valid),            // input wire s_axis_a_tvalid
    .s_axis_a_tready(intermediate_two_ln_t_ready),            // output wire s_axis_a_tready
    .s_axis_a_tdata(intermediate_two_ln_t_data),              // input wire [31 : 0] s_axis_a_tdata

    .s_axis_b_tvalid(Slave_y_valid),            // input wire s_axis_b_tvalid
    .s_axis_b_tready(Slave_y_ready),            // output wire s_axis_b_tready
    .s_axis_b_tdata(Slave_y_data),              // input wire [31 : 0] s_axis_b_tdata

    .m_axis_result_tvalid(intermediate_two_ln_t_by_y_valid),  // output wire m_axis_result_tvalid
    .m_axis_result_tready(intermediate_two_ln_t_by_y_ready),  // input wire m_axis_result_tready
    .m_axis_result_tdata(intermediate_two_ln_t_by_y_data)    // output wire [31 : 0] m_axis_result_tdata
  );

  // sqrt(2*ln(t)/y)
  FL_sqrt sqrt_2_lnt_by_y (
    .aclk(Clock),                                  // input wire aclk

    .s_axis_a_tvalid(intermediate_two_ln_t_by_y_valid),            // input wire s_axis_a_tvalid
    .s_axis_a_tready(intermediate_two_ln_t_by_y_ready),            // output wire s_axis_a_tready
    .s_axis_a_tdata(intermediate_two_ln_t_by_y_data),              // input wire [31 : 0] s_axis_a_tdata

    .m_axis_result_tvalid(intermediate_sqrt_two_ln_t_by_y_valid),  // output wire m_axis_result_tvalid
    .m_axis_result_tready(intermediate_sqrt_two_ln_t_by_y_ready),  // input wire m_axis_result_tready
    .m_axis_result_tdata(intermediate_sqrt_two_ln_t_by_y_data)    // output wire [31 : 0] m_axis_result_tdata
  );

  // sqrt(2*ln(t)/y) + x/y
  FL_add final_step (
    .aclk(Clock),                                  // input wire aclk

    .s_axis_a_tvalid(intermediate_sqrt_two_ln_t_by_y_valid),            // input wire s_axis_a_tvalid
    .s_axis_a_tready(intermediate_sqrt_two_ln_t_by_y_ready),            // output wire s_axis_a_tready
    .s_axis_a_tdata(intermediate_sqrt_two_ln_t_by_y_data),              // input wire [31 : 0] s_axis_a_tdata

    .s_axis_b_tvalid(intermediate_x_by_y_valid),            // input wire s_axis_b_tvalid
    .s_axis_b_tready(intermediate_x_by_y_ready),            // output wire s_axis_b_tready
    .s_axis_b_tdata(intermediate_x_by_y_data),              // input wire [31 : 0] s_axis_b_tdata

    .m_axis_result_tvalid(Master_valid),  // output wire m_axis_result_tvalid
    .m_axis_result_tready(Master_ready),  // input wire m_axis_result_tready
    .m_axis_result_tdata(Master_data)    // output wire [31 : 0] m_axis_result_tdata
  );

endmodule

/*
* For the test bench, i will have these values so that the final value comes
* out neat ->
*
* t = 54.5981500331
* so that ln(t) = 4
* 2*ln(t) = 8
* y = 2
* so that 2*ln(t) / y = 4
* and sqrt of that will be 2
* and x = 16
* so, z = 10
*/
