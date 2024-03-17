<style>
*{
font-family: "Fira Sans Condensed";
}
</style>

# 9/01/2024

## Computer Organization

## About the Course
- Prof: Sujay Deb
- sdeb@iiitd.ac.in
- A607 : Monday 4:30 - 6:00 pm
- code: l52kbxz
- Book: Computer Organization and Architecture - Smruti Ranjan Sarangi
- Grading : Absolute

| Topic      | Contribution |
|------------|--------------|
| Assignment | 10%          |
| Quizzes    | 20%          |
| Midterm    | 30%          |
| FInal      | 40%          |

- Passing: 30%

## Summary
- Building blocks of processors and their working principle
- Assembly
- Pipeline and its Hazards
- Different memory types like cache, etc.

## Cpu Instructions
- Fetch
- Decode
- Execute

lets say each process takes 2 units and we have 10 blocks of this

| Fetch | Decode | Execute |
|-------|--------|---------|
| 2     | 2      | 2       |

Then it takes 60 units in total

## Pipeline

- Using pipeline method, wont taking 60 units

| 1 | 2 | 3 | 4 | 5 |   |
|---|---|---|---|---|---|
| 1 | F | D | X |   |   |
| 2 |   | F | D | X |   |
| 3 |   |   | F | D | X |

- Hazards:
  - Data
  - Control
  - Structure
 
___
# 11/01/2024

## Introduction to Computer Systems
- General overview of computer abstraction and technology

- Instruction set architecture
  - instruction type
  - format
  - operand
  - addressing mode
- 32 RISCV ISA

| opcode | operands |
|--------|----------|
| ADD    |          |
| SUB    |          |
| MUL    |          |

- Computer Arithmetic
  - addition
  - subtraction
  - multiplication and division
  - floating-point representation
- Basics of microprocessor
  - pipeline
  - data path and control
  - data and control hazards

- Why do we use binary instead of decimal in digital systems?
  - The gap between 0 and 1 is very high as compared to 0-9 numbers and hence will not cause any issues due to voltage difference
  - Because even a small 0.1 difference in voltage could cause a big difference

| F     | D      | X       | M      | W     |
|-------|--------|---------|--------|-------|
| Fetch | Decode | Execute | Memory | Write |

`ADD R1, R2, R3` > R1 = R2 + R3
- F : Fetching the values R2 and R3
- D : Decoding the values
- X : R2 + R3
- M : NA
- W : Storing the sum in R1

___
- Parallelism
  - Instruction level parallelism
- Memory Hierarchy
- Top 500
___

# 12/01/2024

## Information Set Architecture (ISA)

- We cannot run a native android application on a PC without 3rd party modification because of different **Information Set Architecture**

| Organisation | ISA       |
|--------------|-----------|
| IBM          | Power PC  |
| Intel        | x86 32bit |
|              | ARM       |
| Open Source  | RISC-V    |
|              | MIPS      |
|              | ALPHA     |

- Now we use Intel x86 64bit however AMD was the one to introduce 64bit system
- RISC V is now the official architecture of India

## TODO Today
- What is computer architecture
- Evolution of Computing Devices
- Moore's Law
- Architecture vs Organization

## Abstractions in Modern Computing Systems

|                                      |    |
|--------------------------------------|----|
| `Application`                        | \| | Application Requirements:
| Algorithm                            | \| | Suggest how to improve architecture
| Programming Language                 | \| | Provide revenue to fund development
| Operating Systems / Virtual Machines | 
| Instruction Set Architecture         |
| Micro Architecture                   |    | Architecture provides feedback to guide application and technology research directions |
| Register-Transfer Level              |
| Gates                                | 
| Circuits                             | \| | Technology Constraints:
| Devices                              | \| | Restrict what can be done efficiently
| `Physics`                            | \| | New technologies make new arch possible




- Actual Hardware Implentation is in Micro Architecture


- D Flip Flop
  - Setup Time
  - Hold Time

- RTL: Register Transfer Logic

- CMOS : Complementary Metal Oxide Semiconductor

