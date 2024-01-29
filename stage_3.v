`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/03/2023 01:56:21 PM
// Design Name: 
// Module Name: stage_3
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


module stage_3(
input [31:0] PC,
input reg_dest,
input alu_src,
input mem_to_reg,
input reg_write,
input mem_read,
input mem_write,
input branch,
input alu0,
input alu1,
input [4:0] rs,
input [4:0] rt,
input [4:0] rd,
input [15:0] imidiate,
input [5:0] funct_code,
input [31:0] write_data,
input write_enable,
input [4:0]write_back_rd,

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
output reg [4:0] new_rt,
output reg [4:0] new_rd,
output reg [15:0] new_imidiate,
output reg [5:0] new_funct_code,
output reg [31:0] data_out1,
output reg [31:0] data_out2,
input  clk
    );
    wire [31:0] new_data_out1,new_data_out2;
    Register_File RF(clk, rs, rt, write_back_rd, write_data, write_enable, new_data_out1, new_data_out2);
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
            new_rt[4:0] <= rt[4:0];
            new_rd[4:0] <= rd[4:0];
            new_imidiate[15:0] <= imidiate[15:0];
            new_funct_code[5:0] <= funct_code;
            data_out1 <= new_data_out1;
            data_out2 <= new_data_out2;
        end
    
endmodule
