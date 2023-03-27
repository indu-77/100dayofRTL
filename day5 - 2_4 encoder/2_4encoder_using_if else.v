module two_four_encoder (d,y);
input [1:0]d;
output [3:0]y;
reg [3:0]y;
always @(d)
begin
if(d==2'b00)  y=4'b0001;
else if(d==2'b01) y=4'b0010;
else if(d==2'b10) y=4'b0100;
else if(d==2'b11) y=4'b1000;
else y=4'bzzzz;
end
endmodule

module two_four_encoder_tb;
reg [1:0]d;
wire [3:0]y;
two_four_encoder t1(d,y);
integer i;
initial 
begin
for(i=0;i<4;i=i+1)
begin
#2 {d[1],d[0]}=i;
end
end
endmodule
