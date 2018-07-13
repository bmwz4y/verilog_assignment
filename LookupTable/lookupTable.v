`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:12:32 03/21/2018 
// Design Name: 
// Module Name:    lookupTable 
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
module lookupTable(addrW, addrR, WE, RE, clk, dataIn, dataOut);
input [3:0] addrW, addrR;
input WE, RE, clk;
input [3:0] dataIn;
output reg [3:0] dataOut;
reg [3:0] mem [15:0];

initial
begin
mem[0] = 4'd10;
mem[1] = 4'd9;
mem[2] = 4'd9;
mem[3] = 4'd9;
mem[4] = 4'd9;
mem[5] = 4'd8;
mem[6] = 4'd8;
mem[7] = 4'd7;
mem[8] = 4'd6;
mem[9] = 4'd6;
mem[10] = 4'd5;
mem[11] = 4'd4;
mem[12] = 4'd3;
mem[13] = 4'd2;
mem[14] = 4'd1;
mem[15] = 4'd0;
end

always @(posedge clk)
begin
if (WE)
mem[addrW] <= dataIn;
else if (RE)
dataOut <= mem[addrR];
end
endmodule
