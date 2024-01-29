`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/03/2023 11:28:31 AM
// Design Name: 
// Module Name: Instruction_Memory
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


module Instruction_Memory (
  input clk,
  input [31:0] PC,
  output reg [31:0] data
);

  reg [31:0] mem [0:1023];
  initial begin
      $readmemb("C:/Users/naqi/Documents/1_FAST NU/6_Semester/1_CA/CEP/CEP_V1/CEP_V1/CPU_CEP/CPU_CEP.srcs/sources_1/new/instructions.txt", mem);
    end

  always @(posedge clk) begin
    data <= mem[PC[31:0]];
  end

endmodule
