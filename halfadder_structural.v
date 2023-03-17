module halfadde(a,b,s,c);
input a,b;
output s,c;
xor(s,a,b);
and(c,a,b);
endmodule

module halfadde_tb;
reg a,b;
wire s,c;
halfadde h1(a,b,s,c);
integer i;
initial
begin
for(i=0;i<4;i=i+1)
begin
#2 {a,b}=i;
end
end
endmodule
