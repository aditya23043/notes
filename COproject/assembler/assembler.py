import re
import sys

binary_list = []

def handel_label(line):

    if re.search("[^ :]*:", line):
        match = re.search(r":", line)
        if match:
            span = match.span()
            line = line[span[0] + 2:]
    return line

def get_binary(num, length):
    initBin = ""
    finalBin = ""
    binary = ""

    num = int(num)

    if num > 0:
        binary = str(bin(num)[2:])

        while len(binary) < length:
            binary = "0" + binary


    elif num == 0:
        binary = length*"0"

    else:
        num = abs(num)
        initBin = bin(num)[2:]
        # inverting bits
        for i in range(len(initBin)):
            if initBin[i] == "0":
                finalBin += "1"
            else:
                finalBin += "0"

        # adding 1
        a = str(finalBin)
        b = "1"
        c = bin(int(a,2)+int(b,2))[2:]

        # when converting from binary to int, it removes the extra zeroes on the left
        while len(c) < len(finalBin):
            c = "0" + c

        # 1 for the sign bit
        c = "1" + c
        binary = str(c)

        while len(binary) < length:
            binary = "1" + binary

    return binary

def raiseError(line):
    print(f"\nWrong instruction! >> \n{line}\n")
    exit()

operations = {
    "R": {
        "add": { "opcode": "0110011", "funct3": "000", "funct7": "0000000" },
        "sub": { "opcode": "0110011", "funct3": "000", "funct7": "0100000" },
        "sll": { "opcode": "0110011", "funct3": "001", "funct7": "0000000" },
        "slt": { "opcode": "0110011", "funct3": "010", "funct7": "0000000" },
        "sltu": { "opcode": "0110011", "funct3": "011", "funct7": "0000000" },
        "xor": { "opcode": "0110011", "funct3": "100", "funct7": "0000000" },
        "srl": { "opcode": "0110011", "funct3": "101", "funct7": "0000000" },
        "or": { "opcode": "0110011", "funct3": "110", "funct7": "0000000" },
        "and": { "opcode": "0110011", "funct3": "111", "funct7": "0000000" },
    },
    "I": {
        "lw": { "opcode": "0000011", "funct3": "010" },
        "addi": { "opcode": "0010011", "funct3": "000" },
        "sltiu": { "opcode": "0010011", "funct3": "011" },
        "jalr": { "opcode": "1100111", "funct3": "000" },
    },
    "S": {
        "sw": { "opcode": "0100011", "funct3": "010" },
    },
    "B": {
        "beq": { "opcode": "1100011", "funct3": "000" },
        "bne": { "opcode": "1100011", "funct3": "001" },
        "blt": { "opcode": "1100011", "funct3": "100" },
        "bge": { "opcode": "1100011", "funct3": "101" },
        "bltu": { "opcode": "1100011", "funct3": "110" },
        "bgeu": { "opcode": "1100011", "funct3": "111" },
    },
    "U": {
        "lui": { "opcode": "0110111" },
        "auipc": { "opcode": "0010111" },
    },
    "J": {
        "jal": { "opcode": "1101111" },
    },
}

register_encoding = {
    "zero": "00000",
	"ra": "00001",
	"sp": "00010",
	"gp": "00011",
	"tp": "00100",
    "t0": "00101",
	"t1": "00110",
	"t2": "00111",
	"s0": "01000",
    "fp": "01000",
	"s1": "01001",
    "a0": "01010",
	"a1": "01011",
	"a2": "01100",
	"a3": "01101",
	"a4": "01110",
    "a5": "01111",
	"a6": "10000",
	"a7": "10001",
	"s2": "10010",
	"s3": "10011",
    "s4": "10100",
	"s5": "10101",
	"s6": "10110",
	"s7": "10111",
	"s8": "11000",
    "s9": "11001",
	"s10": "11010",
	"s11": "11011",
	"t3": "11100",
	"t4": "11101",
    "t5": "11110",
	"t6": "11111"
}

def assemble_r_type(instruction):
    rs1 = register_encoding[instruction["rs1"]]
    rs2 = register_encoding[instruction["rs2"]]
    rd = register_encoding[instruction["rd"]]
    return f"{instruction['funct7']}{rs2}{rs1}{instruction['funct3']}{rd}{instruction['opcode']}"

def assemble_i_type(instruction):
    rs1 = register_encoding[instruction["rs1"]]
    rd = register_encoding[instruction["rd"]]
    imm = get_binary(int(instruction["imm"]), 12)
    return f"{imm}{rs1}{instruction['funct3']}{rd}{instruction['opcode']}"

