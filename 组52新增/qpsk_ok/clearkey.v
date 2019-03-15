module clearkey(
input clk,
input key_in,
output reg clear_key
);
reg last_key;
reg sample_enable;
reg [24:0]counter;

always @(posedge clk)
begin
if (counter == 119999)begin
	sample_enable<=1;
	counter <= 0;
end else begin 
	counter <= counter + 1;
	sample_enable<=0;
end
end 

always @(posedge clk)
begin
	if(sample_enable)begin
		last_key<=key_in;
		if(last_key==key_in)begin
			clear_key<=key_in;
		end 
	end 
end 
endmodule 