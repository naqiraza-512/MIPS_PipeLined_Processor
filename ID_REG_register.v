`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/03/2023 12:50:24 PM
// Design Name: 
// Module Name: ID_REG_register
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


module ID_REG_register(
input wire [31:0] PC,
input wire reg_dest,
input wire alu_src,
input wire mem_to_reg,
input wire reg_write,
input wire mem_read,
input wire mem_write,
input wire branch,
input wire alu0,
input wire alu1,
input wire [4:0] rs,
input wire [4:0] rt,
input wire [4:0] rd,
input wire [15:0] imidiate,
input wire [5:0] funct_code,
output reg [31:0] new_PC,
output reg new_reg_dest,
output reg new_alu_src,
output reg new_mem_to_reg,
output reg new_reg_write,
output reg new_mem_read,
output reg new_mem_write,
output reg new_branch,
output reg new_alu0,
output reg new_alu1,
output reg [4:0] new_rs,
output reg [4:0] new_rt,
output reg [4:0] new_rd,
output reg [15:0] new_imidiate,
output reg [5:0] new_funct_code,
input wire clk
    );
    always@(posedge clk)
    begin
    new_PC[31:0] <= PC[31:0];
    new_reg_dest <= reg_dest;
    new_alu_src <= alu_src;
    new_mem_to_reg <= mem_to_reg;
    new_reg_write <= reg_write;
    new_mem_read <= mem_read;
    new_mem_write <= mem_write;
    new_branch <= branch;
    new_alu0 <= alu0;
    new_alu1 <= alu1;
    new_rs[4:0] <= rs[4:0];
    new_rt[4:0] <= rt[4:0];
    new_rd[4:0] <= rd[4:0];
    new_imidiate[15:0] <= imidiate[15:0];
    new_funct_code[5:0] <= funct_code;
    end
endmodule