`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/03/2023 12:22:51 PM
// Design Name: 
// Module Name: CPU
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


module CPU(
    input clk
    );
    
    // STAGE 1
    wire [31:0 ]instruction_stage_1;
    wire [31:0] pc_plus_four;
    wire [31:0] Branching_PC;
    wire select_PC;
    stage_one S1(clk, Branching_PC, select_PC, instruction_stage_1, pc_plus_four);
    wire [31:0 ]instruction_IF_ID;
    wire [31:0] pc__IF_ID;
    IF_ID_register IF_ID(pc_plus_four, instruction_stage_1, pc__IF_ID,instruction_IF_ID, clk);
    
    // STAGE 2
    wire reg_dest;
    wire alu_src;
    wire mem_to_reg;
    wire reg_write;
    wire mem_read;
    wire mem_write;
    wire branch;
    wire alu0;
    wire alu1;
    wire [4:0] rs;
    wire [4:0] rt;
    wire [4:0] rd;
    wire [15:0] imidiate;
    wire [5:0] funct_code;
    wire [31:0] pc_stage_2;
    stage_two S2(
            instruction_IF_ID,
            pc__IF_ID,
            clk,
            reg_dest,
            alu_src,
            mem_to_reg,
            reg_write,
            mem_read,
            mem_write,
            branch,
            alu0,
            alu1,
            rs,
            rt,
            rd,
            imidiate,
            funct_code,
            pc_stage_2
            );
            
            wire stage2_reg_dest;
            wire stage2_alu_src;
            wire stage2_mem_to_reg;
            wire stage2_reg_write;
            wire stage2_mem_read;
            wire stage2_mem_write;
            wire stage2_branch;
            wire stage2_alu0;
            wire stage2_alu1;
            wire [4:0] stage2_rs;
            wire [4:0] stage2_rt;
            wire [4:0] stage2_rd;
            wire [15:0] stage2_imidiate;
            wire [5:0] stage2_funct_code;
            wire [31:0] stage2_pc;
            
    ID_REG_register ID_REG(
                        pc_stage_2,
                        reg_dest,
                        alu_src,
                        mem_to_reg,
                        reg_write,
                        mem_read,
                        mem_write,
                        branch,
                        alu0,
                        alu1,
                        rs,
                        rt,
                        rd,
                        imidiate,
                        funct_code,
                        stage2_pc,
                        stage2_reg_dest,
                        stage2_alu_src,
                        stage2_mem_to_reg,
                        stage2_reg_write,
                        stage2_mem_read,
                        stage2_mem_write,
                        stage2_branch,
                        stage2_alu0,
                        stage2_alu1,
                        stage2_rs,
                        stage2_rt,
                        stage2_rd,
                        stage2_imidiate,
                        stage2_funct_code,
                        clk
                        );
    // STAGE 3
    wire [31:0] stage3_pc;
    wire stage3_reg_dest;
    wire stage3_alu_src;
    wire stage3_mem_to_reg;
    wire stage3_reg_write;
    wire stage3_mem_read;
    wire stage3_mem_write;
    wire stage3_branch;
    wire stage3_alu0;
    wire stage3_alu1;
    wire [4:0] stage3_rt;
    wire [4:0] stage3_rd;
    wire [15:0] stage3_imidiate;
    wire [5:0] stage3_funct_code;
    wire [31:0] data_out1;
    wire [31:0] data_out2;
    wire [31:0] write_data;
    wire write_enable;
    wire [4:0]write_back_rd;
    stage_3 S3(
                stage2_pc,
                stage2_reg_dest,
                stage2_alu_src,
                stage2_mem_to_reg,
                stage2_reg_write,
                stage2_mem_read,
                stage2_mem_write,
                stage2_branch,
                stage2_alu0,
                stage2_alu1,
                stage2_rs,
                stage2_rt,
                stage2_rd,
                stage2_imidiate,
                stage2_funct_code,
                write_data,
                write_enable,
                write_back_rd,
                
                stage3_pc,
                stage3_reg_dest,
                stage3_alu_src,
                stage3_mem_to_reg,
                stage3_reg_write,
                stage3_mem_read,
                stage3_mem_write,
                stage3_branch,
                stage3_alu0,
                stage3_alu1,
                stage3_rt,
                stage3_rd,
                stage3_imidiate,
                stage3_funct_code,
                data_out1,
                data_out2,
                clk
                );
   
                wire [31:0]REG_EX_pc;
                wire REG_EX_reg_dest;
                wire REG_EX_alu_src;
                wire REG_EX_mem_to_reg;
                wire REG_EX_reg_write;
                wire REG_EX_mem_read;
                wire REG_EX_mem_write;
                wire REG_EX_branch;
                wire REG_EX_alu0;
                wire REG_EX_alu1;
                wire [4:0]REG_EX_rt;
                wire [4:0]REG_EX_rd;
                wire [15:0]REG_EX_imidiate;
                wire [5:0]REG_EX_funct_code;
                wire [31:0]REG_EX_data_out1;
                wire [31:0]REG_EX_data_out2; 
                
     REG_EX_Register REG_EX(
                     stage3_pc,
                     stage3_reg_dest,
                     stage3_alu_src,
                     stage3_mem_to_reg,
                     stage3_reg_write,
                     stage3_mem_read,
                     stage3_mem_write,
                     stage3_branch,
                     stage3_alu0,
                     stage3_alu1,
                     stage3_rt,
                     stage3_rd,
                     stage3_imidiate,
                     stage3_funct_code,
                     data_out1,
                     data_out2,
                     
                     REG_EX_pc,
                     REG_EX_reg_dest,
                     REG_EX_alu_src,
                     REG_EX_mem_to_reg,
                     REG_EX_reg_write,
                     REG_EX_mem_read,
                     REG_EX_mem_write,
                     REG_EX_branch,
                     REG_EX_alu0,
                     REG_EX_alu1,
                     REG_EX_rt,
                     REG_EX_rd,
                     REG_EX_imidiate,
                     REG_EX_funct_code,
                     REG_EX_data_out1,
                     REG_EX_data_out2,
                     clk
                     );
        
        
       
       // STAGE 4
                     
       wire [31:0] new_PC;
       wire new_mem_to_reg;
       wire new_reg_write;
       wire new_mem_read;
       wire new_mem_write;
       wire new_branch;
       wire [4:0] new_rt;
       wire [31:0] new_data_out2;
       wire [17:0] new_imidiate;
       wire [31:0] stage_4_ALU;   
       wire stage_4_zero;
                     
       stage_4 S4(
       REG_EX_pc,
       REG_EX_reg_dest,
       REG_EX_alu_src,
       REG_EX_mem_to_reg,
       REG_EX_reg_write,
       REG_EX_mem_read,
       REG_EX_mem_write,
       REG_EX_branch,
       REG_EX_alu0,
       REG_EX_alu1,
       REG_EX_rt,
       REG_EX_rd,
       REG_EX_imidiate,
       REG_EX_funct_code,
       REG_EX_data_out1,
       REG_EX_data_out2,
       
       new_PC,
       new_mem_to_reg,
       new_reg_write,
       new_mem_read,
       new_mem_write,
       new_branch,
       new_rt,
       new_data_out2,
       new_imidiate,
       stage_4_ALU,  
       stage_4_zero
       );
       
       
wire [31:0] EX_MEM_PC;
wire EX_MEM_mem_to_reg;
wire EX_MEM_reg_write;
wire EX_MEM_mem_read;
wire EX_MEM_mem_write;
wire EX_MEM_branch;
wire [4:0] EX_MEM_rt;
wire [31:0] EX_MEM_data_out2;
wire [31:0] EX_MEM_ALU;
wire EX_MEM_zero;
       
       EX_MEM_register EX_MEM(
       
              new_PC,
              new_mem_to_reg,
              new_reg_write,
              new_mem_read,
              new_mem_write,
              new_branch,
              new_rt,
              new_data_out2,
              stage_4_ALU,  
              stage_4_zero,
              
              EX_MEM_PC,
              EX_MEM_mem_to_reg,
              EX_MEM_reg_write,
              EX_MEM_mem_read,
              EX_MEM_mem_write,
              EX_MEM_branch,
              EX_MEM_rt,
              EX_MEM_data_out2,
              EX_MEM_ALU,
              EX_MEM_zero,
              clk 
       );
       
       wire s5_mem_to_reg;
       wire [31:0]s5_ALU;
       wire s5_reg_write;
       wire [4:0]s5_rt;
       wire [31:0]s5_memory_data;
       
       stage_5 S5(
       
       EX_MEM_PC,
       EX_MEM_mem_to_reg,
       EX_MEM_reg_write,
       EX_MEM_mem_read,
       EX_MEM_mem_write,
       EX_MEM_branch,
       EX_MEM_rt,
       EX_MEM_data_out2,
       EX_MEM_ALU,
       EX_MEM_zero,
       
       select_PC,
       Branching_PC,
       s5_mem_to_reg,
       s5_ALU,
       s5_reg_write,
       s5_rt,
       s5_memory_data,
       
       clk
        );
        
        
        wire MEM_WB_mem_to_reg;
        wire [31:0]MEM_WB_ALU;
        wire MEM_WB_reg_write;
        wire [4:0]MEM_WB_rt;
        wire [31:0]MEM_WB_memory_data;
        
        MEM_WB_register MEM_WB(
               s5_mem_to_reg,
               s5_ALU,
               s5_reg_write,
               s5_rt,
               s5_memory_data,
               MEM_WB_mem_to_reg,
               MEM_WB_ALU,
               MEM_WB_reg_write,
               write_back_rd,
               MEM_WB_memory_data,
               clk
               );
               
        write_back_enable WBE(
                MEM_WB_ALU,
                MEM_WB_memory_data,
                MEM_WB_mem_to_reg,
                MEM_WB_reg_write,
                clk,
                write_data,
                write_enable);
endmodule
