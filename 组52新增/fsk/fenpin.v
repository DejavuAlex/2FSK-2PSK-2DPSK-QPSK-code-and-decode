module fenpin(clk_out,clk_in,SW);
output clk_out;
input clk_in;
input  [3:0]SW;
reg[23:0] cnt;
reg clk_out;
always@(posedge clk_in)
begin
if(SW[0]==1)
  begin
  parameter N=65536;
  begin
    if(cnt==N/2-1)
    begin 
    cnt<=0;
	 clk_out<=~clk_out;
    end else
    cnt<=cnt+1;
  end
  end
 if(SW[1]==1)
 begin
  parameter N=32768;
  begin
    if(cnt==N/2-1)
    begin 
    cnt<=0;
	 clk_out<=~clk_out;
    end else
    cnt<=cnt+1;
  end
  end
  if(SW[2]==1)
  begin
  parameter N=16348;
  begin
    if(cnt==N/2-1)
    begin 
    cnt<=0;
	 clk_out<=~clk_out;
    end else
    cnt<=cnt+1;
  end
  end
    if(SW[3]==1)
  begin
  parameter N=8192;
  begin
    if(cnt==N/2-1)
    begin 
    cnt<=0;
	 clk_out<=~clk_out;
    end else
    cnt<=cnt+1;
  end
  end
end
endmodule
