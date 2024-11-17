we need the gp pins to configure the DMA
AXI Interconnect needed for clock domain conversion and communication between different versions of AXI since fpga works on AXI 3 and processor works on AXI 4 and they both run on different clock frequecies (666 MHz [processor] -> 100MHz [fpga])

M_AXI : Memory Mapped
M_AXIS : Stream

M_AXIS_MM2S : DMA -> FFT : Stream because FFT works on AXI Stream interface only
S_AXIS_S2MM : FFT -> DMA : " "
M_AXI_MM2S : ACP -> DMA : Memory mapped because PS works on AXI mem mapped only
M_AXI_S2MM : DMA -> ACP : " "

Once again, AXI Interconnect used because we have 2 inputs but just 1 output port (ACP)

- potential questions
    - Change DMA params
    - Change FFT Size; eg: 8 -> 16
    - Add Floating Point IP; eg: find FFT(1/x)
    - ILA: Integrated Logic Analyzer

- Shortcut for ILA
    - Right click on all the connections you want to pass through the ILA and click debug and then connection automation

- Final steps
    - Generate Output Products
    - Create HDL Wrapper
    - Generate Bitstream
