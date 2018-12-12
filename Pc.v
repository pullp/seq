`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:51:15 11/09/2018 
// Design Name: 
// Module Name:    PCReg 
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
module Pc(
    input CLK,
    input RESET,
    input [31:0] coming_pc,
	 output [31:0] next_pc
    );
	 
	reg[31:0] pc_reg;
	initial pc_reg = 32'b00000000000000000000000000000000;
	assign next_pc = pc_reg; 
	
//	reg[3:0] count = 3'b000;
//	
//	always@(negedge CLK)
//		begin
//			count = count+1;
//		end
	
	always@(posedge RESET, negedge CLK)
		begin
			if (RESET == 1) pc_reg <= 0;
			else	pc_reg <= coming_pc;
		end
		
//	always@(posedge RESET, count)
//		begin
//			if(count != 3'b111) pc_reg <= pc_reg;
//			else if (RESET == 1) pc_reg <= 0;
//			else	pc_reg <= coming_pc;
//		end
		
endmodule
