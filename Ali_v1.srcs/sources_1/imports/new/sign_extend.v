`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/01/2022 10:24:43 PM
// Design Name: 
// Module Name: sign_extend
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


module sign_extend(
    input[1:0]      imm_Src_D,
    input[31:0]     instr,
    output[31:0]    extended
    );
    
    reg[31:0]       result;
    
    always@(*)
    begin
        case(imm_Src_D)
        2'b00 :
            begin
                result <= {{20{instr[31]}}, instr[31:20]};
            end
        2'b01 :
            begin
                result <=  {{20{instr[31]}}, instr[31:25], instr[11:7]};
            end
        2'b10 :
            begin
                result <= {{20{instr[31]}}, instr[7], instr[30:25], instr[11:8], 1'b0};
            end
        2'b11 :
            begin
                result <= {{12{instr[31]}}, instr[19:12], instr[20], instr[30:21], 1'b0};
            end
        endcase
    end
    
    assign extended = result;
endmodule
