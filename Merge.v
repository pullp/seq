`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:27:03 11/09/2018 
// Design Name: 
// Module Name:    Merge 
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
module Merge(
    input [31:0] old_pc,
    input [31:0] instr,
	 output [31:0] new_pc
    );
	 assign new_pc = {old_pc[31:26], instr[25:0]};

endmodule
