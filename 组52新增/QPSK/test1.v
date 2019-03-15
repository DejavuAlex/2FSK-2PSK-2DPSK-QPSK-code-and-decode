//串并转换
module tra(clk,rst,data_in,out_va,data_out);
input clk;
input data_in;
input rst;

output out_va;
output [1:0]data_out;

reg buff;
reg [1:0] buffer;
reg [5:0] count;
assign data_out=buffer;
assign out_va=buff;
always@(posedge clk or negedge rst)
if(!rst)
	begin
		count<=0;
		buffer<=2'b0;
		buff<=0;
	end
else
	begin
		if(count==0)
		begin
			buffer<={buffer[0],data_in};
		end
		else if(count==10)
		begin
			buffer<={buffer[0],data_in};
			buff<=0;
		end
		if(count==19)
		begin
			buff<=1;
			count<=count+1;
		end
		else
			count<=count+1;
	end
endmodule
