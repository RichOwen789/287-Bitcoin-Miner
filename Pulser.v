module Pulser(clk, pulse);
input clk;
output pulse;
reg pulse;
reg [3:0]count;
always@(posedge clk)
begin
	count<=count+1'b1;
	if(count>4'd7)
	begin
		pulse<=1'b1;
	end
	else
	begin
		pulse<=1'b0;
	end
end
endmodule
