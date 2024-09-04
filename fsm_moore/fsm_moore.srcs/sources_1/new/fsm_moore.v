`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2023 01:58:27 PM
// Design Name: 
// Module Name: fsm_moore
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
module fsm_moore(y,x,clk,rt);
output reg y;
input x,clk,rt;
reg [2:0] c_s,n_s;
parameter s0=3'b000,
          s1=3'b001,
          s2=3'b010,
          s3=3'b011,
          s4=3'b100;
always @(posedge clk)
begin
if(rt)
c_s<=s0;
else
c_s<=n_s;
end 
always@(c_s,x)
begin
case(c_s)
s0:begin 
    if(x)
    n_s<=s1;
    else
    n_s<=s0;
    end
s1:begin
    if(x)
    n_s<=s1;
    else
    n_s<=s2;
    end
s2:begin
        if(x)
        n_s<=s3;
        else
        n_s<=s0;
        end
s3:begin
            if(x)
            n_s<=s1;
            else
            n_s<=s4;
            end
s4:begin
                if(x)
                n_s<=s3;
                else
                n_s<=s0;
                end
default: n_s<=s0;
endcase
end
always@(c_s)
begin
case(c_s)
s0:y=0;
s1:y=0;
s2:y=0;
s3:y=0;
s4:y=1;
default:y=0;
endcase
end
endmodule
