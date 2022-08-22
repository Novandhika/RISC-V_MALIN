`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/06/2022 04:20:37 PM
// Design Name: 
// Module Name: instr_mem
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


module instr_mem(
	input			clk, rst,
	input[31:0]		addr,
	output[31:0]	instruk
	);
	
	reg[31:0]      out;
	reg [31:0] my_memory_w [0:220];
	wire[31:0]     instr;
	
	
	initial 
    begin
        //$readmemh ( "C:\\Users\\GanbatteResearch\\Documents\\Ali\\Multicycle_v1\\Multicycle_v1.srcs\\sources_1\\new\\instr_mem.list" , my_memory_w ) ;
        $readmemh ( "C:\\Users\\GanbatteResearch\\Documents\\Ali\\instruksi_rvcc.txt" , my_memory_w ) ;
    end
	
	assign instruk = my_memory_w[addr];

endmodule
