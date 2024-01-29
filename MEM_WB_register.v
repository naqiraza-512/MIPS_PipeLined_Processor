`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/03/2023 04:42:52 PM
// Design Name: 
// Module Name: MEM_WB_register
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


module MEM_WB_register(
       input s5_mem_to_reg,
       input [31:0]s5_ALU,
       input s5_reg_write,
       input [4:0]s5_rt,
       input [31:0]s5_memory_data,
       
       output reg MEM_WB_mem_to_reg,
       output reg[31:0]MEM_WB_ALU,
       output reg MEM_WB_reg_write,
       output reg[4:0]MEM_WB_rt,
       output reg[31:0]MEM_WB_memory_data,
       input clk
    );
    
    always @(posedge clk)
    begin
        MEM_WB_mem_to_reg <= s5_mem_to_reg;
        MEM_WB_ALU <= s5_ALU;
        MEM_WB_reg_write <= s5_reg_write;
        MEM_WB_rt <= s5_rt;
        MEM_WB_memory_data <= s5_memory_data;     
    end 
endmodule
