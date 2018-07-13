`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:54:27 03/08/2018 
// Design Name: 
// Module Name:    bitwiseInvert8b 
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
module bitwiseInvert8b(a, b);
input [7:0] a;
output reg [7:0] b;
integer i;

always @(a)
for(i = 0; i<8; i = i+1)
b[i] = a[7-i];
endmodule
