module halfadd(a,b,sum,carry);
input a,b;
output sum,carry;
assign sum=a^b;
assign carry=a*b;
endmodule 

module halfadd_tb;
reg a,b;
wire sum,carry;
halfadd h1(a,b,sum,carry);
integer i;
initial
begin
for(i=0;i<4;i=i+1)
begin
#2 {a,b}=i;
end
end
endmodule
