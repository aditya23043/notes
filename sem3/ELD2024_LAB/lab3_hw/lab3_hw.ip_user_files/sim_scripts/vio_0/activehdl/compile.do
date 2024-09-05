vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xpm

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../lab3_hw.srcs/sources_1/ip/vio_0/hdl/verilog" "+incdir+../../../../lab3_hw.srcs/sources_1/ip/vio_0/hdl" \
"/home/adi/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93 \
"/home/adi/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../lab3_hw.srcs/sources_1/ip/vio_0/hdl/verilog" "+incdir+../../../../lab3_hw.srcs/sources_1/ip/vio_0/hdl" \
"../../../../lab3_hw.srcs/sources_1/ip/vio_0/sim/vio_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

