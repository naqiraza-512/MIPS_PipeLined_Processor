`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/03/2023 04:09:28 PM
// Design Name: 
// Module Name: Data_Memory
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


module Data_Memory(
    input [31:0]address,
    input [31:0]write_data,
    input mem_read,
    input mem_write,
    output reg [31:0] mem_data_out,
    input clk
    );
    reg [31:0] Data_mem [0:255];
    integer file;
    initial 
        begin
            $readmemh("C:/Users/naqi/Documents/1_FAST NU/6_Semester/1_CA/CEP/CEP_V1/CEP_V1/CPU_CEP/CPU_CEP.srcs/sources_1/new/data_memory.txt",Data_mem);
        end
    always@(negedge clk)
        begin
            if(mem_read)
                mem_data_out <= Data_mem[address[7:0]];
                
                $display("Data 1 = %b",Data_mem[0]);
                $display("Data 1 = %b",Data_mem[1]);
                
                
            if(mem_write)
                begin
                    Data_mem[address[7:0]] <= write_data;
                   // file = $fopen("C:/Users/adilm/OneDrive/Desktop/CEP_V1/CPU_CEP/CPU_CEP.srcs/sources_1/new/data_memory.txt", "w");
                  if (file == 0) begin
                   // $display("Error opening the file");
                  end else begin
                  //  $display("File opened successfully");
                  end
                  
                //  $fwrite(file, "%d @%d", write_data, address);
                end
            end
                //Data_mem[write_address[7:0]] = write_data;                
            
endmodule
