//data_source_1模块
module data_source_2(clk,en,rst,data,load);
input clk;
input en;
input rst;
output data;
output load;
reg data_buf,load_buf;
reg [2:0] shift_re;
assign data=data_buf;
assign load=load_buf;
always @(posedge clk or negedge rst)
begin
	if(rst==0)
	begin
		shift_re<=3'b101;
		data_buf<=0;
		load_buf<=0;
	end
	else if(en==1)
	begin
		shift_re[2:0]<={shift_re[1:0],shift_re[0]};
		shift_re[0]<=shift_re[0]^shift_re[2];
		load_buf<=1;
	end
	data_buf<=shift_re[2];
end
endmodule