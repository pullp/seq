`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:34:24 11/28/2018
// Design Name:   ImmExtend
// Module Name:   E:/OneDrive - stu.hit.edu.cn/codes/verilog/seq_v2_1/ImmExtendTest.v
// Project Name:  seq_v2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ImmExtend
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ImmExtendTest;

	// Inputs
	reg [15:0] instr;

	// Outputs
	wire [31:0] out;

	// Instantiate the Unit Under Test (UUT)
	ImmExtend uut (
		.instr(instr), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		instr = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

