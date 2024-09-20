# FPGA Architecture

```
CLB
|__ 2 Slices
|   |__ Slice L (LUT can be used only for logic)
|   |__ Slice M / L (LUT can be used for both logic and memory / SRL)
|       |__ Mulitplexers
|       |__ Carry Chains (used for arithmetic operations)
|       |__ 4 Flip Flops / Latches
|       |__ 4 Additional Flip Flops
|       |__ 4 6-input LUTs
|           |__ A[6:1] = Address
|           |__ W[6:1] = Write Data
|__ 8 LUTs
|__ 16 Flip Flops
|__ 2 Arithmetic & Carry Chains
```

> Note: Slice L only has address A[6:1], not data input W[6:1]
