`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 10/15/2024 09:55:13 AM
// Design Name:
// Module Name: testbench
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


module testbench(
    );

    reg Clock;
    reg reset;
    reg [63:0] slave_data;
    wire [63:0] master_data;
    reg [7:0] config_data;
    reg config_valid;
    reg slave_valid;
    reg slave_last;
    reg master_ready;
    wire config_ready;
    wire slave_ready;
    wire master_valid;
    wire master_last;

    reg [31:0] slave_data_real [7:0];
    reg [31:0] slave_data_im [7:0];
    reg [31:0] master_data_real [7:0];
    reg [31:0] master_data_im [7:0];

    main something (
        .Clock(Clock),
        .reset(reset),
        .slave_data(slave_data),
        .master_data(master_data),
        .config_data(config_data),
        .config_valid(config_valid),
        .slave_valid(slave_valid),
        .slave_last(slave_last),
        .master_ready(master_ready),
        .config_ready(config_ready),
        .slave_ready(slave_ready),
        .master_valid(master_valid),
        .master_last(master_last)
    );

    // init
    initial
        begin
            Clock = 0;
            reset = 0;
            config_valid = 0;
            config_data = 0;
            slave_valid = 0;
            slave_data = 0;
            slave_last = 0;
            master_ready = 1;
        end

    // clock
    always
        #5 Clock = ~Clock;

    // input
    initial 
        begin
            slave_data_real[0] = 32'h3f800000;
            slave_data_im[0] = 32'h0;
            slave_data_real[1] = 32'h0;
            slave_data_im[1] = 32'h0;
            slave_data_real[2] = 32'h0;
            slave_data_im[2] = 32'h0;
            slave_data_real[3] = 32'h0;
            slave_data_im[3] = 32'h0;
            slave_data_real[4] = 32'h0;
            slave_data_im[4] = 32'h0;
            slave_data_real[5] = 32'h0;
            slave_data_im[5] = 32'h0;
            slave_data_real[6] = 32'h0;
            slave_data_im[6] = 32'h0;
            slave_data_real[7] = 32'h0;
            slave_data_im[7] = 32'h0;
        end

    // config
    initial
        begin
            #70 reset = 1;
            config_data = 1; // forward fft not inverse
            config_valid = 1;
            while(config_ready == 0)
                #2 config_valid = 1;
            #10 config_valid = 0;
        end

    // input
    integer i,j;
    initial
        begin
            #70 for(i=7;i>=0;i=i-1) begin
                #10 if(i==0)
                    slave_last = 1;
                slave_data = {slave_data_im[i],slave_data_real[i]};
                slave_valid = 1;
                while(slave_ready == 0)
                    #2 slave_valid = 1;
                #10 slave_valid = 0;
                slave_last = 0;
            end
        end

    // output
    initial
        begin
            for(j=7;j>=-1;j=j-1) begin
                #5 master_ready = 1;
                wait(master_valid == 1);
                {master_data_im[j],master_data_real[j]} = master_data;
                #10 master_ready = 0;
            end
            #20 $stop;
        end


endmodule
