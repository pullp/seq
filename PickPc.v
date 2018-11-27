`timescale 1ns / 1ps
`include "def.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:43:07 11/21/2018 
// Design Name: 
// Module Name:    PickPc 
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
module PickPc(
    input [31:0] npc,
    input [31:0] bpc,
    input [31:0] jpc,
	 input zero_flag,
	 input [5:0] opcode,
    output [31:0] new_pc
    );

	 assign new_pc = (opcode == `JUMP) ? jpc :
							(opcode == `BEQ && zero_flag) ? bpc:
							npc;

			
endmodule
