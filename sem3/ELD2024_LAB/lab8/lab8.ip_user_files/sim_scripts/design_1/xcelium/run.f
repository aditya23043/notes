-makelib xcelium_lib/xilinx_vip -sv \
  "/home/adi/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "/home/adi/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "/home/adi/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "/home/adi/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "/home/adi/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "/home/adi/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "/home/adi/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "/home/adi/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "/home/adi/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../lab8.srcs/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_vip_v1_1_5 -sv \
  "../../../../lab8.srcs/sources_1/bd/design_1/ipshared/d4a8/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/processing_system7_vip_v1_0_7 -sv \
  "../../../../lab8.srcs/sources_1/bd/design_1/ipshared/8c62/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \
  "../../../bd/design_1/sim/design_1.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

