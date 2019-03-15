module qpsk_tz(
  input signed [7:0]sine,
  input signed [7:0]cos,
  input clk_1,
  input clk_2,
input seq,  
  output reg signed [7:0]qpsk_seq,
  output reg [1:0]data

);









wire [7:0] result;
reg state;
reg low_bit;
reg high_bit;



always@(posedge clk_2)
begin

case(state)
1'b0:begin
     low_bit<=seq;
	  state<=~state;
	  end
1'b1:begin
     high_bit<=seq;
	  state<=~state;
	  end
endcase

end

add ADD(
    .dataa(cos/2),
	 .datab(sine/2),
	 .result(result)
);
always@(posedge clk_1)
begin
 data[0]=low_bit;
	 data[1]=high_bit;
end
always@(*)
begin
case(data)
2'b00: qpsk_seq<=-result;
2'b11: qpsk_seq<=result;
2'b01:qpsk_seq<=cos/2-sine/2;
2'b10:qpsk_seq<=sine/2-cos/2;
endcase
end




endmodule
