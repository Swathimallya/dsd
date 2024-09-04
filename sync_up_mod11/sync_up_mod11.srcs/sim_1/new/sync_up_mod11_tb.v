`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2023 02:27:42 PM
// Design Name: 
// Module Name: sync_up_mod11_tb
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


module sync_up_mod11_tb();
wire [3:0]q;
reg clk,reset;
sync_up_mod11 dut(q,clk,reset);
initial begin
clk=1'b0;
forever #10 clk=~clk;
end
initial begin
reset=1'b1;
#12
reset=1'b0;
#350
$stop;
end 
endmodule
