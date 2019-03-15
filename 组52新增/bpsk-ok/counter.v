module counter(clk,reset_n,count,clk1);
  input        clk,reset_n;
  output       clk1;
  output[6:0]  count;
  reg          clk1;
  reg[6:0]     count;
  parameter    N = 128;
  
    always @ (posedge clk or negedge reset_n )
      if(! reset_n)
        begin
          count <= 1'b0;
          clk1 <= 1'b0;
        end
          
        else    if ( count < 63 )
		
          begin         
            count <= count + 1'b1;           
          end
        else
          begin       
            count <= 1'b0;
            clk1 <= ~clk1;     
          end
endmodule