### Power Wall
$$P \propto \alpha$$
___

# Tutorial Session 17/01/2024

- Computer architecture defines what the computer does
- Computer organization defines how it does that
___
- Pre execution
- Compilation
___

- Von Neumann

| CPU          |
|--------------|
| ALU          |
| Control Unit |
|            |
| `Memory`     |

- Data memory and Instruction Memory is placed in the same place
- Less efficient than harvard
- Single Data Bus shared by both types of memory

- Harvard

| Advantages                                              |
|---------------------------------------------------------|
| Instructions per cycle is more                          |
| Separate "stuff" for data memory and instruction memory |

___
| Components  | Functionality    |
|-------------|------------------|
| CPU         | Computation      |
| GPU         | Computation      |
| HDD         | Storage          |
| SSD         | Storage          |
| Motherboard | Interconnection  |
| RAM         | Volatile Storage |
| IO          | Interface        |

___
| Sno | Part
|-----|----------------|
| 1   | CPU            |
| 2   | GPU            |
| 3   | RAM            |
| 4   | SSD            |
| 5   | PSU            |
| 6   | Motherboard    |
| 7   | Cooling System |
| 8   | HDD            |
| 9   | Optical Drives |
___

# 18/01/2024
## Elements of a Computer

|                      |         |      CPU     |              |                             |
|:--------------------:|:-------:|:------------:|:------------:|-----------------------------|
| Program Counter (PC) | ------ |  ---------- | Control Unit | Arithmetic Logic Unit (ALU) |
| \|                   |    󱞫    | -----------> |      󱞿      |                             |
|                     |    \|   |  Instruction |             |                             |
| Program              | Program |    Program   |     Data     | Data                        |

Where Program and Data are part of the $Memory$


| RAM  | Volatile Memory |                                                                                                                                                                                                                           |
|------|-----------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| DRAM | Dynamic Ram     | Whether a capacitor is charged or discharged, if the capacity is high, then 1 is stored and if capacity is low, then 0 is stored. Transistor is converted to a capacitor and only one capacitor is used to store one byte |
| SRAM | Static Ram      |

| Storage       | Memory       |
|---------------|--------------|
| Cache         | Volatile     |
| RAM           | Volatile     |
| HDD           | Non Volatile |
| Flash Storage | Non Volatile |

___
For these 16 memory addresses, we need a 4 bit address bit coming from the CPU because there are total $2^4$ parts

| 0   |
|-----|
| ... |
| 7   |
| ... |
| 15  |

|        CPU        |
|:-----------------:|
|                  |
| 4 bit address bus |

- Program counter is a special purpose resistor ( not a general purpose resistor )

## Multiple Instruction ISA
- Arithmetic Instructions
  - Add Subtract Multiply Divide
- Logical Instructions
  - or and not
- Move Instructions
  - Transfer values between memory locations
- Branch Instructions
  - Move to a new program location, based on the values of some memory locations

> NOTE: Program Counter consists the addresses from where the CPU needs the fetch data

- Functionality of ISA : Where from the operands are coming and where the results are stored

___

# 23/01/2024

## Harvard Architecture
 
![Harvard Architecture](/home/adi/Documents/college/sem_2/co/lectures/harvardArch.png) 

## Von Neumann Architecture

![Von Neumann Architecture](/home/adi/Documents/college/sem_2/co/lectures/vonArch.png) 

- For Addition, we need
  - Two source operands, S1 and S2
  - Destination D
  - Opcode: ADD
- `ADD D, S1, S2`

- Problem: How to identify multiple (say 32) general purpose register in a register-register machine model

| 00000 | R1  |
|-------|-----|
| ...   | ..  |
| 01111 | R16 |
| ...   | ..  |
| 11111 | R32 |

- Extension of this type of structure of registers > CACHE
- Little bit slower than registers but much much faster than the main memory and place it close to the CPU
- Lets say you can access memory from the registers in 1 cycle, then accessing memory from cache will take 2 cycles whereas the main memory might take upto 1000 cycles

## REGISTERS

