module encoder_wp(i,d);
input [7:0]i;
output [2:0]d;
reg [2:0]d;
always @(i)
begin
if (i[7]==1'b1) d=3'b111;
else if(i[6]==1'b1) d=3'b110;
else if (i[5]==1'b1) d=3'b101;
else if (i[4]==1'b1) d=3'b100;
else if (i[3]==1'b1) d=3'b011;
else if (i[2]==1'b1) d=3'b010;
else if (i[1]==1'b1) d=3'b001;
else if (i[0]==1'b1) d=3'b000;
else d=3'bzzz;
end
endmodule

module encoder_wp_tb;
wire [2:0]d;
reg [7:0]i;
encoder_wp e1(i,d);
initial
begin
#2 i=8'b10001100;
#2 i=8'b01010000;
#2 i=8'b00000011;
end
endmodule

