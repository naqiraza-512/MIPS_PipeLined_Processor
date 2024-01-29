`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/03/2023 11:55:50 AM
// Design Name: 
// Module Name: PC_adder
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


module PC_adder(
    input [31:0]PC_OUT,
    output reg [31:0]PC_plus_4
    );
    always @ (*)
        begin
        PC_plus_4 <= PC_OUT + 1;
        end
endmodule
