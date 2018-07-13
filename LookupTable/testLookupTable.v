`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:31:35 03/21/2018
// Design Name:   lookupTable
// Module Name:   D:/YEH/Study/2017-2018/2018 2nd/CPE433 - ADVANCED DIGITAL SYSTEMS DESIGN/HW5/83755 - yahya mubaideen HW5/LookupTable/testLookupTable.v
// Project Name:  LookupTable
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: lookupTable
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testLookupTable;

	// Inputs
	reg [3:0] addrW;
	reg [3:0] addrR;
	reg WE;
	reg RE;
	reg clk;
	reg [3:0] dataIn;

	// Outputs
	wire [3:0] dataOut;

	// Instantiate the Unit Under Test (UUT)
	lookupTable uut (
		.addrW(addrW), 
		.addrR(addrR), 
		.WE(WE), 
		.RE(RE), 
		.clk(clk), 
		.dataIn(dataIn), 
		.dataOut(dataOut)
	);

	initial begin
		// Initialize Inputs
		addrW = 0;
		addrR = 0;
		WE = 0;
		RE = 0;
		clk = 0;
		dataIn = 0;

		// Wait 100 ns for global reset to finish
		#100;
	end
	
		// Add stimulus here
		initial //clk
		begin
		// Wait 100 ns for global reset to finish
		#100;
		forever
		begin
		#10 clk = ~clk;
		end
		end
		
		initial //RE
		begin
		// Wait 100 ns for global reset to finish
		#100;
		#20 RE = 1'b1;
		end
		
		initial //addrR
		begin
		// Wait 100 ns for global reset to finish
		#100;
		#5;
		#20 addrR = 4'd6;
		#20 addrR = 4'd8;
		#20 addrR = 4'd11;
		#20 addrR = 4'd3;
		end
		
		initial //cleanup
		begin
		// Wait 100 ns for global reset to finish
		#100;
		#105 RE = 1'b0;
		#15 $finish;
		end
      
endmodule

