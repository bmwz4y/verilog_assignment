`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:10:17 03/08/2018 
// Design Name: 
// Module Name:    pipeSequential 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module pipeSequential(extDin, res, clk, Din, c1, extDout);
input [3:0] extDin;
input res, clk, c1;
input [1:0] Din;
output [7:0] extDout;

wire [3:0] wPR4bMultSE;
wire [7:0] wMultPR8b, wSEPR8b, wPR8bC1, wPR8bIC1, wC1BWI8b, wBWI8bPR8b;

parallelReg4b pr4b1(res, clk, extDin, wPR4bMultSE);
mult4b2b m4b2b1(wPR4bMultSE, Din, wMultPR8b);
signExtend4b8b se4b8b1(wPR4bMultSE, wSEPR8b);
parallelReg8b pr8b1(res, clk, wMultPR8b, wPR8bC1);
parallelReg8b pr8b2(res, clk, wSEPR8b, wPR8bIC1);
buf8b bf1(wC1BWI8b, wPR8bC1, c1);
buf8b bf2(wC1BWI8b, wPR8bIC1, ~c1);
bitwiseInvert8b bwi8b1(wC1BWI8b, wBWI8bPR8b);
parallelReg8b pr8b3(res, clk, wBWI8bPR8b, extDout);
endmodule
