`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/03/2023 02:46:36 PM
// Design Name: 
// Module Name: ALU_32bit
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


module ALU_32bit(
    input [31:0]data_in1,
    input [31:0]data_in2,
    output reg [31:0]data_out,
    output reg zero,
    input bneg

    );
    always@(*)
        begin
            if(bneg)
                data_out <= data_in1 - data_in2;
            else
                data_out <= data_in1 + data_in2;
            if(data_out == 0)
                zero <= 1;
            else
                zero <= 0;
        end
endmodule

