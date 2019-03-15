module Controller(
			clk,
			reset_n,
         dataoutm1, 
			dataoutm2,
			address,
			clk_DA,
			blank_DA_n,
			sync_DA_n
);

	input            clk         ;
	input            reset_n     ;
	input            dataoutm1   ;
	input            dataoutm2   ;
	output  [7:0] address ;
	//output  address_data1;
	output           clk_DA      ; 
	output           sync_DA_n   ; 
	output           blank_DA_n  ; 
	//reg    [ 32 : 0 ] address_data1;
	//reg    [ 32 : 0 ] address_data2;
	reg    [ 8 : 0 ] address_data;
	reg    [ 8 : 0 ] address_data1;
	reg    [ 8 : 0 ] address_data2;
	reg    [ 8 : 0 ] address_data3;
	reg    [ 8 : 0 ] address_data4;
	always @( posedge clk or negedge reset_n )
	begin
     if(!reset_n)          
     begin
       //address_data1<=32'b0111_1111_1111_1111_1111_1111_1111_1111;//000_0000;//定义初值相位
       //address_data2<=32'b0;//111_0011;//定义初值0
		 address_data1<=8'b0;          //11
		 address_data2<=8'b0011_1111;  //01
		 address_data3<=8'b0111_1111;  //00
		 address_data4<=8'b1011_1111;  //10
	  end
	  else                 
	  begin
       //address_data1<=address_data1+32'b1;//地址依次加一
		 //address_data2<=address_data2+32'b1;
		 address_data1<=address_data1+8'b1;
		 address_data2<=address_data2+8'b1;
		 address_data3<=address_data3+8'b1;
		 address_data4<=address_data4+8'b1;
	  end
	end

	always @( posedge clk or negedge reset_n )
	begin
     if(!reset_n)         
       address_data<=8'b0;//赋初值
	  else if(!dataoutm1 && !dataoutm2 )                
       address_data<=address_data3;//00
	  else if(!dataoutm1  && dataoutm2)
		 address_data<=address_data2;//01
	  else if(dataoutm1  && !dataoutm2)
		 address_data<=address_data4;//10 
	  else if(dataoutm1  && dataoutm2)
		 address_data<=address_data1;//11
	  else
		;
	end
	
   assign address    = address_data[7:0];
	assign clk_DA     = clk;
	assign blank_DA_n = 1'b1;
	assign sync_DA_n  = 1'b1;
endmodule
