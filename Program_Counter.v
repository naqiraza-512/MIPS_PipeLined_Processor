`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/03/2023 11:45:43 AM
// Design Name: 
// Module Name: Program_Counter
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


module Program_Counter(
    output reg [31:0] PC_OUT,
    input [31:0] PC_IN,
    input clk
    );
    initial
        begin
            PC_OUT <= 0;
        end 
    always @ (posedge clk)
        begin
        
        PC_OUT <= PC_IN;
        end
    
endmodule
