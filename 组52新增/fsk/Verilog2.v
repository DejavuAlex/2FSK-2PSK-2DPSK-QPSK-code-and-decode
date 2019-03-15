module fenpin3(clk_out,clk_in);
output clk_out;
input clk_in;
reg[13:0] cnt;
reg clk_out;
parameter N=1024;
always@(posedge clk_in)
begin
  begin
    if(cnt==N/2-1)
    begin clk_out<=~clk_out;
    cnt<=0;
    end else
    cnt<=cnt+1;
  end
end
endmodule