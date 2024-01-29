# MIPS_PipeLined_Processor
## Overview
This repository contains the Verilog implementation of a 6-stage pipelined processor for the MIPS architecture. The processor supports the following instructions: LW, SW, ADD, SUB, and BNE. The pipeline stages include Instruction Fetch (IF), Instruction Decode (ID), Register Read (RR), Arithmetic Logic Unit (ALU), Memory Access (Mem), and Write Back (WB).

## Pipeline Stages
### IF (Instruction Fetch):

Fetches the instruction from memory.
### ID (Instruction Decode):

Decodes the instruction and extracts necessary fields.
Determines the type of instruction.
### RR (Register Read):

Reads the source registers specified by the instruction.
Provides data to the ALU or registers for subsequent stages.
### ALU (Arithmetic Logic Unit):

Performs arithmetic and logic operations based on the instruction type.
### Mem (Memory Access):

For load (LW) and store (SW) instructions, accesses memory.
For branch (BNE), evaluates the branch condition.
### WB (Write Back):

Writes the result of the ALU operation or loaded data back to the register file.
## Instruction Set
The processor supports the following MIPS instructions:

### LW (Load Word):

Format: LW Rd, offset(Rs)
Loads a 32-bit word from memory into register Rd.
### SW (Store Word):

Format: SW Rs, offset(Rt)
Stores the value in register Rs into memory at the specified offset from the base address in register Rt.
### ADD (Addition):

Format: ADD Rd, Rs, Rt
Adds the values in registers Rs and Rt and stores the result in register Rd.
### SUB (Subtraction):

Format: SUB Rd, Rs, Rt
Subtracts the value in register Rt from the value in register Rs and stores the result in register Rd.
### BNE (Branch Not Equal):

Format: BNE Rs, Rt, offset
Branches to the specified offset if the values in registers Rs and Rt are not equal.


## Acknowledgments
This project is based on the MIPS architecture and is inspired by various educational resources and tutorials. Special thanks to the community and contributors who have shared their knowledge and expertise.

Feel free to reach out for any questions or improvements! Happy coding!
