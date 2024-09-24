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
  input [31:0] Slave_data,
  input Slave_valid,
  output Slave_ready,
  output [31:0] Master_data,
  output [0:0] Master_valid,
  input Master_ready
  );

  wire Master_log_valid, Master_log_ready;
  wire [31:0] Master_log_data;

  FL_log log1 (
    .aclk(Clock),                                  // input wire aclk
    .s_axis_a_tvalid(Slave_valid),            // input wire s_axis_a_tvalid
    .s_axis_a_tready(Slave_ready),            // output wire s_axis_a_tready
    .s_axis_a_tdata(Slave_data),              // input wire [31 : 0] s_axis_a_tdata
    .m_axis_result_tvalid(Master_log_valid),  // output wire m_axis_result_tvalid
    .m_axis_result_tready(Master_log_ready),  // input wire m_axis_result_tready
    .m_axis_result_tdata(Master_log_data)    // output wire [31 : 0] m_axis_result_tdata
  );

  FL_inverse inv1 (
    .aclk(Clock),                                  // input wire aclk
    .s_axis_a_tvalid(Master_log_valid),            // input wire s_axis_a_tvalid
    .s_axis_a_tready(Master_log_ready),            // output wire s_axis_a_tready
    .s_axis_a_tdata(Master_log_data),              // input wire [31 : 0] s_axis_a_tdata
    .m_axis_result_tvalid(Master_valid),  // output wire m_axis_result_tvalid
    .m_axis_result_tready(Master_ready),  // input wire m_axis_result_tready
    .m_axis_result_tdata(Master_data)    // output wire [31 : 0] m_axis_result_tdata
  );

endmodule
