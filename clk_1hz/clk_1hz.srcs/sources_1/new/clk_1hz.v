`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2023 02:59:26 PM
// Design Name: 
// Module Name: clk_1hz
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


module clk_1hz(clk_out,clk);
output clk_out;
input clk;
reg [25:0]count=0;
reg clk_out;
always @(posedge clk)
begin count<=count+1;
if(count==50_000_000)
begin
count<=0;
clk_out=~clk_out;
end
end
endmodule
