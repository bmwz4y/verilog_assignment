`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:55:39 04/24/2018
// Design Name:   fromTiming
// Module Name:   C:/Users/20102171058/Desktop/83755 - yahya mubaideen last lab/fromTiming/testFromTiming.v
// Project Name:  fromTiming
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fromTiming
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testFromTiming;

	// Inputs
	reg sta;
	reg clk;

	// Outputs
	wire q1;
	wire q2;

	// Instantiate the Unit Under Test (UUT)
	fromTiming uut (
		.sta(sta), 
		.clk(clk), 
		.q1(q1), 
		.q2(q2)
	);

	initial begin//clk
		// Initialize Inputs
		sta = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
		forever begin #10 clk = ~clk; end
		#90 $finish;
	end
	
		initial begin//STA
		// Initialize Inputs
		sta = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
		#15 sta = 1;
		#21 sta = 0;
		#90 $finish;
	end
      
endmodule

