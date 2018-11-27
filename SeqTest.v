`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:49:06 11/22/2018
// Design Name:   Seq
// Module Name:   E:/OneDrive - stu.hit.edu.cn/codes/verilog/seq_v2/SeqTest.v
// Project Name:  seq_v2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Seq
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module SeqTest;

	// Inputs
	reg CLK;
	reg RESET;

	// Instantiate the Unit Under Test (UUT)
	Seq uut (
		.CLK(CLK), 
		.RESET(RESET)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		RESET = 0;

		// Wait 100 ns for global reset to finish
		#100;
		RESET = 1;
		#10;
		RESET = 0;
		#10;
        

		// Add stimulus here
		while(1>0)
			begin
			CLK = ~CLK;
			#40;
			end
	end
      
endmodule

