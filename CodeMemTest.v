`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:33:40 11/28/2018
// Design Name:   CodeMem
// Module Name:   E:/OneDrive - stu.hit.edu.cn/codes/verilog/seq_v2_1/CodeMemTest.v
// Project Name:  seq_v2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CodeMem
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module CodeMemTest;

	// Inputs
	reg [31:0] pc;

	// Outputs
	wire [31:0] instr;

	// Instantiate the Unit Under Test (UUT)
	CodeMem uut (
		.pc(pc), 
		.instr(instr)
	);

	initial begin
		// Initialize Inputs
		pc = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

