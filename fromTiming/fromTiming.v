`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:32:56 04/24/2018 
// Design Name: 
// Module Name:    fromTiming 
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
module fromTiming(sta,clk,q1,q2);
input sta, clk;
output q1, q2;
wire flag, q1bar;

DFF1 df1(1'b0, 1'b0, q2, sta, flag);
DFF1 df2(flag, clk, q2, 1'bZ, q1);
DFF1 df3(q1, clk, q2, 1'bZ, q1bar);
DFF1 df4(q1bar, ~clk, 1'bZ, 1'bZ, q2);

endmodule
