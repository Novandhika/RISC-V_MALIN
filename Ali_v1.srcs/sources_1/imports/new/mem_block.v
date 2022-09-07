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
    input          clk, rst, reg_W_EM, mem_W_EM, save_EM,
    input[1:0]     result_Src_EM, 
    input[2:0]     alu_Ctrl_EM,
    input[4:0]     reg_addr3_EM,
    input[31:0]    ALU_outEM, write_Data_EM, PCP4EM,
    
    output         reg_W_M, save_M, load_Ctr_M,
    output[1:0]    result_Src_M, 
    output[2:0]    alu_Ctrl_M,
    output[4:0]    reg_addr3_M,
    output[31:0]   ALU_outM, read_Data_M, PCP4M
    );
    
    //wire[31:0]     read_data;
    reg             load_ctr;
    reg[3:0]        store;
    wire[31:0]       mem_out;
    
    always@(*)
    begin
        case(alu_Ctrl_EM)
        3'b000 : store <= {3'd0, {mem_W_EM}};
        3'b001 : store <= {2'b00,{2{mem_W_EM}}};
        3'b010 : store <= {4{mem_W_EM}};
        default : store <= 4'd0;
        endcase
        
        load_ctr <= (save_EM^mem_W_EM);
        
        
    end
    
    design_1_wrapper MAIN_MEM
    (
        .BRAM_PORTA_0_addr(ALU_outEM),
        .BRAM_PORTA_0_clk(clk),
        .BRAM_PORTA_0_din(write_Data_EM),
        .BRAM_PORTA_0_dout(mem_out),
        .BRAM_PORTA_0_en(1),
        .BRAM_PORTA_0_rst(rst),
        .BRAM_PORTA_0_we(store)
    );
    
    assign read_Data_M = mem_out; //diganti ya hari kamis pagi
    assign reg_W_M = reg_W_EM;
    assign result_Src_M = result_Src_EM;
    assign reg_addr3_M = reg_addr3_EM;
    assign ALU_outM = ALU_outEM;
    assign PCP4M = PCP4EM;
    assign alu_Ctrl_M = alu_Ctrl_EM;
    assign load_Ctr_M = load_ctr;
    //assign read_Data_M = read_data;
    
endmodule
