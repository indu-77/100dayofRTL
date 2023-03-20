module fulladds(a,b,cin,sum,cout);
input a,b,cin;
output sum,cout;
wire c1,c2,c3;
xor x1(c1,a,b);
xor x2(sum,c1,cin);
and a1(c2,a,b);
and a2(c3,cin,c1);
or o1(cout,c3,c2);
endmodule


module fulladds_tb;
wire sum,cout;
reg a,b,cin;
fulladds f1(a,b,cin,sum,cout);
integer i;
initial
begin
for(i=0;i<8;i=i+1)
begin
#2 {a,b,cin}=i;
end
end
endmodule
