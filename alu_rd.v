module alu_rd(clk,rst,a,b,s,y);
input [7:0]a,b;
input rst,clk;
input [2:0]s;
output reg [15:0]y;

always@(posedge(clk) or negedge(rst)) 
begin
if(!rst)
y<=16'd0;
else
begin
case(s)

3'b000:
begin
y<=a+b;//add
end
3'b001:
begin
y<=a-b;//sub
end
3'b010:
begin
y<=a*b;//mul
end
3'b011:
begin
y<=a&b;//and
end
3'b100:
begin
y<=a>b;//greater
end
3'b101:
begin
y<=a<b;//lt
end
3'b110:
begin
y<=~a;//neg a
end
3'b111:
begin
y<=~b;//neg b
end
default:
y<=16'd0;
endcase
end
end
endmodule

