`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/18/2023 08:33:45 AM
// Design Name: 
// Module Name: laca_4bit
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


module LACA_4BIT(C4,S,A,B,C0);
input [3:0]A,B;
input C0;
output [3:0]S;
output C4;
wire C1,C2,C3;
wire [3:0]p,g;
assign p[0]=A[0]^B[0];
assign p[1]=A[1]^B[1];
assign p[2]=A[2]^B[2];
assign p[3]=A[3]^B[3];

assign g[0]=A[0]&B[0];
assign g[1]=A[1]&B[1];
assign g[2]=A[2]&B[2];
assign g[3]=A[3]&B[3];

assign S[0]=p[0]^C0;
assign S[1]=p[1]^C1;
assign S[2]=p[2]^C2;
assign S[3]=p[3]^C3;

assign C1=g[0]|(C0&p[0]);
assign C2=g[1]|(p[1]&(g[0]|(C0&p[0])));
assign C3=g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(C0&p[0])))));
assign C4=g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(C0&p[0])))))));

endmodule