![Von Neumann Arch with Registers](/home/adi/Documents/college/sem_2/co/lectures/vonWithRegisters.png) 

- A CPU contains set of registers (16-64)
- These are named storage locations
- Typically values are loaded from memory to registers
- Arithmetic/logical instructions use registers as input operands
- finally, data is stored back into the memory

## Example of a program in machine language with registers

```asm
1: r1 = mem[b] // load b
2: r2 = mem[c] // load c
3: r3 = r1 + r2 // add b and c
4: mem[a] = rc // save the result
```
- r1, r2 and r3 are registers
- mem -> array of bytes representing memory

1: `load r1, mem[b]`
- I have 32 different instructions and i want to convert each instruction to 1/0 so, we can represent the instruction/opcode using 5 bits
- here, load is the opcode
- We have 32 different general purpose registers, so r1 uses 5 bits as well
- In total, the cpu / processor can handle 32 bits, so we are left with 22 bits for mem\[b\]
- mem\[b\] uses 32 bits

| object   | bits |
|----------|------|
| load     | 5    |
| r1       | 5    |
| mem\[b\] |      |
| total    | 32   |

3: `add r3, r1, r2`
- This operation only takes 20 bits in total because opcode takes 5 bits and these 3 registers use 3x5 bits, so total 20 bits
- In register-register system, the processor does not interact with memory during operations; assumes that operands are already stored in the register

| Machine Model     | No. of Explicitly Named Operands |
|-------------------|----------------------------------|
| Stack             | 0                                |
| Accumulator       | 1                                |
| Register-memory   | 2/3                              |
| Register-register | 2/3                              |

- Accumulator based machines are used in micro controllers in order to prevent overhead
- For addition in Accumulator, just do:
```asm
load a,b
ADD c
```

- x86 uses register-memory based system

# $01/02/2024$
- Lecture: 9
- Language of Bits
___
- Why Binary?
- High Noise margin when using binary instead of using decimal or hex
- Either 0/1 or Ground/VDD

# $02/02/2024$

- Representing Floating Point Numbers in Binary

| 0000 | 0  |
|------|----|
| 0001 | 1  |
| 0010 | 2  |
| 0011 | 3  |
| .... | .  |
| 0111 | 7  |
| 1000 | -8 |
| 1001 | -9 |
| .... | .  |
| 1110 | -2 |
| 1111 | -1 |

- And then back to 0000 in a loop
![Floating Point Representation](/home/adi/Documents/college/sem_2/co/lectures/floating.png) 

## 2's Compliment Notation

$$
F(u) = 
\begin{cases}
u & 0\le u \lt 2^{n-1}-1\\
2^n-|u| & x<0
\end{cases}
$$

- MSB is equal to the sign bit
  - +ve numbers : MSB = 0
  - -ve numbers : MSB = 1

- Every number in the range ( $-2^{n-1}, 2^{n-1}-1$ ) has a unique mapping

- Computing 2's Compliment
$$
2^n-u\\
2^n-1-u+1\\
$$
 = 2's compliment + 1

# $08/02/2024$

- Addition
- Full Adder : S = a xor b xor c_in
- c_out = a.b + a.c_in + b.c_in

## Ripple Carry Adder : Sequential 

$$t_{adder} = (n-1) t_f + t_h$$
- where $t_h$ is the half adder ( i.e. the first box )
- and $t_f$ are all the rest of the boxes ( i.e. full adders )

## Carry Select Adder (CSA)
- Group bits into blocks of size $k$
- If we are adding two 32 bit numbers A and B, and k = 4 then the blocks are:

| A32 | A31 | A30 | A29 |
|-----|-----|-----|-----|
| B32 | B31 | B30 | B29 |

...

| A8 | A7 | A6 | A5 |
|----|----|----|----|
| B8 | B7 | B6 | B5 |

| A4 | A3 | A2 | A1 |
|----|----|----|----|
| B4 | B3 | B2 | B1 |

- Produce the result of each block with a small ripple carry adder
- Chapter 7
- Data Path Circuits

# $09/02/2024$

## Floating Point Number ( IEEE754 )

