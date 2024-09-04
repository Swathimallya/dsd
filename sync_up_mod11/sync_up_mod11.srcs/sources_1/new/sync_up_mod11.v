`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2023 02:13:24 PM
// Design Name: 
// Module Name: sync_up_mod11
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


module sync_up_mod11(q,clk_out,reset);
output [3:0]q;
input clk_out,reset;
wire [3:0]j,k;
clk_1hz c1(clk_out,clk);
assign j[0]=(!q[3])||(!q[1]);
assign k[0]=1;
assign j[1]=q[0];
assign k[1]=q[0]||q[3];
assign j[2]=q[1]&&q[0];
assign k[2]=q[1]&&q[0];
assign j[3]=q[2]&&q[1]&&q[0];
assign k[3]=q[1];
jkff_up m1(q[0],j[0],k[0],clk_out,reset);
jkff_up m2(q[1],j[1],k[1],clk_out,reset);
jkff_up m3(q[2],j[2],k[2],clk_out,reset);
jkff_up m4(q[3],j[3],k[3],clk_out,reset);
endmodule
