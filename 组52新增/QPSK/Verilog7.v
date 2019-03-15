//fre_diff模块
module fre_diff(clk,en,rst,c_out,f_valid);
input en;
input clk;
input rst;
output c_out;
output f_valid;
reg [5:0] countd;
reg c_buff;
reg f_buff;
assign c_out=c_buff;
assign f_valid=f_buff;
always@(posedge clk or negedge rst)
begin
	if(!rst)
	begin
		countd<=0;
		c_buff<=0;
		f_buff<=0;
	end
	else if(en==1)
	begin
		if(countd==50)
		begin
			countd<=1;
			c_buff<=c_buff;
		end
		else
		begin
			countd=countd+1;
		end
		f_buff<=1;
	end
end
endmodule