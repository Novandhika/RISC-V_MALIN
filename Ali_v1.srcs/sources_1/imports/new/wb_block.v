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


module wb_block(
    input           reg_W_MW,
    input[1:0]      result_Src_MW, 
    input[4:0]      reg_addr3_MW,
    input[31:0]     ALU_outMW, read_Data_MW, PCP4MW,
    output          reg_W_W,
    output[4:0]     reg_addr3_W,
    output[31:0]    Result_W
    );
    
    assign Result_W =   (result_Src_MW==2'b00) ? ALU_outMW :
                        (result_Src_MW==2'b01) ? read_Data_MW : 
                        (result_Src_MW==2'b10) ? PCP4MW : 32'd0;
    assign reg_W_W = reg_W_MW;
    assign reg_addr3_W = reg_addr3_MW;
    
endmodule
