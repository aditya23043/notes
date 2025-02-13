// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="fft_8point,hls_ip_2019_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020-clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.399750,HLS_SYN_LAT=221,HLS_SYN_TPT=none,HLS_SYN_MEM=4,HLS_SYN_DSP=20,HLS_SYN_FF=2282,HLS_SYN_LUT=4103,HLS_VERSION=2019_1}" *)

module fft_8point (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        FFT_input_M_real_address0,
        FFT_input_M_real_ce0,
        FFT_input_M_real_q0,
        FFT_input_M_imag_address0,
        FFT_input_M_imag_ce0,
        FFT_input_M_imag_q0,
        FFT_output_M_real_address0,
        FFT_output_M_real_ce0,
        FFT_output_M_real_we0,
        FFT_output_M_real_d0,
        FFT_output_M_real_address1,
        FFT_output_M_real_ce1,
        FFT_output_M_real_we1,
        FFT_output_M_real_d1,
        FFT_output_M_imag_address0,
        FFT_output_M_imag_ce0,
        FFT_output_M_imag_we0,
        FFT_output_M_imag_d0,
        FFT_output_M_imag_address1,
        FFT_output_M_imag_ce1,
        FFT_output_M_imag_we1,
        FFT_output_M_imag_d1
);

parameter    ap_ST_fsm_state1 = 6'd1;
parameter    ap_ST_fsm_state2 = 6'd2;
parameter    ap_ST_fsm_state3 = 6'd4;
parameter    ap_ST_fsm_state4 = 6'd8;
parameter    ap_ST_fsm_state5 = 6'd16;
parameter    ap_ST_fsm_state6 = 6'd32;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [2:0] FFT_input_M_real_address0;
output   FFT_input_M_real_ce0;
input  [31:0] FFT_input_M_real_q0;
output  [2:0] FFT_input_M_imag_address0;
output   FFT_input_M_imag_ce0;
input  [31:0] FFT_input_M_imag_q0;
output  [2:0] FFT_output_M_real_address0;
output   FFT_output_M_real_ce0;
output   FFT_output_M_real_we0;
output  [31:0] FFT_output_M_real_d0;
output  [2:0] FFT_output_M_real_address1;
output   FFT_output_M_real_ce1;
output   FFT_output_M_real_we1;
output  [31:0] FFT_output_M_real_d1;
output  [2:0] FFT_output_M_imag_address0;
output   FFT_output_M_imag_ce0;
output   FFT_output_M_imag_we0;
output  [31:0] FFT_output_M_imag_d0;
output  [2:0] FFT_output_M_imag_address1;
output   FFT_output_M_imag_ce1;
output   FFT_output_M_imag_we1;
output  [31:0] FFT_output_M_imag_d1;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg FFT_input_M_real_ce0;
reg FFT_input_M_imag_ce0;

