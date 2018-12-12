`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:35:22 11/28/2018
// Design Name:   DataMem
// Module Name:   E:/OneDrive - stu.hit.edu.cn/codes/verilog/seq_v2_1/DataMemTest.v
// Project Name:  seq_v2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DataMem
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module DataMemTest;

	// Inputs
	reg CLK;
	reg [31:0] addr;
	reg [31:0] data;
	reg [5:0] opcode;

	// Outputs
	wire [31:0] out;

	// Instantiate the Unit Under Test (UUT)
	DataMem uut (
		.CLK(CLK), 
		.addr(addr), 
		.data(data), 
		.opcode(opcode), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		addr = 0;
		data = 0;
		opcode = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

