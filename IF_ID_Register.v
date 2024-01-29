`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/03/2023 12:20:56 PM
// Design Name: 
// Module Name: IF_ID_Register
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


module IF_ID_register(
input [31:0] new_PC,
input [31:0] instruction,
output reg [31:0] PC,
output reg [31:0] instruction_read,
input clk
    );
    always@(posedge clk)
    begin
    PC <= new_PC;
    instruction_read <= instruction;
    end
endmodule
