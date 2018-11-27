`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:09:01 11/21/2018 
// Design Name: 
// Module Name:    Seq 
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
module Seq(
    input CLK,
    input RESET,
	 output[31:0] pc_out,
	 output[31:0] instr_out,
	 output[31:0] alu_out,
	 output[31:0] memdata_out
    );
	 
	 wire[31:0] old_pc_l;
	 wire[31:0] new_pc_l;
	 wire[31:0] instr_read_l;
	 
	 wire[31:0] instr_l;
	 wire[31:0] imm_l;
	 
	 wire[9:0] rs_rt_l;
	 wire[4:0] rwd_l;
	 
	 wire zf_l;
	 
	 wire[31:0] alu_out_l;
	 wire[31:0] mem_out_l;
	 
	 assign pc_out = old_pc_l;
	 assign instr_out = instr_l;
	 assign alu_out = alu_out_l;
	 assign memdata_out = mem_out_l;
	 assign memdata_out = mem_out_l;
//module Pc(
//    input CLK,
//    input RESET,
//    input [31:0] coming_pc,
//	 output [31:0] next_pc
//    );
	 Pc pc( CLK, RESET, new_pc_l, old_pc_l);

//module NewPc(
//	input [31:0] old_pc,
//	output [31:0] new_pc,
//	input [31:0] instr,
//	input zf
//    );
	 NewPc new_pc (old_pc_l, new_pc_l, instr_l, zf_l);
	 
//module CodeMem(
//    input [31:0] pc,
//    output [31:0] instr
//    );
	 CodeMem code_mem (old_pc_l, instr_read_l);
	 
//module InstrDecode(
//    input [31:0] instr_in,
//    output [5:0] opcode,
//	 output [9:0] rs_rt,
//    output [4:0] rwd,
//    output [31:0] instr_out
//    );
	 
	 wire[5:0] opcode_l;
	 InstrDecode instr_decode (instr_read_l, opcode_l, rs_rt_l, rwd_l, instr_l);
	 
//module ImmExtend(
//    input [31:0] instr,
//	 output [31:0] out
//    );

	ImmExtend imm_extend (instr_l[15:0], imm_l);
	
//module RegFiles(
//    input CLK,
//    input [9:0] rs_rt,
//    input [4:0] rwd,
//    output [31:0] val_rs,
//    output [31:0] val_rt,
//    input [31:0] wb_data
//    );
	wire[31:0] val_rs_l;
	wire[31:0] val_rt_l;
	wire[31:0] wb_data_l;
	RegFiles reg_files (CLK, rs_rt_l, rwd_l, val_rs_l, val_rt_l, wb_data_l);
	
//module ImmOrRt(
//    input [31:0] imm,
//    input [31:0] rt,
//    input [5:0] opcode,
//    output [31:0] out
//    );
	wire[31:0] imm_or_rt_l;
	ImmOrRt imm_or_rt (imm_l, val_rt_l, opcode_l, imm_or_rt_l);
	
//a is rs, b is rt or imm
//module Alu(
//    input [31:0] a,
//    input [31:0] b,
//    input [5:0] opcode,
//    output [31:0] alu_out,
//    output zf
//    );
	Alu alu (val_rs_l, imm_or_rt_l, opcode_l, alu_out_l, zf_l);

//module DataMem(
//    input CLK,
//    input [31:0] addr,
//    input [31:0] data,
//    input [5:0] opcode,
//    output [31:0] out
//    );
	DataMem data_mem (CLK, alu_out_l, val_rt_l, opcode_l, mem_out_l);
	
//module PickWbData(
//    input [31:0] from_mem,
//    input [31:0] not_from_mem,
//    input [5:0] opcode,
//    output [31:0] out
//    );
	PickWbData pick_wb_data (mem_out_l, alu_out_l, opcode_l, wb_data_l);
	
endmodule
