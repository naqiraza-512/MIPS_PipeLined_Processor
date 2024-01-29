`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/03/2023 03:56:30 PM
// Design Name: 
// Module Name: EX_MEM_register
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


module EX_MEM_register(
          input [31:0] new_PC,
          input new_mem_to_reg,
          input new_reg_write,
          input new_mem_read,
          input new_mem_write,
          input new_branch,
          input [4:0] new_rt,
          input [31:0] new_data_out2,
          input [31:0] stage_4_ALU,    
          input stage_4_zero,

          output reg [31:0] EX_MEM_PC,
          output reg EX_MEM_mem_to_reg,
          output reg EX_MEM_reg_write,
          output reg EX_MEM_mem_read,
          output reg EX_MEM_mem_write,
          output reg EX_MEM_branch,
          output reg [4:0] EX_MEM_rt,
          output reg [31:0] EX_MEM_data_out2,
          output reg [31:0] EX_MEM_ALU,    
          output reg EX_MEM_zero,
          input clk
          
    );
    
    always @(posedge clk)
        begin
            EX_MEM_PC <= new_PC;
            EX_MEM_mem_to_reg <= new_mem_to_reg;
            EX_MEM_reg_write <= new_reg_write;
            EX_MEM_mem_read <= new_mem_read;
            EX_MEM_mem_write <= new_mem_write;
            EX_MEM_branch <= new_branch;
            EX_MEM_rt <= new_rt;
            EX_MEM_data_out2 <= new_data_out2;
            EX_MEM_ALU <= stage_4_ALU;
            EX_MEM_zero <= stage_4_zero; 
        end
endmodule
