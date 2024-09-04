`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/08/2023 11:51:21 AM
// Design Name: 
// Module Name: alu_bit8
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


module alu_bit8(d1_a,led_out,clk_out,a,b,clk,opcode,reset);
output [3:0]d1_a;
output [7:0]led_out;
output clk_out;
input [7:0]a,b;
input clk,reset;
input [2:0]opcode;
reg [8:0]yr;
wire [7:0]yc,ya,ys,y,ym,ysup,ysdown,yf;
wire c1,c2,c,ca,cs;
reg ds;
assign ca=1'b0,
       cs=1'b1;
reg [7:0]ar,br;
always @(posedge clk)
begin
ar<=a;
br<=b;
end
clk_1hz cl(clk_out,clk);
comp_8bit m0(yc,ar,br);
add_sub m1(c1,ya,ar,br,ca);
add_sub m2(c2,ys,ar,br,cs);
multiplier_4x4 m3(ym,ar,br);
sync_8bit m4(ysup,clk_out,reset);
sync_down_8bit m5(ysdown,clk_out,reset);
fsm_moore m6(yf[0],ar,clk_out,reset);

always @(opcode,yc,ya,ys,ym,ysup,ysdown,ysdown,yf,ar,br)
begin
case(opcode)
3'b000:begin yr<={1'b0,yc};ds=1;end
3'b001:begin yr<={c1,ya};ds=1;end
3'b010:begin yr<={1'b0,ys}; if (c2==0) ds=0;
else ds=1; end
3'b011:begin yr<={1'b0,ym};ds=1;end
3'b100:begin yr<={1'b0,ysup}; ds=1;end
3'b101:begin yr<={1'b0,ysdown}; ds=1;end
3'b110:begin yr<={1'b0,yf};ds=1;end
3'b111:begin yr<={1'b0,ar||br};ds=1;end
endcase
end
bcd_to_8s bcc(d1_a,led_out,yr,clk,ds);
endmodule
