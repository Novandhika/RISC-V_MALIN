`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2022 14:13:00
// Design Name: 
// Module Name: tb_pipeline_bram1
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


module tb_pipeline_bram1(

    );
    
    reg         clk, rst;
    wire[31:0] INS_O;
    
    pipeline_bram_v1 PIPELINEBRAM1
    (
        .clk(clk), 
        .rst(rst),
        .INS_O(INS_O) 
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
//       #495 rst = 1'd1;
//       #10 rst = 1'd0;
       
    
    end
endmodule
