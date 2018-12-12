`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:34:01 11/28/2018
// Design Name:   InstrDecode
// Module Name:   E:/OneDrive - stu.hit.edu.cn/codes/verilog/seq_v2_1/InstrDecodeTest.v
// Project Name:  seq_v2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: InstrDecode
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module InstrDecodeTest;

	// Inputs
	reg [31:0] instr_in;

	// Outputs
	wire [5:0] opcode;
	wire [9:0] rs_rt;
	wire [4:0] rwd;
	wire [31:0] instr_out;

	// Instantiate the Unit Under Test (UUT)
	InstrDecode uut (
		.instr_in(instr_in), 
		.opcode(opcode), 
		.rs_rt(rs_rt), 
		.rwd(rwd), 
		.instr_out(instr_out)
	);

	initial begin
		// Initialize Inputs
		instr_in = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

