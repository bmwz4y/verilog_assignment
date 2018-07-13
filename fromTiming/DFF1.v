`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:35:08 04/24/2018 
// Design Name: 
// Module Name:    DFF1 
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
module DFF1(d, clk, res, set, q);
input d, clk, res, set; 
output reg q;

always @ ( posedge clk or posedge set or posedge res) begin
 if (res) begin q <= 1'b0; end
 else if (set) begin q<= 1'b1;end
 else begin q <= d; end
end
 
endmodule
