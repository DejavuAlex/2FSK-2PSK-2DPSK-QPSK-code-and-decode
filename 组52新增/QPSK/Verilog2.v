//相位映射模块
module
phase_selector(clk,ph_select,reset_n,phase_mod,phase_va);
input clk;
input reset_n;
input [1:0] ph_select;
output [13:0] phase_mod;
output phase_va;
reg buff;
reg [13:0] sub_reg0;
assign phase_mod=sub_reg0;
assign phase_va=buff;
always @(posedge clk or negedge reset_n)
begin
	if(reset_n==1'b0)
		begin
			sub_reg0<=0;
			buff<=0;
		end
	else
		begin 
				buff<=1;
			case (ph_select[1:0])
				0:
			begin
					sub_reg0[13:0]<=2048;//pi/4
			end
				1:
			begin
					sub_reg0[13:0]<=14336;//7pi/4
			end
				2:
			begin
					sub_reg0[13:0]<=6144;//3pi/4
			end
				3:
			begin
					sub_reg0[13:0]<=10240;//5pi/4
			end
			default:
			begin
					sub_reg0[13:0]<=0;
			end
			endcase
		end
	end
	endmodule