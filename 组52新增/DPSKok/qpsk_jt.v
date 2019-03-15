module qpsk_jt(
    input clk_20,
	 input clk_2,
	 input clk_1,
    input signed [7:0]sine,
	 input signed [7:0]cos,
	 input signed [7:0]seq,
	 output reg seq_jt,
	 output signed[31:0]sumsin,
output signed[31:0]sumcos
	);

reg high_bit;
reg low_bit;
reg state;
reg state1;


mac MACsin(
    .clock0(clk_20),
    .dataa(sine),
	 .datab(seq),
	 .result(sumsin),
	 .aclr3(clk_2)
	);
 mac MACcos(
    .clock0(clk_20),
    .dataa(cos),
	 .datab(seq),
	 .result(sumcos),
	 .aclr3(clk_2)
	);


always@(posedge clk_1)
begin
   
   if(sumcos[31]==0)
	high_bit<=1;
	else
	high_bit<=0;
	if(sumsin[31]==0)
	low_bit<=1;
	else
	low_bit<=0;
	
	
end


always@(posedge clk_2)
begin
case(state1)

1'b0:seq_jt<=low_bit;
1'b1:seq_jt<=high_bit;
endcase
state1<=~state1;
end

	
endmodule 