`timescale 1ns / 1ps
`include "def.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:06:13 11/21/2018 
// Design Name: 
// Module Name:    ImmOrRt 
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
module ImmOrRt(
    input [31:0] imm,
    input [31:0] rt,
    input [5:0] opcode,
    output [31:0] out
    );
	 assign out = ((opcode == `LDW)
	    || (opcode == `SDW)) ? imm :
									rt;
//	 if((opcode == `LDW)
//	    || (opcode == `SDW))
//		assign out = imm;
//	 else
//	   assign out = rt;


endmodule

