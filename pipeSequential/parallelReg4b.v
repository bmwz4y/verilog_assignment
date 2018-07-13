`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:46:14 03/08/2018 
// Design Name: 
// Module Name:    parallelReg4b 
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
module parallelReg4b(res, clk, in, out);
input [3:0] in;
output reg [3:0] out;
input res, clk;

always @(posedge clk, posedge res)
begin
if (res) out <= 0;
else
out <= in;
end
endmodule
