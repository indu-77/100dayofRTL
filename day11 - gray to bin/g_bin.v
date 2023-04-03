module gray_bin(g,b);
input [3:0]g;
output [3:0]b;
assign b[3]=g[3];
assign b[2]=b[3]^g[2];
assign b[1]=b[2]^g[1];
assign b[0]=b[1]^g[0];
endmodule

module gray_bin_tb;
wire [3:0]b;
reg [3:0]g;
gray_bin g1(g,b);
initial
begin
#10 g=4'b0010;
#10 g=4'b0110;
end
endmodule
