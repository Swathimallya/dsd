`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/21/2023 02:00:33 PM
// Design Name: 
// Module Name: squarer_3bits
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


module squarer_3bits(y,i);
output [5:0]y;
input [2:0]i;
wire [3:0]w;
and G1(y[5],i[2],i[1]);
and G2(y[4],w[1],i[2]);
and G3(y[3],i[0],w[2]);
and G4(y[2],w[3],i[1]);
not G5(w[0],i[1]);
or G6(w[2],i[2],i[1]);
xor G7(w[2],i[2],i[1]);
not G8(w[3],i[0]);
and G9(y[1],i[1],0);
or G10(y[0],i[0],0);
endmodule
