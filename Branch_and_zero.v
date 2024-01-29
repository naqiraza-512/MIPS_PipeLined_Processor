`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/05/2023 04:39:05 PM
// Design Name: 
// Module Name: Branch_and_zero
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


module Branch_and_zero(
    input Branch,
    input zero,
    output reg select
    );
    
    always@(*)
        begin
            select <= Branch & zero;
        end
    
endmodule
