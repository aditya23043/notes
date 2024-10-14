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
  input [31:0] Slave_y_data,
  input Slave_x_valid,
  input Slave_y_valid,
  output Slave_x_ready,
  output Slave_y_ready,
  output [31:0] Master_data,
  output [0:0] Master_valid,
  input Master_ready

  );

  wire Master_log_y_valid, Master_log_y_ready;
  wire [31:0] Master_log_y_data;

  wire Master_log_inv_y_valid, Master_log_inv_y_ready;
  wire [31:0] Master_log_inv_y_data;

  wire Master_sqrt_x_valid, Master_sqrt_x_ready;
  wire [31:0] Master_sqrt_x_data;

  wire Master_add_x_y_valid, Master_add_x_y_ready;
  wire [31:0] Master_add_x_y_data;

  wire Master_const_valid, Master_const_ready;
  wire [31:0] Master_const_data = 32'b00111111110000000000000000000000;

  /*
  * x -> sqrt(x) [Master_sqrt_x_data]
  * y -> ln(y) -> 1/ln(y) [Master_log_y_data]
  * add 1.5 with the sum of the output of last two
  */

  // X
  FL_sqrt sqrt1 (

    .aclk(Clock),                                  // input wire aclk

    .s_axis_a_tvalid(Slave_x_valid),            // input wire s_axis_a_tvalid
    .s_axis_a_tready(Slave_x_ready),            // output wire s_axis_a_tready
    .s_axis_a_tdata(Slave_x_data),              // input wire [31 : 0] s_axis_a_tdata

    .m_axis_result_tvalid(Master_sqrt_x_valid),  // output wire m_axis_result_tvalid
    .m_axis_result_tready(Master_sqrt_x_ready),  // input wire m_axis_result_tready
    .m_axis_result_tdata(Master_sqrt_x_data)    // output wire [31 : 0] m_axis_result_tdata

  );

  // Y
  FL_log log1 (

    .aclk(Clock),                                  // input wire aclk

    .s_axis_a_tvalid(Slave_y_valid),            // input wire s_axis_a_tvalid
    .s_axis_a_tready(Slave_y_ready),            // output wire s_axis_a_tready
    .s_axis_a_tdata(Slave_y_data),              // input wire [31 : 0] s_axis_a_tdata

    .m_axis_result_tvalid(Master_log_y_valid),  // output wire m_axis_result_tvalid
    .m_axis_result_tready(Master_log_y_ready),  // input wire m_axis_result_tready
    .m_axis_result_tdata(Master_log_y_data)    // output wire [31 : 0] m_axis_result_tdata

  );

  FL_inverse inv1 (

    .aclk(Clock),                                  // input wire aclk

    .s_axis_a_tvalid(Master_log_y_valid),            // input wire s_axis_a_tvalid
    .s_axis_a_tready(Master_log_y_ready),            // output wire s_axis_a_tready
    .s_axis_a_tdata(Master_log_y_data),              // input wire [31 : 0] s_axis_a_tdata

    .m_axis_result_tvalid(Master_log_inv_y_valid),  // output wire m_axis_result_tvalid
    .m_axis_result_tready(Master_log_inv_y_ready),  // input wire m_axis_result_tready
    .m_axis_result_tdata(Master_log_inv_y_data)    // output wire [31 : 0] m_axis_result_tdata

  );

  FL_add add_x_y (

    .aclk(Clock),                                  // input wire aclk

    .s_axis_a_tvalid(Master_log_inv_y_valid),            // input wire s_axis_a_tvalid
    .s_axis_a_tready(Master_log_inv_y_ready),            // output wire s_axis_a_tready
    .s_axis_a_tdata(Master_log_inv_y_data),              // input wire [31 : 0] s_axis_a_tdata

    .s_axis_b_tvalid(Master_sqrt_x_valid),            // input wire s_axis_b_tvalid
    .s_axis_b_tready(Master_sqrt_x_ready),            // output wire s_axis_b_tready
    .s_axis_b_tdata(Master_sqrt_x_data),              // input wire [31 : 0] s_axis_b_tdata

    .m_axis_result_tvalid(Master_add_x_y_valid),  // output wire m_axis_result_tvalid
    .m_axis_result_tready(Master_add_x_y_ready),  // input wire m_axis_result_tready
    .m_axis_result_tdata(Master_add_x_y_data)    // output wire [31 : 0] m_axis_result_tdata

  );

  FL_add add_final (

    .aclk(Clock),                                  // input wire aclk

    .s_axis_a_tvalid(Master_add_x_y_valid),            // input wire s_axis_a_tvalid
    .s_axis_a_tready(Master_add_x_y_ready),            // output wire s_axis_a_tready
    .s_axis_a_tdata(Master_add_x_y_data),              // input wire [31 : 0] s_axis_a_tdata

    .s_axis_b_tvalid(Master_const_valid),            // input wire s_axis_b_tvalid
    .s_axis_b_tready(Master_const_ready),            // output wire s_axis_b_tready
    .s_axis_b_tdata(Master_const_data),              // input wire [31 : 0] s_axis_b_tdata

    .m_axis_result_tvalid(Master_valid),  // output wire m_axis_result_tvalid
    .m_axis_result_tready(Master_ready),  // input wire m_axis_result_tready
    .m_axis_result_tdata(Master_data)    // output wire [31 : 0] m_axis_result_tdata

  );

endmodule
