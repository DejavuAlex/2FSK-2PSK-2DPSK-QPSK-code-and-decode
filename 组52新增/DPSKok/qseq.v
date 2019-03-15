module qseq(
input clk,
output reg seq
);
reg [3:0]seq1;
initial seq1=4'b1000;
always@(posedge clk)
begin
    
	 seq1<={seq1[2:0],seq1[3]};
	 seq1[0]<=seq1[0]^seq1[3];
	 seq<=seq1[3];
end
endmodule