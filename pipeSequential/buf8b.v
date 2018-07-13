`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:43:03 03/11/2018 
// Design Name: 
// Module Name:    buf8b 
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
module buf8b(out, in, ctrl);
input [7:0] in;
output reg [7:0] out;
input ctrl;
integer i;

always @(ctrl, in)
begin
if (ctrl)
begin
for (i = 0; i<8 ; i = i+1)
out[i] = in[i];
end
else
for (i = 0; i<8 ; i = i+1)
out[i] = 1'bZ;
end
endmodule
