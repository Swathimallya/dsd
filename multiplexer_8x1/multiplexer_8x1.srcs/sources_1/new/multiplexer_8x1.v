module multiplexer_8x1(y,s,i);
output y;
input [7:0]i;
input [2:0]s;
wire [1:0]w;
multiplexer_4x1 mu1(w[0],s[1:0],i[3:0]);
multiplexer_4x1 mu2(w[1],s[1:0],i[7:4]);
multiplexer_2x1 mu3(y,s[2],w);
endmodule