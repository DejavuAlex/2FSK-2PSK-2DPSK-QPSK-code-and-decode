module dpsk_jt(
   input clk_2,
	input clk_20,
	input clk_4,

   input [7:0]tz_seq,
	output reg jt_seq
	
);
reg pre;
reg now;
always@(posedge clk_2)
begin
now<=tz_seq[7];
jt_seq<=~now^pre;  //quefanyihuo
pre<=now;
end


 
  

  
  
  
  
  
endmodule