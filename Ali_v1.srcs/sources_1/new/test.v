`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/05/2022 08:58:48 PM
// Design Name: 
// Module Name: test
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


module test(

    );
    reg clk, rst;
    reg[2:0]    abc;
    wire[2:0]   cba;
    
    tes1 HAHA
    (
    .clk(clk),
    .rst(rst),
    .abc(abc),
    .cba(cba)
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
       #100 abc = 3'b101;
       #100 abc = 3'b111;
       #100 abc = 3'b110;
       
    end
endmodule

module tes1(
    input clk, rst,
    input[2:0]  abc,
    output[2:0] cba
    );
    reg[2:0]    tata;
    always@(*)
    begin
        tata <= {3{clk}};
    end
    assign cba =  tata & abc;
    
endmodule
