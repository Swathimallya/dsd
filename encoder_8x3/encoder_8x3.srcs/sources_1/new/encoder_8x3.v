`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2023 01:59:35 PM
// Design Name: 
// Module Name: encoder_8x3
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


module encoder_8x3(y,e,i);
output reg [2:0]y;
output reg e;
input [7:0]i;
always @(i)
case(i)
8'b00000001:begin y[0]=0;y[1]=0;y[2]=0;e=0; end
8'b00000010:begin y[0]=1;y[1]=0;y[2]=0;e=0; end
8'b00000100:begin y[0]=0;y[1]=1;y[2]=0;e=0; end
8'b00001000:begin y[0]=1;y[1]=1;y[2]=0;e=0; end
8'b00010000:begin y[0]=0;y[1]=0;y[2]=1;e=0; end
8'b00100000:begin y[0]=1;y[1]=0;y[2]=1;e=0; end
8'b01000000:begin y[0]=0;y[1]=1;y[2]=1;e=0; end
8'b10000000:begin y[0]=1;y[1]=1;y[2]=1;e=0; end
default: begin y[0]=0;y[1]=0;y[2]=0; e=1; end
endcase
endmodule
