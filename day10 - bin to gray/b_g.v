module bintogray(b,g);
input [3:0]b;
output [3:0]g;
assign g[3]=b[3];
assign g[2]=b[3]^b[2];
assign g[1]=b[2]^b[1];
assign g[0]=b[1]^b[0];
endmodule

module bintogray_tb;
reg [3:0]b;
wire [3:0]g;
bintogray b1(b,g);
initial
begin
#10 b=4'b0011;
#10 b=4'b1001;
end
endmodule
