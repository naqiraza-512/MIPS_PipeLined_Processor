`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/05/2023 12:44:25 PM
// Design Name: 
// Module Name: write_back_enable
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


module write_back_enable(
        input [31:0]MEM_WB_ALU,
        input [31:0]MEM_WB_memory_data,
        input MEM_WB_mem_to_reg,
        input MEM_WB_reg_write,
        input clk,
        output [31:0]write_data,
        output reg reg_write_enable
    );
    
    
    mux_2to1 WB_MUX(MEM_WB_ALU, MEM_WB_memory_data, write_data, MEM_WB_mem_to_reg);  
            always @(*)
            begin
                reg_write_enable <= MEM_WB_reg_write;
            end 
    
endmodule
