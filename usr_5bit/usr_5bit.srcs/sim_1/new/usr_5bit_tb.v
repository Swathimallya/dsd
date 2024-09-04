`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/09/2023 02:30:05 PM
// Design Name: 
// Module Name: usr_5bit_tb
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


module usr_5bit_tb();
wire [4:0]q;
reg [4:0]i;
reg [1:0]s;
reg clk,rt,l,r;
usr_5bit dut(q,clk,rt,s,i,l,r);
initial begin
clk=0;
forever #10 clk=~clk;
end
initial begin 
rt=0;
#12;
rt=1;
#14;
s=2'b11;
i=5'b11001;
#20;
rt=0;
#20;
rt=1;
s=2'b10;
r=1;
#20;
r=0;
#20;
r=0;
#20;
r=1;
#20;
r=1;
#20;
rt=0;
#20;
rt=1;
s=2'b01;
l=1;
#20;
l=1;
#20;
l=0;
#20;
l=0;
#20;
l=1;
#20;
$stop;
end 
endmodule