def assemble_s_type(instruction):
    rs1 = register_encoding[instruction["rs1"]]
    rs2 = register_encoding[instruction["rs2"]]
    imm = get_binary(int(instruction["imm"]), 12)
    imm_high = imm[:7]
    imm_low = imm[7:]
    return f"{imm_high}{rs2}{rs1}{instruction['funct3']}{imm_low}{instruction['opcode']}"

def assemble_b_type(instruction):
    rs1 = register_encoding[instruction["rs1"]]
    rs2 = register_encoding[instruction["rs2"]]
    imm = get_binary(int(instruction["imm"]), 12)
    imm = "0" + imm
    return f"{imm[0]}{imm[2:8]}{rs2}{rs1}{instruction['funct3']}{imm[8:12]}{imm[1]}{instruction['opcode']}"

def assemble_u_type(instruction):
    rd = register_encoding[instruction["rd"]]
    imm = get_binary(int(instruction["imm"]), 32)
    return f"{imm[0:20]}{rd}{instruction['opcode']}"

def assemble_j_type(instruction):
    rd = register_encoding[instruction["rd"]]
    temp = get_binary(int(instruction["imm"]), 21)
    imm = ""
    for i in temp[::-1]:
        imm += i
    # return f"{imm[0]}{imm[10:20]}{imm[9]}{imm[1:9]}{rd}{instruction['opcode']}"
    return f"{imm[20]}{imm[1:11]}{imm[10]}{imm[12:20]}{rd}{instruction['opcode']}"

# reading from the file whose path has been passed as argument
with open(sys.argv[1], "r") as f:
    file = f.readlines()

# removing the newline chars from every line
for i in range(len(file)):
    file[i] = file[i][0:-1]

halt_found = False

