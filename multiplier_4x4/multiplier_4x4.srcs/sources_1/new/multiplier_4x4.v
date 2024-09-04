`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/18/2023 11:49:00 AM
// Design Name: 
// Module Name: multiplier_4x4
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

module multiplier_4x4(s,a,b);
output [7:0]s;
input [3:0]a,b;
wire cin;
wire [9:0]p;
wire [15:0]w;
wire x;
assign x = 1'b0;
assign cin = 1'b0;
assign s[0]=a[0]&&b[0];
assign w[1]=a[1]&&b[0];
assign w[2]=a[2]&&b[0];
assign w[3]=a[3]&&b[0];
assign w[4]=a[0]&&b[1];
assign w[5]=a[1]&&b[1];
assign w[6]=a[2]&&b[1];
assign w[7]=a[3]&&b[1];
assign w[8]=a[0]&&b[2];
assign w[9]=a[1]&&b[2];
assign w[10]=a[2]&&b[2];
assign w[11]=a[3]&&b[2];
assign w[12]=a[0]&&b[3];
assign w[13]=a[1]&&b[3];
assign w[14]=a[2]&&b[3];
assign w[15]=a[3]&&b[3];
assign s[2]=p[5];
assign s[1]=p[0];
LACA_4BIT M1(p[4],p[3:0],w[7:4],{x,w[3:1]},cin);
LACA_4BIT M2(p[9],p[8:5],w[11:8],{p[4],p[3:1]},cin);
LACA_4BIT M3(s[7],s[6:3],w[15:12],p[9:6],cin);
endmodule


       
       

