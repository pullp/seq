`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:35:02 11/28/2018
// Design Name:   Alu
// Module Name:   E:/OneDrive - stu.hit.edu.cn/codes/verilog/seq_v2_1/AluTest.v
// Project Name:  seq_v2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Alu
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module AluTest;

	// Inputs
	reg [31:0] a;
	reg [31:0] b;
	reg [5:0] opcode;

	// Outputs
	wire [31:0] alu_out;
	wire zf;

	// Instantiate the Unit Under Test (UUT)
	Alu uut (
		.a(a), 
		.b(b), 
		.opcode(opcode), 
		.alu_out(alu_out), 
		.zf(zf)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		opcode = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

