`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/02/2023 01:59:21 PM
// Design Name: 
// Module Name: binary_to_bcd
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

module binary_to_bcd(h_b,t_b,o_b,b9,clk);
output reg [3:0]h_b;
output reg [3:0]t_b;
output reg [3:0]o_b;
input [8:0]b9;
input clk;
reg [3:0]ht_b;
reg [3:0]tt_b;
reg [3:0]ot_b;
reg [3:0]i=0;
reg [20:0]s;
reg [8:0]ob9=0;
always@(posedge clk)
begin
if(i==0&(ob9!=b9))
begin
s=21'd0;
ob9=b9;
s[8:0]=b9;
ht_b=s[20:17];
tt_b=s[16:13];
ot_b=s[12:9];
i=i+1;
end
if(i>0&i<10)
begin
if(ht_b>4)ht_b=ht_b+3;
if(tt_b>4)tt_b=tt_b+3;
if(ot_b>4)ot_b=ot_b+3;
s[20:9]={ht_b,tt_b,ot_b};
s=s<<1;
ht_b=s[20:17];
tt_b=s[16:13];
ot_b=s[12:9];
i=i+1;
end
if(i==10)
begin
h_b=ht_b;
t_b=tt_b;
o_b=ot_b;
i=0;
end
end
endmodule
