`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2023 10:59:59 PM
// Design Name: 
// Module Name: sync_down_8bit
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


module sync_down_8bit(q,clk,reset);
output [7:0]q;
input clk,reset;
wire [7:0]J,K;
assign J[0]=1;
assign K[0]=1;
assign J[1]=!q[0];
assign K[1]=!q[0];
assign J[2]=!q[0]&&!q[1];
assign K[2]=!q[0]&&!q[1];
assign J[3]=!q[0]&&!q[1]&&!q[2]&&!q[3];
assign K[3]=!q[0]&&!q[1]&&!q[2]&&!q[3];
assign J[4]=!q[0]&&!q[1]&&!q[2]&&!q[3]&&!q[4];
assign K[4]=!q[0]&&!q[1]&&!q[2]&&!q[3]&&!q[4];
assign J[5]=!q[0]&&!q[1]&&!q[2]&&!q[3]&&!q[4]&&!q[5];
assign K[5]=!q[0]&&!q[1]&&!q[2]&&!q[3]&&!q[4]&&!q[5];
assign J[6]=!q[0]&&!q[1]&&!q[2]&&!q[3]&&!q[4]&&!q[5]&&!q[6];
assign K[6]=!q[0]&&!q[1]&&!q[2]&&!q[3]&&!q[4]&&!q[5]&&!q[6];
assign J[7]=!q[0]&&!q[1]&&!q[2]&&!q[3]&&!q[4]&&!q[5]&&!q[6]&&!q[7];
assign K[7]=!q[0]&&!q[1]&&!q[2]&&!q[3]&&!q[4]&&!q[5]&&!q[6]&&!q[7];
jkff_down m0(q[0],J[0],K[0],clk,reset);
jkff_down m1(q[1],J[1],K[1],clk,reset);
jkff_down m2(q[2],J[2],K[2],clk,reset);
jkff_down m3(q[3],J[3],K[3],clk,reset);
jkff_down m4(q[4],J[4],K[4],clk,reset);
jkff_down m5(q[5],J[5],K[5],clk,reset);
jkff_down m6(q[6],J[6],K[6],clk,reset);
jkff_down  m7(q[7],J[7],K[7],clk,reset);
endmodule

