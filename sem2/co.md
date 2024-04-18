<style>
*{
font-family: "VictorMono NFM";
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

### 0-Address Instructions ( nop, ret )
- `nop` and `ret` instructions
- only opcode is passed and nothing else
- no operand

| Total: | 32 bits |
|--------|---------|
| opcode |         |
| 5 bits |         |

### 1-Address Instructions ( call, b, beq, bgt )
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

### 2-Address Instructions ( cmp, not, mov )
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

### 3-Address Instructions ( add, sub, mul, div, mod, and, or, lsl, lsr, asr )
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

### Special Encoding Instructions
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

### Store instruction
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

| op    | I  | rd    | rs1   | imm  |
|-------|----|-------|-------|------|
| 28-32 | 27 | 23-26 | 19-22 | 1-18 |

# $19/03/2024$
## SimpleRisc
- Top 5 bits are always fixed for opcode
- In our assignment, we have JAL (jump and link)

## Functions
- Used to prevent repition of similar functionality (increases reusability)
- If a function MUL exists, what to do to call it?
    - Using Program counter
- main function contains a `call` for the function
- after finishing the function, the function has a `ret`
- The function you are calling is called the `callee`

| Caller         | Address |  | Callee | Address to go to |
|----------------|---------|--|--------|------------------|
| Function Call  | P       |  | ...    |                  |
| Return address | P + 4   |  | return | P + 4            |

- Sample code:
```asm
a2:
    add r3, r1, r2
    ret

main:
    mov r1, 3
    mov r2, 5
    store r3, 100[r4]
    call a2
```
- At the `call a2`, the PC is updated with the current address and PC + 4 has been stored in return address register (ra)
- Then we go and do the instructions in the function and once the `ret` is called, the cursor goes to `PC + 4` address to continue the main program
- Note: In the actual RISC-V, we have do not have call because of its simplicity but there is jump and link
- We are using SimpleRisc because of simplicity

## Problems
- How to pass arguments to functions now?
- When i call another instruction like `sub r8, r7, r3` I might not know that the value of r3 has been modified in the function above
- Space Problem <- Use Memory
- Overwrite Problem <- Register Spilling
    - Caller saves the set of registers and then calls the function

## How to handle register spilling
- Caller Saved Function

| Caller            |
|-------------------|
| Saves register    |
| Calls Callee      |
| Restores register |

- Main Function will first store the registers and then calls the function

- Callee Saved Function

| Callee             |
|--------------------|
| Calls Callee       |
| Stores registers   |
| Restores registers |

- Note that the storing and restoring takes place inside the callee function
- When calling the callee, the function will first store the register and then run the callee function
- Main function will not do anything in this case

## Activation Block
- Contains all your arguments
- Kind of a package for each of the function that needs to be stored in the memory
- Everytime we call a function, we have to store this in the memory
- This memory needs to be de-allocated every time we exit the function to prevent memory being fully occupied in complex programs
- Best way to implement this is stack because it can be easily de-allocated

| Activation Block    |
|---------------------|
| Arguments           |
| Return Address      |
| Register Spill Area |
| Local Variables     |

- Stack pointer will start from the top (i.e. 1000 here) and goes down

| Stack | Points |
|-------|--------|
| 1000  | <----  |
| ...   |        |
| 0     |        |

# $20/03/2024$ (Tut)
```asm
bar:
    movi r3 #1
    movi r4 #2
    jal baz
    mov r5 #3
    mul r0 r2 r5
baz:
    add r2 r3 r4
    mov r15 r1
```
- Cannot use same registers in both callee and caller
- Link register is used to strore return address
- i.e. `d = c*3` address is stored in r1 here
- Registers used in caller function are caller saved
- Registers used in callee function are callee function
- By default address are divided in two for each caller and callee
- Link the return address before branching with jal (jump and link)
- Address of the Instructions of the callee are stored in stack
- Downward growth
- After the callee is done with, the stack is collapsed (i.e. memory is de-allocated)

| Stack        |
|--------------|
| mov r15 r1   |
| add r2 r3 r4 |

- Given
    - r15 : PC
    - r1 : Link register (stores the address of the instruction to jump to after return is called in the callee)
    - r2 : stores the return value of the callee

# $21/03/2024$

| main |  | f_1 |  | f_2 |
|------|---|-----|---|-----|
- In this nested function call, inside f_2, return address register (ra) will have the value : PC' + 4 where PC' is the program counter inside f_1
- In f_1, ra = PC + 4, where PC is the original program counter of `main`

| Activation Block    |
|---------------------|
| Arguments           |
| Return Address      |
| Register Spill Area |
| Local Variables     |

- In terms of activation block in context of nested functions,
    - Activation blocks will be defined like this : main -> f_1 -> t_2
    - It will be de-allocated like this : t_2 -> f_1 -> main
    - because of concept of Stack

## Activation Block
- Solved the space problem
    - Activation block for passing as many parameters
- Overwrite problem
- Management of activation block
    - By stack
- Processor Design
    - Fetch
    - Decode
    - Execute
    - Memory Address
    - Write Back
- All instructions have same pattern of execution in RISC V

# $02/04/2024$
## Lecture 25
- Steps in SimpleRisc V
    - Fetching the instruction from memory
    - Updating the Program Counter
- Register file read

# $03/04/2024$ Tutorial

- Macro : like aliases
- Data path : in which data is flowing e.g. through PC, memory, Instruction register, ALU etc
- Control path : controlling the enable switch or controlling select lines in a mux is used through control signal
## Question 2
- part 1 
    1. `Sub R15, #1`
    2. `St Rx, [R15]`
- part 2
    1. `Ld Rx, [R15]`
    2. `add R15, #1` 
- part 3
    1. `mov R2, PC`
    2. `add R2, #1`
    3. `Push R2`
    4. `br[Rx]`
- part 4
    1. `Pop R1`
    2. `br[R1]`

# $05/04/2024$ 

## RV32I ( not same as simple risc )

### LW
- I type instruction
- Datapath : start with `lw` instruction
- lw rd, imm(rs1)
- eg: lw x6, -4(x9)
    - in hex : FFC4A303
    - offset value ; -4
- also, we need to convert our 12 bit imm to 32 bit

| 31:20      | 19:15 | 14:12  | 11:7 | 6:0 |
|------------|-------|--------|------|-----|
| imm [11:0] | rs1   | funct3 | rd   | op  |
| 12         | 5     | 3      | 5    | 7   |

- note: `slt` : set if less than

### SW
- Store
- used the destination field to store part of immediate
- sw x6, 8(x9)
- used the `rd` field for storing the rest of the immediate

| imm[11:5] | rs2 | rs1 | f3 | imm[4:0] | op |
|-----------|-----|-----|----|----------|----|
| 7         | 5   | 5   | 3  | 5        | 7  |

# $06/04/2024$
## D Flip Flop
- Use D Flip Flops in the micro-architecture circuit to control when the instructions pass through different stages
### Hold Time
- The time in which the transistor shuts off to prevent next instruction to pass through when the current instruction is still processing
- And so that the current data remains constant some time even after passing through D input so that next instruction is not sent before needed
- IMP : `HOLD TIME VIOLATION`
### Setup Time
- When we send some data to the D Flip Flop, we need to make it remain there for some `time`, so that we can capture the correctly and so that the data does not go incorrectly due to fluctuation.

| F   | D    | X   | M    | W    |
|-----|------|-----|------|------|
| 8ns | 10ns | 8ns | 12ns | 10ns |

- here, the time between consecutive rising edges of the clock should be 12ns + setup time i.e. max{time taken by each stage} + setup time 
- Memory stage is the critical path here because it takes the longest to complete

## RTL
- Register transfer logic
- Put registers in between micro-architectures to achieve pipelining using RTL for higher performance and efficiency

## Ideal Pipeline
1. All objects should go through the same stages
2. No sharing of resources between any two stages. Otherwise, we cannot make them independent
3. Propagation delay through all the pipeline stages is equal
4. Scheduling of transaction entering the pipeline is not affected by the transactions in other stages
    - true for ideal pipeline
    - however not true for our micro architecture
        - eg: for B <- A + E, we need value from some A <- C + D
        - This is called `data hazard` because of data dependency
## Pipelined processor
- Eg: 
    - IBEX : Implements RV32I with 3 stage pipeline
    - CVA6 : Implements RV32I with 6 stage pipeline
- For our pipeline, we have 5 stages
    1. Fetch
    2. Decode
    3. Execute
    4. Memory
    5. Write-back

| `F`     | `D`     | `X`     | `M`     | `W`     |
|-------|-------|-------|-------|-------|
| ins 5 | ins 4 | ins 3 | ins 2 | ins 1 |

| Clock cycle -> | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 |
|----------------|---|---|---|---|---|---|---|---|---|
| ins 1          | F | D | X | M | W |   |   |   |   |
| ins 2          |   | F | D | X | M | W |   |   |   |
| ins 3          |   |   | F | D | X | M | W |   |   |
| ins 4          |   |   |   | F | D | X | M | W |   |
| ins 5          |   |   |   |   | F | D | X | M | W

## Hazards
- Structural hazards : sharing resources
- Data Hazards : data dependency
- Control Hazards

# $12/04/2024$
## Pipeline Hazards
### Structural Hazard
- An instruction in the pipeline needs a resource being used by another instruciton in the pipeline
- Can happen in unified memory 

# $18/04/2024$
- Fetch (F) Stage: In this stage, the processor fetches the next instruction from memory. It retrieves the instruction address from the program counter (PC) and fetches the corresponding instruction from the instruction memory.

- Decode (D) Stage: In the decode stage, the fetched instruction is decoded to determine the operation to be performed and the operands involved. The necessary control signals and register addresses are generated.

- Execute (X) Stage: The execute stage performs the actual computation or operation specified by the instruction. It may involve arithmetic or logical operations, data manipulation, or control flow decisions. For branch instructions, the branch target address is calculated in this stage.

- Memory (M) Stage: The memory stage is responsible for accessing memory if required by the instruction. It includes operations such as loading data from memory or storing data to memory. Memory operations may involve accessing the data cache or interacting with the main memory.

- Write-back (W) Stage: In the write-back stage, the results of the executed instruction are written back to the appropriate registers. This stage updates the register file with the computed values or the results of memory operations.

# Data Hazards

```asm
add r1, r2, r3
add r4, r1, r5
```

- This is the wrong way to approach this

| Instruction | 1 | 2 | 3 | 4 | 5 | 6 |
|-------------|---|---|---|---|---|---|
| Ins1        | F | D | X | M | W |   |
| Ins2        |   | F | D | X | M | W |
- Here the 2nd instruction needs the value of r1 from the first instruction (data hazard)
- The correct way (stalling until the 1st instruction writes the value of r1 in the writeback stage)

| Instruction | 1 | 2 | 3 | 4 | 5 | 6 |
|-------------|---|---|---|---|---|---|
| Ins1        | F | D | X | M | W |   |
| Ins2        |   | F | D | D | D | D |

- Or by bypassing (selectively forwarding the data)

| Instruction | 1 | 2 | 3 | 4 | 5 | 6 |
|-------------|---|---|---|---|---|---|
| Ins1        | F | D | X | M | W |   |
| Ins2        |   | F | D | X | M | W |
- Here at clock cycle 3 i.e. the execute stage, inst1 passes the data of the dependent register to inst2

#### Feedback to resolve hazards (Bypassing / Stalling)
- Later stages provides dependence info to earlier stages which can stall / forward values.

## Control Hazards
- Control hazards occur due to jumps and branches. We could stall the pipeline, but this decreases performance.
- CPI : Cycles per instruction

| Instructions | 1 | 2 | 3 | 4 | 5 | 6 | 7 |
|--------------|---|---|---|---|---|---|---|
| 1            | F | D | X | M | W |   |   |
| 2            |   | F | D | X | M | W |   |
| 3            |   |   | F | D | X | M | W |
- Here CPI = 1

| Instructions | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 |
|--------------|---|---|---|---|---|---|---|---|---|
| 1            | F | D | X | M | W |   |   |   |   |
| 2            |   |   | F | D | X | M | W |   |   |
| 3            |   |   |   |   | F | D | X | M | W |
- Here we are waiting for the previous instruction to complete decoding before fetching in the next instruction
- So, CPI = 1
- Very conservative method
- Not efficient
- 50% efficiency loss

## Speculate that the next instruction is at address PC + 4
- Note: A branch instruction jumps to its destination at the X (execute) stage

| Instruction | PC  | Operation | 1 | 2 | 3 | 4 | 5   | 6   | 7   |     |
|-------------|-----|-----------|---|---|---|---|-----|-----|-----|-----|
| 1           | 096 | ADD       | F | D | X | M | W   |     |     |     |
| 2           | 100 | B 304     |   | F | D | X | M   | W   |     |     |
| 3           | 104 | ADD       |   |   | F | D | NOP | NOP | NOP | NOP |
| 4           | 304 | ADD       |   |   |   | F | D   | X   | M   | W   |
- Note B 304, is a branch operation pointing to PC = 304
- Killing the operation = replacing stages with NOP : No Operation

| Instruction | PC  | Operation | 1 | 2 | 3 | 4 | 5   | 6   | 7   | 8   | 9 |
|-------------|-----|-----------|---|---|---|---|-----|-----|-----|-----|---|
| 1           | 096 | ADD       | F | D | X | M | W   |     |     |     |   |
| 2           | 100 | B 304     |   | F | D | X | M   | W   |     |     |   |
| 3           | 104 | ADD       |   |   | F | D | NOP | NOP | NOP |     |   |
| 4           | 108 | SUB       |   |   |   | F | NOP | NOP | NOP | NOP |   |
| 5           | 304 | ADD       |   |   |   |   | F   | D   | X   | M   | W |

## Backward / Forward moving branch
- If you have a branch instruction, the compiler will automatically put an instruction independent of the branch operation immediately after the branch instruction in order to prevent killing the instruction
- At max, you can have 2 delay slots in which the compiler can find 2 independent instructions to put next to the branch operation
- If the compiler cannot find any instruction independent of the branch operation, the `compiler` will kill the next instruction instead of the hardware

## Branch Delay Slots
- (expose control hazards to software)
- The instruction that follows a branch is always executed
- Gives compiler the flexibility to put useful instructions where normally a pipeline bubble would have resulted
- Advance branch prediction techniques can dramatically reduce branch penalty

- Note: Implementation of RV32I : SERV
    - 32 Bit architecture but hardware is designed to take 1 bit at a time, so 32 steps to perform one instruction
    - Very lightweight, low power consumption, minimalistic
