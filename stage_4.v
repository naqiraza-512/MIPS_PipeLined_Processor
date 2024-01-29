`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/03/2023 02:46:13 PM
// Design Name: 
// Module Name: stage_4
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


module stage_4(
          input [31:0]REG_EX_pc,
          input REG_EX_reg_dest,
          input REG_EX_alu_src,
          input REG_EX_mem_to_reg,
          input REG_EX_reg_write,
          input REG_EX_mem_read,
          input REG_EX_mem_write,
          input REG_EX_branch,
          input REG_EX_alu0,
          input REG_EX_alu1,
          input [4:0]REG_EX_rt,
          input [4:0]REG_EX_rd,
          input [15:0]REG_EX_imidiate,
          input [5:0]REG_EX_funct_code,
          input [31:0]REG_EX_data_out1,
          input [31:0] REG_EX_data_out2,
          
          output reg [31:0] new_PC,
          output reg new_mem_to_reg,
          output reg new_reg_write,
          output reg new_mem_read,
          output reg new_mem_write,
          output reg new_branch,
          output reg [4:0] new_rt,
          output reg [31:0] new_data_out2,
          output reg [17:0] new_imidiate,
          output reg [31:0] stage_4_ALU,    
          output reg stage_4_zero
    );
    
    reg [31:0]sign_extended_reg = 0;
    wire [31:0] branch_address;
     
    reg bneg;
    always @(*)
    begin
    sign_extended_reg <= { {16{REG_EX_imidiate[15]}}, REG_EX_imidiate };
    if(REG_EX_branch ||REG_EX_funct_code[1])
        bneg <= 1;
    else
        bneg <= 0; 
    end
    wire [31:0]alusrc_out;
    wire [31:0]ALU_OUT;
    wire [4:0]REG_DST_OUT;
    wire zero;
    mux_2to1 ALU_SRC(REG_EX_data_out2, sign_extended_reg,alusrc_out, REG_EX_alu_src);
    mux_2to1_5bit REG_DST(REG_EX_rt, REG_EX_rd, REG_DST_OUT, REG_EX_reg_dest);
    ALU_32bit ALU(REG_EX_data_out1, alusrc_out, ALU_OUT, zero, bneg);
    Branch_PC BranchPC(REG_EX_pc,sign_extended_reg,branch_address);
    
    
    always@(*)
            begin
            new_PC[31:0] <= branch_address[31:0];
            new_mem_to_reg <= REG_EX_mem_to_reg;
            new_reg_write <= REG_EX_reg_write;
            new_mem_read <= REG_EX_mem_read;
            new_mem_write <= REG_EX_mem_write;
            new_branch <= REG_EX_branch;
            new_rt <= REG_DST_OUT;
            new_data_out2 <= REG_EX_data_out2;
            stage_4_ALU <= ALU_OUT;
            stage_4_zero <= zero;
        end
endmodule
