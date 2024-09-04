`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/08/2023 12:24:46 PM
// Design Name: 
// Module Name: sync_8bit
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


module sync_8bit(q,clk,reset);
output [7:0] q;
input clk,reset;
wire [7:0]j,k;
assign j[0]=1,
       k[0]=1,
       j[1]=q[0],
       k[1]=q[0],
       j[2]=q[0]&&q[1],
       k[2]=q[0]&&q[1],
       j[3]=q[0]&&q[1]&&q[2],
       k[3]=q[0]&&q[1]&&q[2],
       j[4]=q[0]&&q[1]&&q[2]&&q[3],
       k[4]=q[0]&&q[1]&&q[2]&&q[3],
       j[5]=q[0]&&q[1]&&q[2]&&q[3]&&q[4],
       k[5]=q[0]&&q[1]&&q[2]&&q[3]&&q[4],
       j[6]=q[0]&&q[1]&&q[2]&&q[3]&&q[4]&&q[5],
       k[6]=q[0]&&q[1]&&q[2]&&q[3]&&q[4]&&q[5],
       j[7]=q[0]&&q[1]&&q[2]&&q[3]&&q[4]&&q[5]&&q[6],
       k[7]=q[0]&&q[1]&&q[2]&&q[3]&&q[4]&&q[5]&&q[6];
jkff_up m0(q[0],j[0],k[0],clk,reset);
jkff_up m1(q[1],j[1],k[1],clk,reset);
jkff_up m2(q[2],j[2],k[2],clk,reset);
jkff_up m3(q[3],j[3],k[3],clk,reset);
jkff_up m4(q[4],j[4],k[4],clk,reset);
jkff_up m5(q[5],j[5],k[5],clk,reset);
jkff_up m6(q[6],j[6],k[6],clk,reset);
jkff_up m7(q[7],j[7],k[7],clk,reset);
endmodule
