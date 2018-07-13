`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:04:17 03/08/2018 
// Design Name: 
// Module Name:    signExtend4b8b 
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
module signExtend4b8b(in, out);
input [3:0] in;
output reg [7:0] out;
integer i;

always @(in)
begin
for (i=0; i<4; i = i+1)
out[i] = in[i];
for (i=4; i<8; i = i+1)
out[i] = in[3];
end
endmodule