(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [2:0] rev8_address0;
reg    rev8_ce0;
wire   [2:0] rev8_q0;
wire   [2:0] add_ln35_fu_161_p2;
wire    ap_CS_fsm_state2;
wire   [3:0] i_fu_185_p2;
reg   [3:0] i_reg_213;
wire    ap_CS_fsm_state3;
wire   [63:0] zext_ln5_fu_191_p1;
reg   [63:0] zext_ln5_reg_218;
wire   [0:0] icmp_ln4_fu_179_p2;
wire    ap_CS_fsm_state4;
reg   [2:0] FFT_rev_M_real_address0;
reg    FFT_rev_M_real_ce0;
reg    FFT_rev_M_real_we0;
reg   [31:0] FFT_rev_M_real_d0;
wire   [31:0] FFT_rev_M_real_q0;
reg    FFT_rev_M_real_ce1;
wire   [31:0] FFT_rev_M_real_q1;
reg   [2:0] FFT_rev_M_imag_address0;
reg    FFT_rev_M_imag_ce0;
reg    FFT_rev_M_imag_we0;
reg   [31:0] FFT_rev_M_imag_d0;
wire   [31:0] FFT_rev_M_imag_q0;
reg    FFT_rev_M_imag_ce1;
wire   [31:0] FFT_rev_M_imag_q1;
wire    grp_FFT_stages_fu_151_ap_start;
wire    grp_FFT_stages_fu_151_ap_done;
wire    grp_FFT_stages_fu_151_ap_idle;
wire    grp_FFT_stages_fu_151_ap_ready;
wire   [2:0] grp_FFT_stages_fu_151_FFT_input_M_real_address0;
wire    grp_FFT_stages_fu_151_FFT_input_M_real_ce0;
wire   [2:0] grp_FFT_stages_fu_151_FFT_input_M_real_address1;
wire    grp_FFT_stages_fu_151_FFT_input_M_real_ce1;
wire   [2:0] grp_FFT_stages_fu_151_FFT_input_M_imag_address0;
wire    grp_FFT_stages_fu_151_FFT_input_M_imag_ce0;
wire   [2:0] grp_FFT_stages_fu_151_FFT_input_M_imag_address1;
wire    grp_FFT_stages_fu_151_FFT_input_M_imag_ce1;
wire   [2:0] grp_FFT_stages_fu_151_FFT_output_M_real_address0;
wire    grp_FFT_stages_fu_151_FFT_output_M_real_ce0;
wire    grp_FFT_stages_fu_151_FFT_output_M_real_we0;
wire   [31:0] grp_FFT_stages_fu_151_FFT_output_M_real_d0;
wire   [2:0] grp_FFT_stages_fu_151_FFT_output_M_real_address1;
wire    grp_FFT_stages_fu_151_FFT_output_M_real_ce1;
wire    grp_FFT_stages_fu_151_FFT_output_M_real_we1;
wire   [31:0] grp_FFT_stages_fu_151_FFT_output_M_real_d1;
wire   [2:0] grp_FFT_stages_fu_151_FFT_output_M_imag_address0;
wire    grp_FFT_stages_fu_151_FFT_output_M_imag_ce0;
wire    grp_FFT_stages_fu_151_FFT_output_M_imag_we0;
wire   [31:0] grp_FFT_stages_fu_151_FFT_output_M_imag_d0;
wire   [2:0] grp_FFT_stages_fu_151_FFT_output_M_imag_address1;
wire    grp_FFT_stages_fu_151_FFT_output_M_imag_ce1;
wire    grp_FFT_stages_fu_151_FFT_output_M_imag_we1;
wire   [31:0] grp_FFT_stages_fu_151_FFT_output_M_imag_d1;
reg   [2:0] phi_ln35_reg_129;
wire   [0:0] icmp_ln35_fu_173_p2;
reg   [3:0] i_0_i_reg_140;
wire    ap_CS_fsm_state5;
reg    grp_FFT_stages_fu_151_ap_start_reg;
wire    ap_CS_fsm_state6;
wire   [63:0] zext_ln35_fu_167_p1;
wire   [63:0] zext_ln5_1_fu_196_p1;
reg   [5:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 6'd1;
#0 grp_FFT_stages_fu_151_ap_start_reg = 1'b0;
end

fft_8point_rev8 #(
    .DataWidth( 3 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
rev8_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(rev8_address0),
    .ce0(rev8_ce0),
    .q0(rev8_q0)
);

fft_8point_FFT_rev_M_real #(
    .DataWidth( 32 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
FFT_rev_M_real_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(FFT_rev_M_real_address0),
    .ce0(FFT_rev_M_real_ce0),
    .we0(FFT_rev_M_real_we0),
    .d0(FFT_rev_M_real_d0),
    .q0(FFT_rev_M_real_q0),
    .address1(grp_FFT_stages_fu_151_FFT_input_M_real_address1),
    .ce1(FFT_rev_M_real_ce1),
    .q1(FFT_rev_M_real_q1)
);

fft_8point_FFT_rev_M_real #(
    .DataWidth( 32 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
FFT_rev_M_imag_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(FFT_rev_M_imag_address0),
    .ce0(FFT_rev_M_imag_ce0),
    .we0(FFT_rev_M_imag_we0),
    .d0(FFT_rev_M_imag_d0),
    .q0(FFT_rev_M_imag_q0),
    .address1(grp_FFT_stages_fu_151_FFT_input_M_imag_address1),
    .ce1(FFT_rev_M_imag_ce1),
    .q1(FFT_rev_M_imag_q1)
);

FFT_stages grp_FFT_stages_fu_151(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_FFT_stages_fu_151_ap_start),
    .ap_done(grp_FFT_stages_fu_151_ap_done),
    .ap_idle(grp_FFT_stages_fu_151_ap_idle),
    .ap_ready(grp_FFT_stages_fu_151_ap_ready),
    .FFT_input_M_real_address0(grp_FFT_stages_fu_151_FFT_input_M_real_address0),
    .FFT_input_M_real_ce0(grp_FFT_stages_fu_151_FFT_input_M_real_ce0),
    .FFT_input_M_real_q0(FFT_rev_M_real_q0),
    .FFT_input_M_real_address1(grp_FFT_stages_fu_151_FFT_input_M_real_address1),
    .FFT_input_M_real_ce1(grp_FFT_stages_fu_151_FFT_input_M_real_ce1),
    .FFT_input_M_real_q1(FFT_rev_M_real_q1),
    .FFT_input_M_imag_address0(grp_FFT_stages_fu_151_FFT_input_M_imag_address0),
    .FFT_input_M_imag_ce0(grp_FFT_stages_fu_151_FFT_input_M_imag_ce0),
    .FFT_input_M_imag_q0(FFT_rev_M_imag_q0),
    .FFT_input_M_imag_address1(grp_FFT_stages_fu_151_FFT_input_M_imag_address1),
    .FFT_input_M_imag_ce1(grp_FFT_stages_fu_151_FFT_input_M_imag_ce1),
    .FFT_input_M_imag_q1(FFT_rev_M_imag_q1),
    .FFT_output_M_real_address0(grp_FFT_stages_fu_151_FFT_output_M_real_address0),
    .FFT_output_M_real_ce0(grp_FFT_stages_fu_151_FFT_output_M_real_ce0),
    .FFT_output_M_real_we0(grp_FFT_stages_fu_151_FFT_output_M_real_we0),
    .FFT_output_M_real_d0(grp_FFT_stages_fu_151_FFT_output_M_real_d0),
    .FFT_output_M_real_address1(grp_FFT_stages_fu_151_FFT_output_M_real_address1),
    .FFT_output_M_real_ce1(grp_FFT_stages_fu_151_FFT_output_M_real_ce1),
    .FFT_output_M_real_we1(grp_FFT_stages_fu_151_FFT_output_M_real_we1),
    .FFT_output_M_real_d1(grp_FFT_stages_fu_151_FFT_output_M_real_d1),
    .FFT_output_M_imag_address0(grp_FFT_stages_fu_151_FFT_output_M_imag_address0),
    .FFT_output_M_imag_ce0(grp_FFT_stages_fu_151_FFT_output_M_imag_ce0),
    .FFT_output_M_imag_we0(grp_FFT_stages_fu_151_FFT_output_M_imag_we0),
    .FFT_output_M_imag_d0(grp_FFT_stages_fu_151_FFT_output_M_imag_d0),
    .FFT_output_M_imag_address1(grp_FFT_stages_fu_151_FFT_output_M_imag_address1),
    .FFT_output_M_imag_ce1(grp_FFT_stages_fu_151_FFT_output_M_imag_ce1),
    .FFT_output_M_imag_we1(grp_FFT_stages_fu_151_FFT_output_M_imag_we1),
    .FFT_output_M_imag_d1(grp_FFT_stages_fu_151_FFT_output_M_imag_d1)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_FFT_stages_fu_151_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln4_fu_179_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
            grp_FFT_stages_fu_151_ap_start_reg <= 1'b1;
        end else if ((grp_FFT_stages_fu_151_ap_ready == 1'b1)) begin
            grp_FFT_stages_fu_151_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln35_fu_173_p2 == 1'd1))) begin
        i_0_i_reg_140 <= 4'd0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        i_0_i_reg_140 <= i_reg_213;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln35_fu_173_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        phi_ln35_reg_129 <= add_ln35_fu_161_p2;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        phi_ln35_reg_129 <= 3'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        i_reg_213 <= i_fu_185_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln4_fu_179_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        zext_ln5_reg_218[3 : 0] <= zext_ln5_fu_191_p1[3 : 0];
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        FFT_input_M_imag_ce0 = 1'b1;
    end else begin
        FFT_input_M_imag_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        FFT_input_M_real_ce0 = 1'b1;
    end else begin
        FFT_input_M_real_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        FFT_rev_M_imag_address0 = zext_ln5_reg_218;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        FFT_rev_M_imag_address0 = zext_ln35_fu_167_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        FFT_rev_M_imag_address0 = grp_FFT_stages_fu_151_FFT_input_M_imag_address0;
    end else begin
        FFT_rev_M_imag_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state5))) begin
        FFT_rev_M_imag_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        FFT_rev_M_imag_ce0 = grp_FFT_stages_fu_151_FFT_input_M_imag_ce0;
    end else begin
        FFT_rev_M_imag_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        FFT_rev_M_imag_ce1 = grp_FFT_stages_fu_151_FFT_input_M_imag_ce1;
    end else begin
        FFT_rev_M_imag_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        FFT_rev_M_imag_d0 = FFT_input_M_imag_q0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        FFT_rev_M_imag_d0 = 32'd0;
    end else begin
        FFT_rev_M_imag_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state5))) begin
        FFT_rev_M_imag_we0 = 1'b1;
    end else begin
        FFT_rev_M_imag_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        FFT_rev_M_real_address0 = zext_ln5_reg_218;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        FFT_rev_M_real_address0 = zext_ln35_fu_167_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        FFT_rev_M_real_address0 = grp_FFT_stages_fu_151_FFT_input_M_real_address0;
    end else begin
        FFT_rev_M_real_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state5))) begin
        FFT_rev_M_real_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        FFT_rev_M_real_ce0 = grp_FFT_stages_fu_151_FFT_input_M_real_ce0;
    end else begin
        FFT_rev_M_real_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        FFT_rev_M_real_ce1 = grp_FFT_stages_fu_151_FFT_input_M_real_ce1;
    end else begin
        FFT_rev_M_real_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        FFT_rev_M_real_d0 = FFT_input_M_real_q0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        FFT_rev_M_real_d0 = 32'd0;
    end else begin
        FFT_rev_M_real_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state5))) begin
        FFT_rev_M_real_we0 = 1'b1;
    end else begin
        FFT_rev_M_real_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) & (grp_FFT_stages_fu_151_ap_done == 1'b1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) & (grp_FFT_stages_fu_151_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        rev8_ce0 = 1'b1;
    end else begin
        rev8_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln35_fu_173_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln4_fu_179_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (grp_FFT_stages_fu_151_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign FFT_input_M_imag_address0 = zext_ln5_1_fu_196_p1;

assign FFT_input_M_real_address0 = zext_ln5_1_fu_196_p1;

assign FFT_output_M_imag_address0 = grp_FFT_stages_fu_151_FFT_output_M_imag_address0;

assign FFT_output_M_imag_address1 = grp_FFT_stages_fu_151_FFT_output_M_imag_address1;

assign FFT_output_M_imag_ce0 = grp_FFT_stages_fu_151_FFT_output_M_imag_ce0;

assign FFT_output_M_imag_ce1 = grp_FFT_stages_fu_151_FFT_output_M_imag_ce1;

assign FFT_output_M_imag_d0 = grp_FFT_stages_fu_151_FFT_output_M_imag_d0;

assign FFT_output_M_imag_d1 = grp_FFT_stages_fu_151_FFT_output_M_imag_d1;

assign FFT_output_M_imag_we0 = grp_FFT_stages_fu_151_FFT_output_M_imag_we0;

assign FFT_output_M_imag_we1 = grp_FFT_stages_fu_151_FFT_output_M_imag_we1;

assign FFT_output_M_real_address0 = grp_FFT_stages_fu_151_FFT_output_M_real_address0;

assign FFT_output_M_real_address1 = grp_FFT_stages_fu_151_FFT_output_M_real_address1;

assign FFT_output_M_real_ce0 = grp_FFT_stages_fu_151_FFT_output_M_real_ce0;

assign FFT_output_M_real_ce1 = grp_FFT_stages_fu_151_FFT_output_M_real_ce1;

assign FFT_output_M_real_d0 = grp_FFT_stages_fu_151_FFT_output_M_real_d0;

assign FFT_output_M_real_d1 = grp_FFT_stages_fu_151_FFT_output_M_real_d1;

assign FFT_output_M_real_we0 = grp_FFT_stages_fu_151_FFT_output_M_real_we0;

assign FFT_output_M_real_we1 = grp_FFT_stages_fu_151_FFT_output_M_real_we1;

assign add_ln35_fu_161_p2 = (phi_ln35_reg_129 + 3'd1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign grp_FFT_stages_fu_151_ap_start = grp_FFT_stages_fu_151_ap_start_reg;

assign i_fu_185_p2 = (i_0_i_reg_140 + 4'd1);

assign icmp_ln35_fu_173_p2 = ((phi_ln35_reg_129 == 3'd7) ? 1'b1 : 1'b0);

assign icmp_ln4_fu_179_p2 = ((i_0_i_reg_140 == 4'd8) ? 1'b1 : 1'b0);

assign rev8_address0 = zext_ln5_fu_191_p1;

assign zext_ln35_fu_167_p1 = phi_ln35_reg_129;

assign zext_ln5_1_fu_196_p1 = rev8_q0;

assign zext_ln5_fu_191_p1 = i_0_i_reg_140;

always @ (posedge ap_clk) begin
    zext_ln5_reg_218[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
end

endmodule //fft_8point
