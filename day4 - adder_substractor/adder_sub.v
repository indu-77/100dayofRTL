module addersub(a,b,mode,s,cout);
input [3:0]a,b;
input mode;
output [3:0]s;
output cout;
wire b0,b1,b2,b3;
wire c1,c2,c3;
xor (b0,b[0],mode);
xor (b1,b[1],mode);
xor (b2,b[2],mode);
xor (b3,b[3],mode);

fulladder f1(a[0],b0,mode,s[0],c1);
fulladder f2(a[1],b1,c1,s[1],c2);
fulladder f3(a[2],b2,c2,s[2],c3);
fulladder f4(a[3],b3,c3,s[3],cout);
endmodule

module fulladder(a,b,c,s,cout);
input a,b,c;
output s,cout;
assign s=a^b^c;
assign cout =(a&b)||(b&c)||(c&a);
endmodule


module addersub_tb;
reg [3:0]a,b;
reg mode;
wire [3:0]s;
wire cout;
integer i;
addersub a1(a,b,mode,s,cout);
initial
begin
for (i=0;i<256;i=i+1)
begin
#2 {a,b,mode}=i;
end
end
endmodule
