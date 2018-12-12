`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:34:44 11/28/2018
// Design Name:   RegFiles
// Module Name:   E:/OneDrive - stu.hit.edu.cn/codes/verilog/seq_v2_1/RegFilesTest.v
// Project Name:  seq_v2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: RegFiles
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module RegFilesTest;

	// Inputs
	reg CLK;
	reg [9:0] rs_rt;
	reg [4:0] rwd;
	reg [31:0] wb_data;

	// Outputs
	wire [31:0] val_rs;
	wire [31:0] val_rt;

	// Instantiate the Unit Under Test (UUT)
	RegFiles uut (
		.CLK(CLK), 
		.rs_rt(rs_rt), 
		.rwd(rwd), 
		.val_rs(val_rs), 
		.val_rt(val_rt), 
		.wb_data(wb_data)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		rs_rt = 0;
		rwd = 0;
		wb_data = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

