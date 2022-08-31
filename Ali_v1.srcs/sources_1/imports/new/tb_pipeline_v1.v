`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.07.2022 14:26:19
// Design Name: 
// Module Name: tb_pipeline_v1
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


module tb_pipeline_v1(

    );
    
    reg         clk, rst;
    wire[31:0]  PC_I, PC_O, INS_O, REG1, REG2, ALU_O, MEM1, WB_O;
    
    pipeline_v1 PIPELINE1
    (
        .clk(clk), 
        .rst(rst),
        .PC_I(PC_I), 
        .PC_O(PC_O), 
        .INS_O(INS_O), 
        .REG1(REG1), 
        .REG2(REG2), 
        .ALU_O(ALU_O), 
        .MEM1(MEM1),
        .WB_O(WB_O)
    );
    
    initial
    begin
       clk = 1'd1;
       rst = 1'd0;
    end
    
    always
    #5 clk = !clk;
   
   initial
   begin
       //#9 rst = 1'd0;
      // #1 rst = 1'd0;
       //#5 start = 1'd0;
       #895 rst = 1'd1;
       #10 rst = 1'd0;
       
    
    end
    
endmodule
