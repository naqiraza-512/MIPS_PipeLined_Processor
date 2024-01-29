`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/03/2023 12:37:51 PM
// Design Name: 
// Module Name: stage_two
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


module stage_two(
    input[31:0] instruction,
    input [31:0] pc,
    input clk,
    output  reg_dest,
    output  alu_src,
    output  mem_to_reg,
    output  reg_write,
    output  mem_read,
    output  mem_write,
    output  branch,
    output  alu0,
    output  alu1,
    output  [4:0] rs,
    output  [4:0] rt,
    output  [4:0] rd,
    output  [15:0] imidiate,
    output  [5:0] funct_code,
    output reg [31:0] pc_stage_2
    );
    
    Instruction_Decode ID(
        instruction,
        reg_dest,
        alu_src,
        mem_to_reg,
        reg_write,
        mem_read,
        mem_write,
        branch,
        alu0,
        alu1,
        rs,
        rt,
        rd,
        imidiate,
        funct_code
        );
        
        always @ (*)
        begin
        pc_stage_2 <= pc;
        end 
endmodule