- Generic Form for binary
- $A = \sum_{i = (-n)}^{n}x_i r^i$, where r is the base

# $13/02/2024$
## Normal Floating Point Numbers
$$A = (-1^s) * P * 2^{E-bias}$$
- ($P = 1+M, 0<=M<1, x \in \Z, 1<=E<=254$)
- For a 32 bit representation
  - s : Sign : 1 bit
  - E : Exponent : 8 bits
  - M : Mantissa : 23 bits

|  E  |    M   |        Value        |
|:---:|:------:|:-------------------:|
| 255 |    0   |  $\infin$ for $s=0$ |
|     |        | $-\infin$ for $s=1$ |
| 255 | M != 0 |         NaN         |
|  0  |    0   |          0          |
|  0  | M != 0 |   Denormal Numbers  |

- Smallest number in single point representation is 
$$1*2^{-126}$$
- because mantissa = 0, exponent = 1, sign bit = 1 ( i.e. negative )
- anything smaller this, will get rounded up to zero in a 32 bit single precision representation

# $12/03/2024$
## SimpleRisc V

- SimpleRisc ISA uses 32 bits
- We have 21 instructions
    - add (addition)
    - sub (subtraction)
    - mul (multiplication)
    - div (division)
    - mod (modulus)
    - cmp (compare)
    - and (logical and)
    - or (logical or)
    - not (logical not)
    - mov (move)
    - lsl (logical shift left; shift the bits to the left <<; discard MSB; LSB=0; its like multiplying a number by 2 each time this is called)
    - lsr (logical shift right; shift the bits to the right >>; discard LSB; MSB=0; its like dividing a number by 2 each time this is called)
    - asr (arithmetic shift right)
    - nop (no operation; do nothing; go to the next line)
    - ld (load)
    - st (store)
    - beq (branch if equal to)
    - bgt (branch if greater than)
    - b (unconditional branch)
    - call (syscall)
    - ret (return)
- To enocde 21 operations we need 5 bits to represent them
- $2^4 < 21 < 2^5$
- PC: Program Counter
- Everything is stored in bytes
- So, for 32 bit system, we do PC = PC + 4 for every instruction
- Because $8*4=32$

### 0-Address Instructions
- `nop` and `ret` instructions
- only opcode is passed and nothing else
- no operand

| Total: | 32 bits |
|--------|---------|
| opcode |         |
| 5 bits |         |

### 1-Address Instructions
- `call`, `b`, `beq` and `bgt`
- Fields:
    - 5 bit opcode
    - 27 bit offset (PC relative addressing)
    - since the offset points to a 4 byte word address
        - The actual address computed is : `PC + offset * 4`

| total: | 32bits  |
|--------|---------|
| opcode | offset  |
| 5 bits | 27 bits |

- The address to which we are jumping is by default 32 bits since the system is 32 bits
- We have 27 bits to specify the address we have to jump to
- So, the farthest we can jump is $PC + 2^{27}$
- But we have to somehow truncate it to 27bits because thats what the offset can take
- We could do such that it only takes label which is max 27 bits in size
- Typically, the one address these instructions are using is immediate
- If we start at memory address 1000, next one would be at 1004, then 1008 and so on
- So, the last 2 digits will always be 00 in binary because $4_{10} = 100_2$
- So, we will not store the last 2 bits since they are not varying
- Therefore, we can store $29$bit labels since we have 27 bits + we can add those last two (00) bits at the time of computation
- Now, the farthest we can go is $PC + 2^{29}$

### 2-Address Instructions
- cmp, not and mov
- Use the 3-address instruction format - reg/imm
- remove one field
- CMP

| opcode | I | <blank>                                   | rs1 | rs2/imm |
|--------|---|-------------------------------------------|-----|---------|
| 5      | 1 | can be any 4 bits but compiler won't read | 4   | 18      |
- MOV

| opcode | I | rd | <blank> | rs2/imm |
|--------|---|----|---------|---------|
| 5      | 1 | 4  | 4 (X)   | 18      |
- NOT

