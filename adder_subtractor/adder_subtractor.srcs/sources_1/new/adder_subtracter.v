`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2023 06:13:25 PM
// Design Name: 
// Module Name: adder_subtracter
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


module adder_subtracter(co,s,a,b,cin);
output reg [7:0]s;
output co;
input [7:0]a,b;
input cin;
wire [7:0]Q,P,R,G;
wire C4,M,N;
assign R=b^cin;
assign Q=P^N;
assign M=!C4;
assign N=M&&cin;
assign G[7:0]=a[0]&&0;
laca_4bit M1(P,C4,a,R,cin);
laca_4bit M2(s,co,G,Q,N);
endmodule

