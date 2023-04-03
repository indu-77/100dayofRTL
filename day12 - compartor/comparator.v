module comparator(a,b,aeb,alb,agb);
input a,b;
output aeb,alb,agb;
reg aeb,alb,agb;
always @(*)
begin
if(a==b)
begin 
aeb=1'b1;
alb=1'b0;
agb=1'b0;
end
else if(a>b)
begin
aeb=1'b0;
agb=1'b1;
alb=1'b0;
end
else if(a<b)
begin
aeb=1'b0;
alb=1'b1;
agb=1'b0;
end
else
begin
alb=1'bz;
aeb=1'bz;
agb=1'bz;
end
end
endmodule

module comparator_tb;
wire aeb,alb,agb;
reg a,b;
comparator c1 (a,b,aeb,alb,agb);
integer i;
initial 
begin
for(i=0;i<4;i=i+1)
begin
#2 {a,b}=i;
end
end
endmodule
 
