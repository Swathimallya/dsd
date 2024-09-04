`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2023 03:38:37 PM
// Design Name: 
// Module Name: decoder_3x8
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


module decoder_3x8(y,i);
output reg [7:0]y;
input [2:0]i;
always @(i)
case(i)
3'b000:begin y[7]=0;y[6]=0;y[5]=0;y[4]=0;y[3]=0;y[2]=0;y[1]=0;y[0]=1; end
3'b001:begin y[7]=0;y[6]=0;y[5]=0;y[4]=0;y[3]=0;y[2]=0;y[1]=1;y[0]=0; end
3'b010:begin y[7]=0;y[6]=0;y[5]=0;y[4]=0;y[3]=0;y[2]=1;y[1]=0;y[0]=0; end
3'b011:begin y[7]=0;y[6]=0;y[5]=0;y[4]=0;y[3]=1;y[2]=0;y[1]=0;y[0]=0; end
3'b100:begin y[7]=0;y[6]=0;y[5]=0;y[4]=1;y[3]=0;y[2]=0;y[1]=0;y[0]=0; end
3'b101:begin y[7]=0;y[6]=0;y[5]=1;y[4]=0;y[3]=0;y[2]=0;y[1]=0;y[0]=0; end
3'b110:begin y[7]=0;y[6]=1;y[5]=0;y[4]=0;y[3]=0;y[2]=0;y[1]=0;y[0]=0; end
3'b111:begin y[7]=1;y[6]=0;y[5]=0;y[4]=0;y[3]=0;y[2]=0;y[1]=0;y[0]=0; end
endcase
endmodule
