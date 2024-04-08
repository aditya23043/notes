import sys
import re

#   R type instructions
#
#   f7      rs2     rs1     f3      rd      opcode
#   31:25   24:20   19:15   14:12   11:07   06:00
#   00:07   07:12   12:17   17:20   20:25   25:32

reg_val = {}
for i in range(32):
    reg_val[f"x{i}"] = 0

reg_encoding = {
    "00000" : "x0",
    "00001" : "x1",
    "00010" : "x2",
    "00011" : "x3",
    "00100" : "x4",
    "00101" : "x5",
    "00110" : "x6",
    "00111" : "x7",
    "01000" : "x8",
    "01001" : "x9",
    "01010" : "x10",
    "01011" : "x11",
    "01100" : "x12",
    "01101" : "x13",
    "01110" : "x14",
    "01111" : "x15",
    "10000" : "x16",
    "10001" : "x17",
    "10010" : "x18",
    "10011" : "x19",
    "10100" : "x20",
    "10101" : "x21",
    "10110" : "x22",
    "10111" : "x23",
    "11000" : "x24",
    "11001" : "x25",
    "11010" : "x26",
    "11011" : "x27",
    "11100" : "x28",
    "11101" : "x29",
    "11110" : "x30",
    "11111" : "x31"
}

# pass as int cuz
# but it returns as a string
def decimalToBinary(dec):
    temp = ""
    if dec == 0:
        return 0
    elif dec > 0:
        bin_s = ""
        while dec > 0:
            bin_s += str(dec % 2)
            dec = dec // 2
        bin_i = int(bin_s[::-1])
        return str("0" + str(bin_i)) if str(bin_i)[0] == "1" else bin_i
    else:
        for i in str(decimalToBinary(int(str(dec)[1:]))):
            temp += "0" if i == "1" else "1"
        plus_1 = str(decimalToBinary(binaryToDecimal(temp)+1))

        # added zeros as padding
        plus_1 = plus_1[::-1]
        while len(temp) != len(plus_1):
            plus_1 += "0"
        plus_1 = plus_1[::-1]
        return int("1" + plus_1)

# pass as string because we do not want to loose the zeros at the MSBs
def binaryToDecimal(binary):
    dec = 0
    temp = ""
    if binary[0] == "0":
        for i in range(len(binary)):
            if binary[i] == "1":
                dec += pow(2,int(len(binary)-1)-i)
        return(dec)
    else:
        for i in binary:
            temp += "0" if i == "1" else "1"
        dec = binaryToDecimal(temp)
        return int("-" + f"{dec}")-1

# read from the binary file
with open(sys.argv[1], "r") as f:
    lines = f.readlines()

# remove \n characters from each line using a "sed" like function in the re module
for i in range(len(lines)):
    lines[i] = re.sub("\n", "", lines[i])

# parse through the lines
for line in lines:

    opcode = line[25:32]

    # R TYPE INSTRUCTIONS
    if opcode == "0110011":
        funct7 = line[0:7]
        rs2 = line[7:12]
        rs1 = line[12:17]
        funct3 = line[17:20]
        rd = line[20:25]
        if funct3 == "000" and funct7 == "0000000":
            reg_val[reg_encoding[rd]] = reg_val[reg_encoding[rs1]] + reg_val[reg_encoding[rs2]]
        elif funct3 == "000" and funct7 == "0100000":
            reg_val[reg_encoding[rd]] = reg_val[reg_encoding[rs1]] - reg_val[reg_encoding[rs2]]
        elif funct3 == "001" and funct7 == "0000000":
            reg_val[reg_encoding[rd]] = reg_val[reg_encoding[rs1]] << reg_val[reg_encoding[rs2]]
        elif funct3 == "010" and funct7 == "0000000":
            if reg_val[reg_encoding[rs1]] < reg_val[reg_encoding[rs2]]:
                reg_val[reg_encoding[rd]] = 1 
        elif funct3 == "011" and funct7 == "0000000":
            print("sltu")
        elif funct3 == "100" and funct7 == "0000000":
            print("xor")
        elif funct3 == "101" and funct7 == "0000000":
            reg_val[reg_encoding[rd]] = reg_val[reg_encoding[rs1]] >> reg_val[reg_encoding[rs2]]
        elif funct3 == "110" and funct7 == "0000000":
            print("or")
        elif funct3 == "111" and funct7 == "0000000":
            print("and")

    elif opcode == "0000011" or opcode == "0010011" or opcode == "1100111":
        print("I")

    elif opcode == "0100011":
        print("S")

    elif opcode == "1100011":
        print("B")

    elif opcode == "0110111" or opcode == "0010111":
        print("U")

    elif opcode == "1101111":
        print("J")

    else:
        print ("Invalid Type")
