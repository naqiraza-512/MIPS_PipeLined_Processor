`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/03/2023 01:54:33 PM
// Design Name: 
// Module Name: Register_File
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


module Register_File (
  input clk,
  input [4:0] read_addr1,
  input [4:0] read_addr2,
  input [4:0] write_addr,
  input [31:0] write_data,
  input write_enable,
  output reg [31:0] read_data1,
  output reg [31:0] read_data2
);

  reg [31:0] registers [0:31];
  integer i;
  initial 
    begin
        for (i = 0; i < 31; i = i + 1) begin
        registers[i] <= i;
        end
    end 
   always@*
   begin
  read_data1 <= registers[read_addr1];
  read_data2 <= registers[read_addr2];
    end
  always @(posedge clk) begin
      if (write_enable) begin
        if(write_addr)
            registers[write_addr] <= write_data;
      end
  end
endmodule
