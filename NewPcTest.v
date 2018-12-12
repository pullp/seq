`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:32:35 11/28/2018
// Design Name:   NewPc
// Module Name:   E:/OneDrive - stu.hit.edu.cn/codes/verilog/seq_v2_1/NewPcTest.v
// Project Name:  seq_v2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: NewPc
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module NewPcTest;

	// Inputs
	reg [31:0] old_pc;
	reg [31:0] instr;
	reg zf;

	// Outputs
	wire [31:0] new_pc;

	// Instantiate the Unit Under Test (UUT)
	NewPc uut (
		.old_pc(old_pc), 
		.new_pc(new_pc), 
		.instr(instr), 
		.zf(zf)
	);

	initial begin
		// Initialize Inputs
		old_pc = 0;
		instr = 0;
		zf = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

