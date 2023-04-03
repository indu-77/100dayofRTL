module demux(i,s,d);
input i;
input [2:0]s;
output [7:0]d;
reg [7:0]d;
always @(i,s)
begin
d=8'b0;
case(s)
3'b000: d[0]=i;
3'b001: d[1]=i;
3'b010: d[2]=i;
3'b011: d[3]=i;
3'b100: d[4]=i;
3'b101: d[5]=i;
3'b110: d[6]=i;
3'b111: d[7]=i;
default d=8'b00000000;
endcase
end
endmodule

module demux_tb;
wire [7:0]d;
wire i;
reg [2:0]s;
assign i=1'b1;
demux d1(i,s,d);
integer j;
initial 
begin
for(j=0;j<8;j=j+1)
begin
#2 {s}=j;
end
end
endmodule
