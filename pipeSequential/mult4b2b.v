`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:00:32 03/08/2018 
// Design Name: 
// Module Name:    mult4b2b 
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
module mult4b2b(a, b, y);
input [3:0] a;
input [1:0] b;
output [7:0] y;

assign y = a*b;
endmodule
