`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2023 05:27:42 PM
// Design Name: 
// Module Name: comp_8bit
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module comp_8bit(E,a,b);
output reg [7:0]E;
input [7:0]a,b;
always @(a,b)
begin
if(a==b)
E=8'b00000010;
else if(a<b)
E=8'b00000001;
else
E=8'b00000000;
end
endmodule
