`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/04/2023 11:46:19 AM
// Design Name: 
// Module Name: multiplier
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


module cmos_nand(y,a,b,c);
output y;
input a,b,c;
wire w1,w2;
supply0 gnd;
supply1 vdd;
pmos p1(y,vdd,c);
pmos p2(y,vdd,b);
pmos p3(y,vdd,a);
nmos n1(y,w1,a);
nmos n2(w1,w2,b);
nmos n3(w2,gnd,c);
endmodule
