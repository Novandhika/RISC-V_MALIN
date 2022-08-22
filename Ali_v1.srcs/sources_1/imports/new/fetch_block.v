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


module fetch_block(
    input           clk, rst, PC_src,
    input[31:0]     pc_target,
    output[31:0]    instruction, pc_out, pc_p4
    );
    
    reg[31:0]       pc_in = 0;
    reg[31:0]       pc_plus4 = 0;
    //reg[31:0]       pc_out1;
    wire[31:0]      pc_out11;
    
    program_counter PC //Program Counter
    (
        .clk(clk),
        .rst(rst),
        .pc_in(pc_in),
        .pc_out(pc_out11)
    );
    
    instr_mem  INS
    (
        .clk(clk), 
        .rst(rst),
	    .addr(pc_out11),
	    .instruk(instruction)
    );
    //design_1_wrapper INS_MEM
    //(
    //    .BRAM_PORTA_0_addr(pc_out11),
    //    .BRAM_PORTA_0_clk(clk),
    //    .BRAM_PORTA_0_din(0),
    //    .BRAM_PORTA_0_dout(instruction),
    //    .BRAM_PORTA_0_en(1),
    //    .BRAM_PORTA_0_rst(rst),
    //    .BRAM_PORTA_0_we(0)
    //);
    
    //always@(posedge clk)
    //begin
    //    pc_out1 <= pc_in;
    //end
    
    always@(*)
    begin
    if (~rst)
        begin
            if (PC_src == 1'b1)
            begin
                pc_in <= pc_target;
            end
            else
            begin
                pc_in <= pc_plus4;
            end
            pc_plus4 <= pc_out + 32'd4;
        end
    else
        pc_in = 32'd0;
    end
    
    assign pc_out = pc_out11;
    assign pc_p4 = pc_plus4;
    
endmodule
