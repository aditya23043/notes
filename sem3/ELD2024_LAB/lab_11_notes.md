# ELD Lab 11: Multi Stream IPs based accelerator using FPGA and comparison with ARM processor

- In today's lab: y = 1/FFT(x)
- Input and output are complex i.e. 32 bit real and 32 bit complex
- if output of fft is 5 + 6j, in today's lab we want (1/5) + (1/6)j using floating point IP
- One problem, FFT outputs 64 bit data but FL ip takes only 32 bit input
- We use another stream IP (AXI stream data width converter) which breaks the complex 64 bit output to 2 x 32 bit numbers and passes to the FL IP
- for the dma to work, the last signal is mandatory

## AXI Stream data width converter IP
- Input (slave) : 8byte
- Output (master) : 4byte
- eg: we have 9+2i, 5+6i; then the output will be: 9,2,5,6
- Enable TLAST (VERY CRUCIAL)
- this generates the last signal
