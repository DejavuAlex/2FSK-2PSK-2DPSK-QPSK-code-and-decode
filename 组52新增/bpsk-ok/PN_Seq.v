module PN_Seq(clk1,reset_n,dataoutm);
   input      clk1; 
	input      reset_n;
	output     dataoutm;
	reg    [ 7 : 1 ] c;
	
	always @( posedge clk1 or negedge reset_n )
	begin
  if(!reset_n)
  c<=7'b1000000;
  else
  begin
  c[2]<=c[1];
  c[3]<=c[2];
  c[4]<=c[3];
  c[5]<=c[4];
  c[6]<=c[5];
  c[7]<=c[6];
  c[1]<=c[2]^c[3]^c[4]^c[7];
		
	end
	end
	assign dataoutm = c[7];
	
endmodule
