`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:04:21 11/21/2018 
// Design Name: 
// Module Name:    CodeMem 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module CodeMem(
    input [31:0] pc,
    output [31:0] instr
    );
	reg[31:0] mem[0:255];
	
	initial
		begin
			$readmemb("./code.mem",mem);
		end
	
	assign instr = mem[pc];
endmodule
