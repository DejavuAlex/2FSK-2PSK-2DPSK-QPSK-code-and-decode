module depsk(
         clk,
			reset_n,
			data,
			dm_out,
			);
   input            clk       ;
	input            reset_n   ;
	input    [ 7 : 0 ] data; 
	output   [7:0]dm_out;
   reg [ 6 : 0 ] counter_value;
	reg  [7:0] middata;
	always @( posedge clk or negedge reset_n )
	begin
	      
			if(!reset_n) 
			begin
	counter_value[6:0]<=7'b000_0000;//赋初值
		middata[7:0]<=8'b00000000;//寄存器赋初值
		   end 
		   else   
		      begin 
			counter_value<=counter_value+7'b000_0001;//时钟沿依次加一
			
				if(counter_value==7'b010_0000)
				begin 
				middata[7:0]<=data[7:0];//如果读到的值等于32，则取采样值
				end
				else 	
				begin
				middata[7:0]<=middata[7:0];//如果没有读到32，则取0值
				end 
		  end
	end
assign dm_out[0]=~middata[7];//寄存器
assign dm_out[1]=~middata[7];
assign dm_out[2]=~middata[7];
assign dm_out[3]=~middata[7];
assign dm_out[4]=~middata[7];
assign dm_out[5]=~middata[7];
assign dm_out[6]=~middata[7];
assign dm_out[7]=~middata[7];

	endmodule
