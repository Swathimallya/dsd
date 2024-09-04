`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/06/2023 02:17:55 PM
// Design Name: 
// Module Name: bcd_7seg
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
module bcd_7seg(d1_a,led_out,b9,clk);
output reg[7:0]led_out;
output reg [3:0]d1_a;
input clk;
input[8:0]b9;
wire [3:0]b_h;
wire [3:0]b_t;
wire [3:0]b_o;
binary_bcd_9bits(b_h,b_t,b_o,b9,clk);
reg [20:0]rc=21'd0;
wire [1:0]led_ac;
always @(posedge clk)
begin
rc<=rc+1;
end
assign led_ac=rc[19:18];
always @(posedge clk)
begin
case(led_ac)
2'b00: begin d1_a=4'b1110;
case(b_o)
4'b0000: led_out=8'b11000000;
4'b0001: led_out=8'b11111001;
4'b0010: led_out=8'b10100100;
4'b0011: led_out=8'b10110000;
4'b0100: led_out=8'b10011011;
4'b0101: led_out=8'b10010010;
4'b0110: led_out=8'b10000010;
4'b0111: led_out=8'b11111000;
4'b1000: led_out=8'b10000000;
4'b1001: led_out=8'b10010000;
default: led_out=8'b11111111;
endcase
end

2'b01: begin d1_a=4'b1101;
case(b_t)
4'b0000: led_out=8'b11000000;
4'b0001: led_out=8'b11111001;
4'b0010: led_out=8'b10100100;
4'b0011: led_out=8'b10110000;
4'b0100: led_out=8'b10011011;
4'b0101: led_out=8'b10010010;
4'b0110: led_out=8'b10000010;
4'b0111: led_out=8'b11111000;
4'b1000: led_out=8'b10000000;
4'b1001: led_out=8'b10010000;
default: led_out=8'b11111111;
endcase
end

2'b10: begin d1_a=4'b1011;
case(b_h)
4'b0000: led_out=8'b11000000;
4'b0001: led_out=8'b11111001;
4'b0010: led_out=8'b10100100;
4'b0011: led_out=8'b10110000;
4'b0100: led_out=8'b10011011;
4'b0101: led_out=8'b10010010;
4'b0110: led_out=8'b10000010;
4'b0111: led_out=8'b11111000;
4'b1000: led_out=8'b10000000;
4'b1001: led_out=8'b10010000;
default: led_out=8'b11111111;
endcase
end

2'b11: begin d1_a=4'b0111;
led_out=8'b11111111;
end
endcase
end 
endmodule