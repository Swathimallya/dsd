`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/14/2023 03:24:19 PM
// Design Name: 
// Module Name: full_adder
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


module full_adder(c,s,x,y,cin);
output c,s;
input x,y,cin;
wire [2:0]w;
half_adder M1(w[1],w[0],x,y);
half_adder M2(w[2],s,w[0],cin);
or G1(c,w[1],w[2]);
endmodule
