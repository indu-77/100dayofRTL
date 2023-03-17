module halfad(a,b,s,c);
input a,b;
output s,c;
reg s,c;
always @(*)
begin
{c,s}=a+b;
end
endmodule

module halfad_tb;
reg a,b;
wire s,c;
halfad h1(a,b,s,c);
integer i;
initial
begin
for(i=0;i<4;i=i+1)
begin
#2 {a,b}=i;
end
end
endmodule
