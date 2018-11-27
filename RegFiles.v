`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:06:40 11/21/2018 
// Design Name: 
// Module Name:    RegFiles 
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
module RegFiles(
    input CLK,
    input [9:0] rs_rt,
    input [4:0] rwd,
    output [31:0] val_rs,
    output [31:0] val_rt,
    input [31:0] wb_data
    );
	reg [31:0] regs[31:0];
	
	reg [31:0] rs_reg;
	reg [31:0] rt_reg;
	assign val_rs = rs_reg;
	assign val_rt = rt_reg;
	
	integer i;
	initial
		begin
			for(i =0; i<32; i=i+1) regs[i] <=i;
		end
	
	always@(rs_rt or CLK)
	begin
		rs_reg <= regs[rs_rt[9:5]];
		rt_reg <= regs[rs_rt[4:0]];
	end
	
	always@(negedge CLK)
	begin
		//reg[0] should always be 0
		if(rwd != 0)
			regs[rwd] <= wb_data;
	end
	
endmodule
