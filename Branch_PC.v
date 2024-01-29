`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/05/2023 04:24:03 PM
// Design Name: 
// Module Name: Branch_PC
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


module Branch_PC(
    input [32:0] PC,
    input [32:0] Branch_imidiate,
    output reg [32:0] Branching_PC
    );
    always@(*)
        begin
            Branching_PC <= PC + Branch_imidiate;
        end
endmodule
