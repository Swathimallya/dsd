`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/23/2023 02:10:09 PM
// Design Name: 
// Module Name: multiplexer_2x1
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


module multiplexer_2x1(y,s,i);
output reg y;
input s;
input [1:0]i;
always @(s,i)
begin
case(s)
1'b0:y=i[0];
1'b1:y=i[1];
endcase
end
endmodule
