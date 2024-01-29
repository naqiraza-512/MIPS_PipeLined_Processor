`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/03/2023 04:25:28 PM
// Design Name: 
// Module Name: stage_5
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


module stage_5(
          input [31:0] EX_MEM_PC,
          input EX_MEM_mem_to_reg,
          input EX_MEM_reg_write,
          input EX_MEM_mem_read,
          input EX_MEM_mem_write,
          input EX_MEM_branch,
          input [4:0] EX_MEM_rt,
          input [31:0] EX_MEM_data_out2,
          input [31:0] EX_MEM_ALU,    
          input EX_MEM_zero,
          
          output reg Output_PC_Select,
          output reg [31:0]PC_Branch,
          output reg new_mem_to_reg,
          output reg [31:0]new_ALU,
          output reg new_reg_write,
          output reg [4:0]new_rt,
          output reg [31:0]new_memory_data,
          input clk
    );
    
    wire [31:0]memory_data;
    Data_Memory DM(
            EX_MEM_ALU,
            EX_MEM_data_out2,
            EX_MEM_mem_read,
            EX_MEM_mem_write,
            memory_data,
            clk
            );
    wire PC_select; 
    Branch_and_zero PC_Select(EX_MEM_branch ,EX_MEM_zero, PC_select);
    always @(posedge clk)
            begin
                Output_PC_Select <= PC_select;
                PC_Branch <= EX_MEM_PC;
                new_mem_to_reg <= EX_MEM_mem_to_reg;
                new_ALU <= EX_MEM_ALU;
                new_reg_write <= EX_MEM_reg_write;
                new_rt <= EX_MEM_rt;
                new_memory_data <= memory_data;
            end
endmodule
