//抽样判决模块
module identify(en,clk,rst,I,Q,IQ);
input en;
input clk;
input rst;
input signed [34:0] I,Q;//输入信号为有符号数
output IQ;
reg IQ_buff;
reg [5:0] count_i;

assign IQ=IQ_buff;

always @(posedge clk or negedge rst)
if(!rst)
	begin
		count_i<=6'b0;
		IQ_buff<=0;
	end
else
	begin
	if(en==1)
	begin
		if(count_i==0)
		begin
		if(I[34]==1)
			IQ_buff<=1;
		else
			IQ_buff<=0;
		end
		else if(count_i==10)
		begin
			if(Q[34]==1)
				IQ_buff<=1;
			else
				IQ_buff<=0;
		end
		if(count_i==19)
		begin
			count_i<=0;
		end
		else
		begin
			count_i<=count_i+1;
		end
	end
end
endmodule
	