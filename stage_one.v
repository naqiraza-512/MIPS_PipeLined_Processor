`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/03/2023 12:03:39 PM
// Design Name: 
// Module Name: stage_one
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


module stage_one(
    input clk,
    input [31:0] branch,
    input select_pc,
    output [31:0]instruction,
    output [31:0] PC_PLUS_4
    );
    wire [31:0]PC_OUT;
    wire [31:0]PC_IN;
    Program_Counter PC(PC_OUT, PC_IN,clk);
    PC_adder adder_pc(PC_OUT, PC_PLUS_4);
    mux_2to1 PC_MUX(PC_PLUS_4, branch, PC_IN, select_pc);
    Instruction_Memory IM(clk, PC_OUT, instruction);
endmodule
