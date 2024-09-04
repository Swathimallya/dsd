`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/14/2023 02:18:30 PM
// Design Name: 
// Module Name: half_adder_tb
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


module half_adder_tb();
reg x,y;
wire c,s;
half_adder dut(c,s,x,y);
initial
begin 

x=0;y=0;
#10
x=0;y=1;
#10
x=1;y=0;
#10
x=1;y=1;
#10
$stop;
end
endmodule

