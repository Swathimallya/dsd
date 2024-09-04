`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/02/2023 02:27:58 PM
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


module binary_tto_bcd();
reg[8:0]b9;
reg clk;
wire[3:0]h_b,t_b,o_b;
binary_to_bcd dut(h_b,t_b,o_b,b9,clk);
initial
begin
clk=0;
forever #5 clk=~clk;
end
initial
begin
b9=9'b111110110;
#250
$stop;
end
endmodule
