`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/05/2023 03:28:14 PM
// Design Name: 
// Module Name: new_tb_CPU
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


module new_tb_CPU();
reg clk;
wire [31:0] ins_reg1;
wire [31:0]var;
wire [4:0] rs_st2;
wire [4:0] rt_st2;
wire [4:0] rd_st2;
wire [4:0] rt_st3;
wire [4:0] rd_st3;
wire [31:0] stage3_dataout1;
wire [31:0] stage3_dataout2;
wire [31:0] stage4_ALU;
wire [4:0] rd_st4;
wire [4:0] rd_st5;
wire [31:0] stage5_reg_data;
wire [31:0] stage5_mem_data;
wire [31:0] stage5_mem_to_reg;
wire [31:0] write_data;
wire write_enable;
CPU dut2(clk);
assign var = dut2.pc_plus_four;
assign ins_reg1 = dut2.instruction_IF_ID;
assign rs_st2 = dut2.stage2_rs;
assign rt_st2 = dut2.stage2_rt;
assign rd_st2 = dut2.stage2_rd;
assign rt_st3 = dut2.REG_EX_rt;
assign rd_st3 = dut2.REG_EX_rd;
assign stage3_dataout1 = dut2.REG_EX_data_out1;
assign stage3_dataout2 = dut2.REG_EX_data_out2;
assign stage4_ALU = dut2.EX_MEM_ALU;
assign rd_st4 = dut2.EX_MEM_rt;
assign rd_st5 = dut2.write_back_rd;
assign stage5_reg_data = dut2.MEM_WB_ALU;
assign stage5_mem_data = dut2.MEM_WB_memory_data;
assign write_enable = dut2.write_enable;
assign write_data = dut2.write_data;
assign stage5_mem_to_reg = dut2.MEM_WB_mem_to_reg;

initial
    begin
    clk=0;
    #5
    clk=1;
    #5
    clk=0;
    #5
    clk=1;
    #5
    clk=0;
    #5
    clk=1;
    #5
    clk=0;
    #5
    clk=1;
    #5
    clk=0;
    #5
    clk=1;
    #5
    clk=0;
    #5
    clk=1;
    #5
     clk=0;
    #5
    clk=1;
    #5
    clk=0;
    #5
    clk=1;
    #5
    clk=0;
    #5
    clk=1;
    #5
    clk=0;
    #5
    clk=1;
    #5
    clk=0;
    #5
    clk=1;
    #5 
    clk=0;
    #5
    clk=1;
    #5 
    clk=0;
    #5
    clk=1;
    #5 
    clk=0;
    #5
    clk=1;
    #5 
    clk=0;
    #5
    clk=1;
    #5   
    clk=0;
    #5
    clk=1;
    #5
    clk=0;
    #5
    clk=1;
    #5  
    clk=0;
    #5
    clk=1;
    #5  
    
    clk=0;
    #5
    clk=1;
    #5     
 
    
    $finish;
    end
endmodule
