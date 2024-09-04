`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/22/2023 08:54:42 AM
// Design Name: 
// Module Name: laca_8bits
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

module laca_8bits(c5,s, a, b, cin);
output [7:0]s;
output c5;
input cin;
input [7:0]a,b;
wire c4;
LACA_4BIT G1(c4,s[3:0], a[3:0], b[3:0], cin);
LACA_4BIT G2(c5,s[7:4], a[7:4], b[7:4], c4); 
endmodule
