`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:52:07 03/08/2018 
// Design Name: 
// Module Name:    parallelReg8b 
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
module parallelReg8b(res, clk, in, out);
input [7:0] in;
output reg [7:0] out;
input res, clk;

always @(posedge clk, posedge res)
begin
if (res) out <= 0;
else
out <= in;
end
endmodule
