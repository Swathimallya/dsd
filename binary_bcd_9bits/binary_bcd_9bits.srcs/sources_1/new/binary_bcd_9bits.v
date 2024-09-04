`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/06/2023 02:13:59 PM
// Design Name: 
// Module Name: binary_bcd_9bits
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
module binary_bcd_9bits(b_h,b_t,b_o,b9,clk);
output reg [3:0]b_h,b_t,b_o;
input [8:0]b9;
input clk;
reg [3:0]tb_h,tb_t,tb_o;
reg [3:0]i=0;
reg [20:0]s_reg;
reg [8:0]ob9=0;
always @(posedge clk)
begin 
if(i==0&(ob9!=b9))
begin
s_reg=21'd0;
ob9=b9;
s_reg[8:0]=b9;
tb_h=s_reg[20:17];
tb_t=s_reg[16:13];
tb_o=s_reg[12:9];
i=i+1;
end
if(i>0&i<10)
begin
if(tb_h>4)tb_h=tb_h+3;
if(tb_t>4)tb_t=tb_t+3;
if(tb_o>4)tb_o=tb_o+3;
s_reg[20:9]={tb_h,tb_t,tb_o};
s_reg=s_reg<<1;
tb_h=s_reg[20:17];
tb_t=s_reg[16:13];
tb_o=s_reg[12:9];
i=i+1;
end
if(i==10)
begin
i=0;
b_h=tb_h;
b_t=tb_t;
b_o=tb_o;
end
end
endmodule
