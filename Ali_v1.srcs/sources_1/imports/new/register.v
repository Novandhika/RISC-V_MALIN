`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/10/2022 10:22:29 AM
// Design Name: 
// Module Name: register
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


module register(
    input clk,wrt_en,rst,start,
    input[4:0] a1, a2, a3,
    input[31:0] wrt,
    output[31:0] rd1, rd2//, ins
    );
    reg[31:0] rf[0:31];
    reg[31:0] r1, r2;
    
   // three ported register file
// read two ports combinationally (A1/RD1, A2/RD2)
// write third port on rising edge of clock (A3/WD3/WE3)
// register 0 hardwired to 0

    initial 
    begin
        $readmemh("C:\\Users\\GanbatteResearch\\Documents\\Ali\\Multicycle_v1\\Multicycle_v1.srcs\\sources_1\\new\\register.list", rf);
    end
    
    

	always @ (posedge clk)
	begin
		
		begin
			if (wrt_en == 1'b1)
			begin
				if (a3 != 5'd0)	// checks so that reg0 can't be overwritten as its
					rf[a3] <= wrt;	// hardwired to 0
			end
		end
	end
	
    always @ (posedge clk)
	begin
	   if (wrt_en && a3 == a1)
	   begin
	       r1 <= wrt;
	       if (wrt_en && a3 == a2)
	       begin
	           r2 <= wrt;
	       end
	       else
	       begin
	           r2 <= rf[a2];
	       end
	   end
	   else
	   begin
	       r1 <= rf[a1];
	       if (wrt_en && a3 == a2)
	       begin
	           r2 <= wrt;
	       end
	       else
	       begin
	           r2 <= rf[a2];
	       end
	   end
	end
	
    assign rd1 = r1;
	assign rd2 = r2;
	//assign ins = rf[a3]; // Jangan lupa dihapus

endmodule
