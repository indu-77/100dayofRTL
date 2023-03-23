module fulladder(a,b,c,s,cout);
input a,b,c;
output s,cout;
assign s=a^b^c;
assign cout=(a&b)||(b&c)||(c&a);
endmodule

module ripple_adder(a,b,cin,s,cout);
input [3:0]a,b;
input cin;
output [3:0]s;
output cout;
wire c1,c2,c3;
fulladder f1(a[0],b[0],cin,s[0],c1);
fulladder f2(a[1],b[1],c1,s[1],c2);
fulladder f3(a[2],b[2],c2,s[2],c3);
fulladder f4(a[3],b[3],c3,s[3],cout);
endmodule

module rippleadder_tb;
reg [3:0]a,b;
reg cin;
wire [3:0]s;
wire cout;
integer i;
ripple_adder r1(a,b,cin,s,cout);
initial
begin 
for (i=0;i<512;i=i+1)
begin
#2 {a,b,cin}=i;
end
end
endmodule
