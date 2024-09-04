`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/18/2023 07:28:04 AM
// Design Name: 
// Module Name: rca
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


module rca(c7,s,a,b,cin);
output c7;
output [7:0]s;
input [7:0]a,b;
input cin;
wire [6:0]c;
full_adder m1(c[0],s[0],a[0],b[0],cin);
full_adder m2(c[1],s[1],a[1],b[1],c[0]);
full_adder m3(c[2],s[2],a[2],b[2],c[1]);
full_adder m4(c[3],s[3],a[3],b[3],c[2]);
full_adder m5(c[4],s[4],a[4],b[4],c[3]);
full_adder m6(c[5],s[5],a[5],b[5],c[4]);
full_adder m7(c[6],s[6],a[6],b[6],c[5]);
full_adder m8(c7,s[7],a[7],b[7],c[6]);
endmodule
