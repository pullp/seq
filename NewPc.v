`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:38:20 11/21/2018 
// Design Name: 
// Module Name:    NewPc 
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
module NewPc(
	input [31:0] old_pc,
	output [31:0] new_pc,
	input [31:0] instr,
	input zf
    );
	 
	 wire[31:0] inc_pc;
	 wire[31:0] jpc;
	 wire[31:0] bpc;
	 wire[31:0] imm;
	 
	 reg[31:0] one;
	 
	 initial
		begin
			one = 1;
		end
		
	Add add1 (one, old_pc, inc_pc);
	
	Merge merge (old_pc, instr, jpc);
	
	ImmExtend imm_extend (instr, imm);
	
	Add add2 (inc_pc, imm, bpc);
	
//	module PickPc(
//    input [31:0] npc,
//    input [31:0] bpc,
//    input [31:0] jpc,
//	 input zero_flag,
//	 input [5:0] opcode,
//    output [31:0] new_pc
//    );
	PickPc pick_pc (inc_pc, bpc, jpc, zf, instr[31:26], new_pc);
	 
endmodule
