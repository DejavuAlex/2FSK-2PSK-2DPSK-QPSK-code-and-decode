//phi_phase_mod模块
module phi_phase_mod(en,phi_in,phase_mod);
input en;
output [31:0] phi_in;
output [13:0] phase_mod;
reg [31:0]phi_buff;
reg[13:0]phase_mod_buff;
assign phi_in=phi_buff;
assign phase_mod=phase_mod_buff;
always
if(en==1)
	begin
		phi_buff<=868993459;
		phase_mod_buff<=4096;
	end
else
	begin
		phi_buff<=0;
		phase_mod_buff<=0;
	end
endmodule