module fenpin2(clk_out,clk_in,SW);
output clk_out;
input clk_in;
input  [3:0]SW;
reg[13:0] cnt;
reg clk_out;
always@(posedge clk_in)
begin
if(SW[0]==1)
begin
parameter N=16;

begin
  begin
    if(cnt==N/2-1)
    begin clk_out<=~clk_out;
    cnt<=0;
    end else
    cnt<=cnt+1;
  end
end
end
if(SW[1]==1)
begin
parameter N=8;

begin
  begin
    if(cnt==N/2-1)
    begin clk_out<=~clk_out;
    cnt<=0;
    end else
    cnt<=cnt+1;
  end
end
end
if(SW[2]==1)
begin
parameter N=4;

begin
  begin
    if(cnt==N/2-1)
    begin clk_out<=~clk_out;
    cnt<=0;
    end else
    cnt<=cnt+1;
  end
end
end
if(SW[3]==1)
begin
parameter N=2;

begin
  begin
    if(cnt==N/2-1)
    begin clk_out<=~clk_out;
    cnt<=0;
    end else
    cnt<=cnt+1;
  end
end
end
end
endmodule