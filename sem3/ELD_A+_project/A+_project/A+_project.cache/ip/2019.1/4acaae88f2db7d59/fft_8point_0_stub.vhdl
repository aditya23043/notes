-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
-- Date        : Sun May 26 11:23:53 2019
-- Host        : archlinux running 64-bit unknown
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fft_8point_0_stub.vhdl
-- Design      : fft_8point_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    FFT_input_M_real_ce0 : out STD_LOGIC;
    FFT_input_M_real_ce1 : out STD_LOGIC;
    FFT_input_M_imag_ce0 : out STD_LOGIC;
    FFT_input_M_imag_ce1 : out STD_LOGIC;
    FFT_output_M_real_ce0 : out STD_LOGIC;
    FFT_output_M_real_we0 : out STD_LOGIC;
    FFT_output_M_real_ce1 : out STD_LOGIC;
    FFT_output_M_real_we1 : out STD_LOGIC;
    FFT_output_M_imag_ce0 : out STD_LOGIC;
    FFT_output_M_imag_we0 : out STD_LOGIC;
    FFT_output_M_imag_ce1 : out STD_LOGIC;
    FFT_output_M_imag_we1 : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    FFT_input_M_real_address0 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    FFT_input_M_real_q0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    FFT_input_M_real_address1 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    FFT_input_M_real_q1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    FFT_input_M_imag_address0 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    FFT_input_M_imag_q0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    FFT_input_M_imag_address1 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    FFT_input_M_imag_q1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    FFT_output_M_real_address0 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    FFT_output_M_real_d0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    FFT_output_M_real_address1 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    FFT_output_M_real_d1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    FFT_output_M_imag_address0 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    FFT_output_M_imag_d0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    FFT_output_M_imag_address1 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    FFT_output_M_imag_d1 : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "FFT_input_M_real_ce0,FFT_input_M_real_ce1,FFT_input_M_imag_ce0,FFT_input_M_imag_ce1,FFT_output_M_real_ce0,FFT_output_M_real_we0,FFT_output_M_real_ce1,FFT_output_M_real_we1,FFT_output_M_imag_ce0,FFT_output_M_imag_we0,FFT_output_M_imag_ce1,FFT_output_M_imag_we1,ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,FFT_input_M_real_address0[2:0],FFT_input_M_real_q0[31:0],FFT_input_M_real_address1[2:0],FFT_input_M_real_q1[31:0],FFT_input_M_imag_address0[2:0],FFT_input_M_imag_q0[31:0],FFT_input_M_imag_address1[2:0],FFT_input_M_imag_q1[31:0],FFT_output_M_real_address0[2:0],FFT_output_M_real_d0[31:0],FFT_output_M_real_address1[2:0],FFT_output_M_real_d1[31:0],FFT_output_M_imag_address0[2:0],FFT_output_M_imag_d0[31:0],FFT_output_M_imag_address1[2:0],FFT_output_M_imag_d1[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "fft_8point,Vivado 2019.1";
begin
end;
