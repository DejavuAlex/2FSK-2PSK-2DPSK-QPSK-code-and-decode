module dpsk_tz(
     input clk_2,
     input signed [7:0]cos, //tiaozhihoudejibo
	  input seq,
	  output reg [7:0]tz_seq,
	  output  reg [9:0] phase
);

initial phase=0;
always@(negedge clk_2)
     begin
     if(seq==1)
	    phase<=phase+10'b0111111111;	 
end	 

always@(*)
     begin
       tz_seq<=cos;
end


endmodule