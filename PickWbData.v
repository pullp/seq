`timescale 1ns / 1ps
`include "def.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:08:24 11/21/2018 
// Design Name: 
// Module Name:    PickWbData 
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
module PickWbData(
    input [31:0] from_mem,
    input [31:0] not_from_mem,
    input [5:0] opcode,
    output [31:0] out
    );
    
	 assign out = (opcode == `LDW) ? from_mem : not_from_mem;



endmodule
