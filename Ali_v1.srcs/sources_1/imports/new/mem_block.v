`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.07.2022 15:34:33
// Design Name: 
// Module Name: wb_block
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


module mem_block(
    input          clk, rst, reg_W_EM, mem_W_EM,
    input[1:0]     result_Src_EM, 
    input[4:0]     reg_addr3_EM,
    input[31:0]    ALU_outEM, write_Data_EM, PCP4EM,
    
    output         reg_W_M,
    output[1:0]    result_Src_M, 
    output[4:0]    reg_addr3_M,
    output[31:0]   ALU_outM, read_Data_M, PCP4M
    );
    
    //wire[31:0]     read_data;
    
    design_1_wrapper MAIN_MEM
    (
        .BRAM_PORTA_0_addr(ALU_outEM),
        .BRAM_PORTA_0_clk(clk),
        .BRAM_PORTA_0_din(write_Data_EM),
        .BRAM_PORTA_0_dout(read_Data_M),
        .BRAM_PORTA_0_en(1),
        .BRAM_PORTA_0_rst(rst),
        .BRAM_PORTA_0_we({4{mem_W_EM}})
    );
    
    assign reg_W_M = reg_W_EM;
    assign result_Src_M = result_Src_EM;
    assign reg_addr3_M = reg_addr3_EM;
    assign ALU_outM = ALU_outEM;
    assign PCP4M = PCP4EM;
    //assign read_Data_M = read_data;
    
endmodule
