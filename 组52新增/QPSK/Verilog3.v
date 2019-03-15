//data_source_0模块
module data_source(clk,en,rst,data,load);
input clk;
input en;
input rst;
output data;
output load;
reg data_buff,load_buff;
reg [11:0] shift_reg;
assign data=data_buff;
assign load=load_buff;
always @(posedge clk or negedge rst)
begin
	if(rst==0)
	begin
		shift_reg<=12'b111111111111;
		data_buff<=0;
		load_buff<=0;
	end
	else if(en==1)
	begin
		shift_reg[11:0]<={shift_reg[10:0],shift_reg[0]};
		shift_reg[0]<=shift_reg[0]^shift_reg[3]^shift_reg[5]^shift_reg[11];
		load_buff<=1;
	end
	data_buff<=shift_reg[11];
end
endmodule