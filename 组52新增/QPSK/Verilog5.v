//data_selector模块
module data_selector(en,data_0,data_1,sel,data,sel_load);
input en;
input data_0,data_1;
input sel;
output data;
output sel_load;
reg  da_buff;
reg  sel_load_buf;
assign data=da_buff;
assign sel_load=sel_load_buf;
always
begin
	if(en==1)
	begin
		sel_load_buf<=1;
		if(sel==0)
		begin
			da_buff<=data_0;
		end
		else
		begin
			da_buff<=data_1;
		end
	end
	else
	begin
		da_buff<=0;
		sel_load_buf<=0;
	end
end
endmodule