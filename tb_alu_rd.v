module tb_alu_rd();
reg [7:0] a,b;
reg rst,clk;
reg [2:0] s;
wire [15:0] y;
alu_rd dut(clk,rst,a,b,s,y);

initial 
begin
rst=1'b0;
clk=1'b0;
#10;

rst=1'b1;
a=8'b00001111;b=8'b01010101;
s=3'b000;
#10;
s=3'b001;
#10;
s=3'b010;
#10;
s=3'b011;
#10;
s=3'b100;
#10;
s=3'b101;
#10;
s=3'b110;
#10;
s=3'b111;
#10;

rst=1'b0;
#10;
$stop();
end
always #5 clk=~clk;
endmodule
