`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/09/2023 01:58:04 PM
// Design Name: 
// Module Name: usr_5bit
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


module usr_5bit(q,clk,rt,s,i,l,r);
output reg [4:0]q;
input clk,rt,l,r;
input [4:0]i;
input[1:0]s;
always @(posedge clk)
begin 
if(rt)
case(s)
2'b00:q<=q;
2'b01:q<={q[3:0],l};
2'b10:q<={r,q[4:1]};
2'b11:q<=i;
endcase
else
q=4'b0000;
end
endmodule
