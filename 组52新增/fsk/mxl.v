module MXL(clk ,out);
input clk;
output out;
reg[3:0] tmp=4'b0;
reg out;
always @(posedge clk )
begin
if(tmp > 4'd15)
tmp=4'd0;
else tmp=tmp+1'b1;
case(tmp)
4'd0:out<=0;
4'd1:out<=1;
4'd2:out<=0;
4'd3:out<=0;
4'd4:out<=1;
4'd5:out<=1;
4'd6:out<=0;
4'd7:out<=1;
4'd8:out<=1;
4'd9:out<=0;
4'd10:out<=1;
4'd11:out<=0;
4'd12:out<=0;
4'd13:out<=0;
4'd14:out<=0;
4'd15:out<=0;
endcase
end
endmodule
