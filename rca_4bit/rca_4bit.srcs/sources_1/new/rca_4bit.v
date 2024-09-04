`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/18/2023 10:01:53 AM
// Design Name: 
// Module Name: rca_4bit
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


module rca_4bit(C4,S,A,B);
output C4;
output [3:0]S;
input [3:0]A,B;
wire C0,C1,C2,C3;
and (C0,A[3],0);
fulladder M1(C1,S[0],A[0],B[0],C0);
fulladder M2(C2,S[1],A[1],B[1],C1);
fulladder M3(C3,S[2],A[2],B[2],C2);
fulladder M4(C4,S[3],A[3],B[3],C3);
endmodule

