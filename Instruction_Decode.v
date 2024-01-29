`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/03/2023 12:35:22 PM
// Design Name: 
// Module Name: Instruction_Decode
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Instruction_Decode(
input wire [31:0] instruction,
output reg reg_dest,
output reg alu_src,
output reg mem_to_reg,
output reg reg_write,
output reg mem_read,
output reg mem_write,
output reg branch,
output reg alu0,
output reg alu1,
output reg [4:0] rs,
output reg [4:0] rt,
output reg [4:0] rd,
output reg [15:0] imidiate,
output reg [5:0] funct_code
    );
    reg [5:0] opcode;
    always@(*)
        begin
            opcode[5:0] <= instruction[31:26];
            reg_dest <= (~opcode[5]) & (~opcode[4]) & (~opcode[3]) & (~opcode[2]) & (~opcode[1]) & (~opcode[0]);
            mem_read <= (opcode[5]) & (~opcode[4]) & (~opcode[3]) & (~opcode[2]) & (opcode[1]) & (opcode[0]);
            mem_write <= (opcode[5]) & (~opcode[4]) & (opcode[3]) & (~opcode[2]) & (opcode[1]) & (opcode[0]);
            branch <= (~opcode[5]) & (~opcode[4]) & (~opcode[3]) & (opcode[2]) & (~opcode[1]) & (opcode[0]);
            alu_src <= mem_read | mem_write;
            mem_to_reg <= mem_read;
            reg_write <= reg_dest | mem_read;
            alu1 <= reg_dest;
            alu0 <= branch;
            rs[4:0] <= instruction[25:21];
            rt[4:0] <= instruction[20:16];
            rd[4:0] <= instruction[15:11];
            imidiate[15:0] <= instruction[15:0];
            funct_code[5:0] <= instruction[5:0];
    end
endmodule
