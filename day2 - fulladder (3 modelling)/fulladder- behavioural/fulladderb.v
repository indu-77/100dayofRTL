module fulladdb(a,b,cin,sum,cout);
input a,b,cin;
output sum,cout;
reg sum,cout;
always @(*)
begin
sum =a^b^cin;
cout= (a&b)||(b&cin)||(cin&a);
end
endmodule

module fulladdb_tb;
reg a,b,cin;
wire sum,cout;
fulladdb f1(a,b,cin,sum,cout);
integer i;
initial
begin
for(i=0;i<8;i=i+1)
begin
#2 {a,b,cin}=i;
end
end
endmodule
