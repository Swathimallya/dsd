`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/22/2023 09:08:55 AM
// Design Name: 
// Module Name: add_sub
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
module add_sub(cout,S,A,B,cin);
output cout;
output [7:0]S;
input [7:0]A,B;
input cin;
wire [7:0]Q,P,R,G;
wire C4,M,N;
assign R[0]=B[0]^cin;
assign R[1]=B[1]^cin;
assign R[2]=B[2]^cin;
assign R[3]=B[3]^cin;
assign R[4]=B[4]^cin;
assign R[5]=B[5]^cin;
assign R[6]=B[6]^cin;
assign R[7]=B[7]^cin;

assign Q[0]=P[0]^N;
assign Q[1]=P[1]^N;
assign Q[2]=P[2]^N;
assign Q[3]=P[3]^N;
assign Q[4]=P[4]^N;
assign Q[5]=P[5]^N;
assign Q[6]=P[6]^N;
assign Q[7]=P[7]^N;

assign M=!cout;

assign N=M&&cin;

assign G=7'b0000000;
laca_8bits M1(cout,P,A,R,cin);
laca_8bits M2(C4,S,G,Q,N);
endmodule