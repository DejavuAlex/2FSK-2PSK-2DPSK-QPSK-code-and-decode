module kaiguan(din0,dout,din1,sel);
parameter N=8;
input[N-1:0] din0;
output[N-1:0] dout;
input[N-1:0] din1;
input sel;
wire[N-1:0] MW_din0l;
wire[N-1:0] MW_din1l;
reg[N-1:0] MW_dtempl;
always@(MW_din0l or MW_din1l or sel)
begin
  case(sel)
  1'd0:MW_dtempl=MW_din0l;
  default:MW_dtempl=MW_din1l;
  endcase
  end
assign dout=MW_dtempl;
assign MW_din0l=din0;
assign MW_din1l=din1;
endmodule
