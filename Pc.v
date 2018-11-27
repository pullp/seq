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
	assign next_pc = pc_reg; 
	
	initial begin
		pc_reg <= 0;
	end
	
	always@(posedge RESET or negedge CLK)
		begin
			if (RESET == 1) pc_reg <= 0;
			else	pc_reg <= coming_pc;
		end
endmodule