| opcode | I | rd | <blank> | rs2/imm |
|--------|---|----|---------|---------|
| 5      | 1 | 4  | 4 (X)   | 18      |

### 3-Address Instructions
- 1 Destination and 2 Source registers
- Instructions : add, sub, mul, div, mod, and, or, lsl, lsr, asr
- <opcode> rd, rd1, <rs2/imm>
- But how would the system know if the 3rd arg is a register or an immediate?
- For that, we use one bit I
- I = 0 > second operand is a register
- I = 1 > second operand is an immediate

- Register Format

| total : | 32 bits |          |          |          |  |
|---------|---------|----------|----------|----------|--|
| opcode  | 0       | dest reg | src reg1 | src reg2 |  |
| op      | I       | rd       | rs1      | rs2      |  |
| 5       | 1       | 4        | 4        | 4        |  |
- Rest 14 bits are unused

- Immediate Format

| total : | 32 bits |          |          |              |              |           |
|---------|---------|----------|----------|--------------|--------------|-----------|
| opcode  | 1       | dest reg | src reg1 | modifier bit | modifier bit | immediate |
| op      | I       | rd       | rs1      |              |              | imm       |
| 5       | 1       | 4        | 4        |              |              | 16        |
- Let us consider addition operation
- We add two numbers 
- First is given in register 1 and the other is given in immediate
- And the ALU is expecting two 32 bit numbers
- But the immediate is only 18 bits
- 2 bits between src reg1 and imm is modifier bit
- Modifier bits - 00 (default), 01 (u), 10 (h)
- Default modifier will assume that the 16 bit number will be converted to 32 bits by sign extension (assumes the number to be signed ALWAYS)
- `u` modifier = unsigned : fill the left of the bits with zero
- `h` modifier = the 16 bit imm number we are dealing with are not the right part but the left part so put the 16 bits as MSB and fill the right parts with zero

### Encoding Instructions
- ld rd, imm[rs1]
- st rd, imm[rs1]

# $14/03/2024$
## SimpleRisc V (RV 32I)
- `V` stands for integer
- 16 general purpose registers
- Since we have 16 registers, we need 4 bits to specify register
- Program Counter is a register in your system
- After every instruction, we need to update the PC by 4 because every instruction takes 32 bits i.e. 4 bytes and everything is considered in bytes
- We move through instructions using PC only
- Instructions are stored in instruction memory not in any register
- Note that RV32I is very strict in context that dest and src1 will always be registers (whereas src2 can be register or immediate)
    - Advantage : Hardware is streamlined
- Out of the 21 instructions, the instruction which creates a problem is `store`
    - I bit will be high(1) because we are using imm
    - The problem is that there is no dest register and it needs 2 src AND an immediate
    - `st rd, imm[rs1]`
    - two source registers and one immediate
    - st [src reg], imm[reg]
    - 2nd argument defines where to store, i.e. address = imm + addr(reg)
    - where to store? address of register rs1 offset by imm
    - 1st arg defines the value to be stored
    - `rd` is not a dest reg
    - it is the value which needs to be stored
    - Store:

    | opcode | I | rd | rs1 | imm |
    |--------|---|----|-----|-----|
    | 5      | 1 | 4  | 4   | 18  |
- General Format of RV32I

| Opcode | I     | rd     | rs1    | rs2/imm  |
|--------|-------|--------|--------|----------|
| 5 bits | 1 bit | 4 bits | 4 bits | 4/* bits |
- In order to parse through instructions, next address = PC + (offset * 4)

## Summarizing Formats
- Branch format : nop, ret, call, b, beq, bgt

| op    | offset |
|-------|--------|
| 28-32 | 1-27   |
- Register format : ALU instructions

| op    | I  | rd    | rs1   | rs2   |
|-------|----|-------|-------|-------|
| 28-32 | 27 | 23-26 | 19-22 | 15-18 |
- Immediate format : ALU, ld/st instructions

| op    | I  | rd    | rs1   | imm   |
|-------|----|-------|-------|-------|
| 28-32 | 27 | 23-26 | 19-22 | 1-18 |
