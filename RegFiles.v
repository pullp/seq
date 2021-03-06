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
	
	always@(*)
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
	
    initial
        begin
            regs[0] <= 32'b00000000000000000000000000000000;
            regs[1] <= 32'b00000000000000000000000000000001;
            regs[2] <= 32'b00000000000000000000000000000010;
            regs[3] <= 32'b00000000000000000000000000000011;
            regs[4] <= 32'b00000000000000000000000000000100;
            regs[5] <= 32'b00000000000000000000000000000101;
            regs[6] <= 32'b00000000000000000000000000000110;
            regs[7] <= 32'b00000000000000000000000000000111;
            regs[8] <= 32'b00000000000000000000000000001000;
            regs[9] <= 32'b00000000000000000000000000001001;
            regs[10] <= 32'b00000000000000000000000000001010;
            regs[11] <= 32'b00000000000000000000000000001011;
            regs[12] <= 32'b00000000000000000000000000001100;
            regs[13] <= 32'b00000000000000000000000000001101;
            regs[14] <= 32'b00000000000000000000000000001110;
            regs[15] <= 32'b00000000000000000000000000001111;
            regs[16] <= 32'b00000000000000000000000000010000;
            regs[17] <= 32'b00000000000000000000000000010001;
            regs[18] <= 32'b00000000000000000000000000010010;
            regs[19] <= 32'b00000000000000000000000000010011;
            regs[20] <= 32'b00000000000000000000000000010100;
            regs[21] <= 32'b00000000000000000000000000010101;
            regs[22] <= 32'b00000000000000000000000000010110;
            regs[23] <= 32'b00000000000000000000000000010111;
            regs[24] <= 32'b00000000000000000000000000011000;
            regs[25] <= 32'b00000000000000000000000000011001;
            regs[26] <= 32'b00000000000000000000000000011010;
            regs[27] <= 32'b00000000000000000000000000011011;
            regs[28] <= 32'b00000000000000000000000000011100;
            regs[29] <= 32'b00000000000000000000000000011101;
            regs[30] <= 32'b00000000000000000000000000011110;
            regs[31] <= 32'b00000000000000000000000000011111;
        end
endmodule
