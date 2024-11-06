`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 10/15/2024 09:38:43 AM
// Design Name:
// Module Name: main
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


module main(

    input Clock,
    input reset,
    input [63:0] slave_data,
    output [63:0] master_data,
    input [7:0] config_data,
    input config_valid,
    input slave_valid,
    input slave_last,
    input master_ready,
    output config_ready,
    output slave_ready,
    output master_valid,
    output master_last

    );

    xfft_03 something (
        .aclk(Clock),                                                // input wire aclk
        .aresetn(reset),                                          // input wire aresetn
        .s_axis_config_tdata(config_data),                  // input wire [7 : 0] s_axis_config_tdata
        .s_axis_config_tvalid(config_valid),                // input wire s_axis_config_tvalid
        .s_axis_config_tready(config_ready),                // output wire s_axis_config_tready
        .s_axis_data_tdata(slave_data),                      // input wire [63 : 0] s_axis_data_tdata
        .s_axis_data_tvalid(slave_valid),                    // input wire s_axis_data_tvalid
        .s_axis_data_tready(slave_ready),                    // output wire s_axis_data_tready
        .s_axis_data_tlast(slave_last),                      // input wire s_axis_data_tlast
        .m_axis_data_tdata(master_data),                      // output wire [63 : 0] m_axis_data_tdata
        .m_axis_data_tvalid(master_valid),                    // output wire m_axis_data_tvalid
        .m_axis_data_tready(master_ready),                    // input wire m_axis_data_tready
        .m_axis_data_tlast(master_last)                      // output wire m_axis_data_tlast
    );

endmodule