# parsing through the file and returning binary
for line in file:

    line = handel_label(line)

    # Virtual Halt
    if line == "beq zero,zero,0":
        halt_found = True

    # For Empty Lines
    if line == "":
        continue

    # For R Type instructions
    elif re.search("^add ", line) or re.search("^sub ", line) or re.search("^sll ", line) or re.search("^slt ", line) or re.search("^sltu ", line) or re.search("^xor ", line) or re.search("^srl ", line) or re.search("^or ", line) or re.search("^and ", line):
        op_type = "R"
        operation = ""

        if re.search("^add [^ ]{2,4},[^ ]{2,4},[^ ]{2,4}$", line):
            operation = "add"

        elif re.search("^sub [^ ]{2,4},[^ ]{2,4},[^ ]{2,4}$", line):
            operation = "sub"

        elif re.search("^sll [^ ]{2,4},[^ ]{2,4},[^ ]{2,4}$", line):
            operation = "sll"

        elif re.search("^slt [^ ]{2,4},[^ ]{2,4},[^ ]{2,4}$", line):
            operation = "slt"

        elif re.search("^sltu [^ ]{2,4},[^ ]{2,4},[^ ]{2,4}$", line):
            operation = "sltu"

        elif re.search("^xor [^ ]{2,4},[^ ]{2,4},[^ ]{2,4}$", line):
            operation = "xor"

        elif re.search("^srl [^ ]{2,4},[^ ]{2,4},[^ ]{2,4}$", line):
            operation = "srl"

        elif re.search("^or [^ ]{2,4},[^ ]{2,4},[^ ]{2,4}$", line):
            operation = "or"

        elif re.search("^and [^ ]{2,4},[^ ]{2,4},[^ ]{2,4}$", line):
            operation = "and"

        else:
            raiseError(line)

        instruction = {
            "instruction": operation,
            "opcode": operations[op_type][operation]["opcode"],
            "rd": line[line.find(" ")+1:line.find(",")],
            "rs1": line[line.find(",")+1:line.find(",", line.find(",")+1)],
            "rs2": line[line.find(",", line.find(",")+1)+1:],
            "funct3": operations[op_type][operation]["funct3"],
            "funct7": operations[op_type][operation]["funct7"],
        }
        binary_list.append(assemble_r_type(instruction))

    # I type instructions
    elif re.search("^lw ", line) or re.search("^addi ", line) or re.search("^sltiu ", line) or re.search("^jalr ", line):
        op_type = "I"
        operation = ""
        instruction = {}
        rd = line[line.find(" ")+1:line.find(",")]
        rs1 = line[line.find(",")+1:line.find(",",line.find(",")+1)]
        imm = line[line.find(",", line.find(",")+1)+1:]

        if re.search("^lw [^ ]{2,4},[^ (]*([^ ]{2,4})$", line):
            operation = "lw"
            rd = line[line.find(" ")+1:line.find(",")]
            rs1 = line[line.find("(")+1:line.find(")")]
            imm = line[line.find(",")+1:line.find("(")]

        elif re.search("^addi [^ ]{2,4},[^ ]{2,4},[^ ]*$", line):
            operation = "addi"

        elif re.search("^sltiu [^ ]{2,4},[^ ]{2,4},[^ ]*$", line):
            operation = "sltiu"

        elif re.search("^jalr [^ ]{2,4},[^ ]*([^ ]{2,4})$", line):
            operation = "jalr"

        else:
            raiseError(line)

        instruction = {
            "instruction": operation,
            "opcode": operations[op_type][operation]["opcode"],
            "rd": rd,
            "rs1": rs1,
            "imm": imm,
            "funct3": operations[op_type][operation]["funct3"],
        }
        binary_list.append(assemble_i_type(instruction))

    # S type instruction
    elif re.search("^sw [^ ]{2,4},[^ (]*([^ ]{2,4})$", line):
        op_type = "S"
        operation = "sw"
        rs1 = line[line.find("(")+1:line.find(")")]
        rs2 = line[line.find(" ")+1:line.find(",")]
        imm = line[line.find(",")+1:line.find("(")]
        instruction = {
            "instruction": operation,
            "opcode": operations[op_type][operation]["opcode"],
            "rs1": rs1,
            "rs2": rs2,
            "imm": imm,
            "funct3": operations[op_type][operation]["funct3"],
        }
        binary_list.append(assemble_s_type(instruction))


    # B type instruction
    elif re.search("^beq ", line) or re.search("^bne ", line) or re.search("^blt ", line) or re.search("^bge ", line) or re.search("^bltu ", line) or re.search("^bgeu", line):
        op_type = "B"
        operation = ""
        rs1 = line[line.find(" ")+1:line.find(",")]
        rs2 = line[line.find(",")+1:line.find(",", line.find(",")+1)]
        imm = line[line.find(",", line.find(",")+1)+1:]
        if re.search("^beq [^ ]{2,4},[^ ]{2,4},[^ ]*$", line):
            operation = "beq"

        elif re.search("^bne [^ ]{2,4},[^ ]{2,4},[^ ]*$", line):
            operation = "bne"

        elif re.search("^bge [^ ]{2,4},[^ ]{2,4},[^ ]*$", line):
            operation = "bge"

        elif re.search("^bgeu [^ ]{2,4},[^ ]{2,4},[^ ]*$", line):
            operation = "bgeu"

        elif re.search("^blt [^ ]{2,4},[^ ]{2,4},[^ ]*$", line):
            operation = "blt"

        elif re.search("^bltu [^ ]{2,4},[^ ]{2,4},[^ ]*$", line):
            operation = "bltu"

        else:
            raiseError(line)

        instruction = {
            "instruction": operation,
            "opcode": operations[op_type][operation]["opcode"],
            "rs1": rs1,
            "rs2": rs2,
            "imm": imm,
            "funct3": operations[op_type][operation]["funct3"],
        }
        binary_list.append(assemble_b_type(instruction))

    # U type instruction
    elif re.search("^auipc ", line) or re.search("^lui ", line):
        op_type = "U"
        operation = ""
        rd = line[line.find(" ")+1:line.find(",")]
        imm = line[line.find(",")+1:]
        if re.search("^auipc [^ ]{2,4},[^ ]*$", line):
            operation = "auipc"
        elif re.search("^lui [^ ]{2,4},[^ ]*$", line):
            operation = "lui"

        instruction = {
            "instruction": operation,
            "opcode": operations[op_type][operation]["opcode"],
            "rd": rd,
            "imm": imm,
        }
        binary_list.append(assemble_u_type(instruction))

    # J Type instruction
    elif re.search("^jal [^ ]{2,4},[^ ]*$", line):
        op_type = "J"
        operation = "jal"
        rd = line[line.find(" ")+1:line.find(",")]
        imm = line[line.find(",")+1:]
        if imm.isnumeric() or imm[0]=="-":
            pass
        else:
            found = False
            v1 = file.index(line)
            for a in range(len(file)):
                match = re.search(str(imm),line)
                if match:
                    v2 = a
                    imm = abs(v2-v1)*4
                    found = True
                    break
            if not found:
                raiseError(line)

        instruction = {
            "instruction": operation,
            "opcode": operations[op_type][operation]["opcode"],
            "rd": rd,
            "imm": imm,
        }
        binary_list.append(assemble_j_type(instruction))


    else:
        raiseError(line)

    if halt_found:

        for i in range(len(binary_list)):
            binary_list[i] = binary_list[i] + "\n"

        with open(sys.argv[2], "w") as f:
            f.writelines(binary_list)

        exit()

if not halt_found or file[-1]!="beq zero,zero,0":
    # print("ERROR: Virtual Halt not found or is not being used as the last instruction!")
    exit()
