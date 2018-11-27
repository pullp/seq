`timescale 1ns / 1ps
`include "def.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:55:05 11/21/2018 
// Design Name: 
// Module Name:    InstrDecode 
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
module InstrDecode(
    input [31:0] instr_in,
    output [5:0] opcode,
	 output [9:0] rs_rt,
    output [4:0] rwd,
    output [31:0] instr_out
    );
	
//	reg[4:0] reg_dest;
	
//	assign rs_rt = instr_out[25:16];
	
	reg [9:0] rs_rt_reg;
	reg [4:0] rwd_reg;
	reg [31:0] instr_reg;
	
	assign rs_rt = rs_rt_reg;
	assign rwd = rwd_reg;
	assign instr_out = instr_reg;
	assign opcode = instr_out[31:26];
	
	always@(instr_in)
	begin
		instr_reg <= instr_in;
		rs_rt_reg[9:5] <= instr_in[20:16];
		
		//jump , rt = 0
		if(instr_in[31:26] == `JUMP)
			rs_rt_reg[4:0] <= 5'b0_0000;
		//rt = instr[25:21]
		else if ((instr_in[31:26] == `SDW)
				|| (instr_in[31:26] == `BEQ)
				|| (instr_in[31:26] == `LDW))
			rs_rt_reg[4:0] <= instr_in[25:21];
		//rt = instr[15:11]
		else
			rs_rt_reg[4:0] <= instr_in[15:11];
			
		//ldw, beq, jump don't modify register
		if((instr_in[31:26] == `SDW)
				|| (instr_in[31:26] == `BEQ)
				|| (instr_in[31:26] == `JUMP))
			rwd_reg <= 5'b0_0000;
		// ldw modify value of rt or rd
		else
			rwd_reg <= instr_in[25:21];
	end
endmodule
