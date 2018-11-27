`timescale 1ns / 1ps
`include "def.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:04:41 11/21/2018 
// Design Name: 
// Module Name:    DataMem 
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
module DataMem(
    input CLK,
    input [31:0] addr,
    input [31:0] data,
    input [5:0] opcode,
    output [31:0] out
    );
	 reg [31:0] mems[255:0];
	 
	 reg [31:0] read_data;
	 assign out = read_data;
	 integer i;
	 initial
		begin
			read_data <= 0;
			$readmemb("./data.mem", mems);
		end
	 
	 always@(posedge CLK)
	  begin
			read_data <= mems[addr];
		end
		
	 always@(negedge CLK)
	  begin
	   if(opcode == `SDW)
			mems[addr] <= data;
	  end
endmodule
