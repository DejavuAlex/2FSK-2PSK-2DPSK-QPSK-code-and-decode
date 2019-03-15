module Controller(
			clk,
			reset_n,
         dataoutm, 
			address,
			clk_DA,
			blank_DA_n,
			sync_DA_n,
			clk_AD
);

	input            clk         ;
	input            reset_n     ;
	input            dataoutm    ;
	
	output [ 6 : 0 ] address     ;
	output           clk_DA      ; 
	output           clk_AD;
	output           sync_DA_n   ; 
	output           blank_DA_n  ; 
	reg    [ 6 : 0 ] address_data1;
	reg    [ 6 : 0 ] address_data2;
	reg    [ 6 : 0 ] address_data;
	
//   always @(dataoutm)
//   begin	
//		 case(dataoutm)
//	       1'b0:   begin  
//	                  address_data=address_data2;
//			         end
//	       1'b1:   begin
//	                  address_data=address_data1;
//			         end
//			 default:begin
//			            address_data=5'bzzzzz;
//						end
//       endcase
//   end
	always @( posedge clk or negedge reset_n )
	begin
     if(!reset_n)          //
     begin
       address_data1<=7'b001_1111;//定义初值相位
       address_data2<=7'b101_1111;//定义初值0
	  end
	  else                 //
	  begin
       address_data1<=address_data1+7'b000_0001;//地址依次加一
		 address_data2<=address_data2+7'b000_0001;
	  end
	end

	always @( posedge clk or negedge reset_n )
	begin
     if(!reset_n)         
       address_data<=7'b000_0000;//赋初值
	  else if(!dataoutm)                
       address_data<=address_data2;//如果m序列输出为0，则为address_data2值
	  else if(dataoutm)
		 address_data<=address_data1;
	  else
		;
	end
	
   assign address    = address_data;
	assign clk_DA     = clk;
	assign clk_AD     =clk;
	assign blank_DA_n = 1'b1;
	assign sync_DA_n  = 1'b1;
	
 endmodule
