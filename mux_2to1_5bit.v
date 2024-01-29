`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/03/2023 03:29:27 PM
// Design Name: 
// Module Name: mux_2to1_5bit
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


module mux_2to1_5bit(
    input [4:0] a,
    input [4:0] b,
    output reg [4:0] c,
    input select
    );
    always @(*)
    begin
    if (select)
        c <= b;
    else
        c <= a;
    end
endmodule
