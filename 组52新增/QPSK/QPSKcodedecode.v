// Copyright (C) 1991-2016 Altera Corporation. All rights reserved.
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, the Altera Quartus Prime License Agreement,
// the Altera MegaCore Function License Agreement, or other 
// applicable license agreement, including, without limitation, 
// that your use is for the sole purpose of programming logic 
// devices manufactured by Altera and sold by Altera or its 
// authorized distributors.  Please refer to the applicable 
// agreement for further details.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 16.0.0 Build 211 04/27/2016 SJ Standard Edition"
// CREATED		"Fri Mar 01 19:39:46 2019"

module QPSKcodedecode(
	clk,
	en,
	rst,
	sel,
	reset_n,
	ast_sink_error,
	data_in,
	data_out,
	data_0,
	data_1,
	fcos_out,
	fsin_o,
	fsin_out,
	LPM1,
	LPM2
);


input wire	clk;
input wire	en;
input wire	rst;
input wire	sel;
input wire	reset_n;
input wire	[1:0] ast_sink_error;
output wire	data_in;
output wire	data_out;
output wire	data_0;
output wire	data_1;
output wire	[11:0] fcos_out;
output wire	[11:0] fsin_o;
output wire	[11:0] fsin_out;
output wire	[23:0] LPM1;
output wire	[23:0] LPM2;

wire	SYNTHESIZED_WIRE_24;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	[13:0] SYNTHESIZED_WIRE_4;
wire	[31:0] SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_25;
wire	[23:0] SYNTHESIZED_WIRE_7;
wire	[23:0] SYNTHESIZED_WIRE_9;
wire	[34:0] SYNTHESIZED_WIRE_10;
wire	[34:0] SYNTHESIZED_WIRE_11;
wire	[11:0] SYNTHESIZED_WIRE_26;
wire	[11:0] SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_15;
wire	[1:0] SYNTHESIZED_WIRE_16;
wire	SYNTHESIZED_WIRE_17;
wire	SYNTHESIZED_WIRE_18;
wire	SYNTHESIZED_WIRE_19;
wire	[13:0] SYNTHESIZED_WIRE_20;
wire	[31:0] SYNTHESIZED_WIRE_21;
wire	[11:0] SYNTHESIZED_WIRE_23;

assign	data_in = SYNTHESIZED_WIRE_18;
assign	data_0 = SYNTHESIZED_WIRE_1;
assign	data_1 = SYNTHESIZED_WIRE_2;
assign	fcos_out = SYNTHESIZED_WIRE_23;
assign	fsin_o = SYNTHESIZED_WIRE_26;
assign	fsin_out = SYNTHESIZED_WIRE_14;
assign	LPM1 = SYNTHESIZED_WIRE_7;
assign	LPM2 = SYNTHESIZED_WIRE_9;





data_selector	b2v_inst(
	.en(SYNTHESIZED_WIRE_24),
	.data_0(SYNTHESIZED_WIRE_1),
	.data_1(SYNTHESIZED_WIRE_2),
	.sel(sel),
	.data(SYNTHESIZED_WIRE_18),
	.sel_load(SYNTHESIZED_WIRE_17));


data_source	b2v_inst1(
	.clk(clk),
	.en(SYNTHESIZED_WIRE_24),
	.rst(rst),
	.data(SYNTHESIZED_WIRE_1)
	);


phi_phase_mod	b2v_inst10(
	.en(en),
	.phase_mod(SYNTHESIZED_WIRE_4),
	.phi_in(SYNTHESIZED_WIRE_5));


NCO	b2v_inst11(
	.clk(clk),
	.clken(en),
	.reset_n(reset_n),
	.phase_mod_i(SYNTHESIZED_WIRE_4),
	.phi_inc_i(SYNTHESIZED_WIRE_5),
	.out_valid(SYNTHESIZED_WIRE_25),
	.fcos_o(SYNTHESIZED_WIRE_23),
	.fsin_o(SYNTHESIZED_WIRE_14));


FIR	b2v_inst12(
	.ast_sink_valid(SYNTHESIZED_WIRE_25),
	.clk(clk),
	.reset_n(reset_n),
	.ast_sink_data(SYNTHESIZED_WIRE_7),
	.ast_sink_error(ast_sink_error),
	
	.ast_source_data(SYNTHESIZED_WIRE_10)
	);


FIR	b2v_inst13(
	.ast_sink_valid(SYNTHESIZED_WIRE_25),
	.clk(clk),
	.reset_n(reset_n),
	.ast_sink_data(SYNTHESIZED_WIRE_9),
	.ast_sink_error(ast_sink_error),
	
	.ast_source_data(SYNTHESIZED_WIRE_11)
	);


identify	b2v_inst14(
	.en(en),
	.clk(clk),
	.rst(reset_n),
	.I(SYNTHESIZED_WIRE_10),
	.Q(SYNTHESIZED_WIRE_11),
	.IQ(data_out));


data_source_2	b2v_inst2(
	.clk(clk),
	.en(SYNTHESIZED_WIRE_24),
	.rst(rst),
	.data(SYNTHESIZED_WIRE_2)
	);


fre_diff	b2v_inst3(
	.clk(clk),
	.en(en),
	.rst(rst),
	
	.f_valid(SYNTHESIZED_WIRE_24));


LPM	b2v_inst4(
	.dataa(SYNTHESIZED_WIRE_26),
	.datab(SYNTHESIZED_WIRE_14),
	.result(SYNTHESIZED_WIRE_7));


phase_selector	b2v_inst5(
	.clk(clk),
	.reset_n(SYNTHESIZED_WIRE_15),
	.ph_select(SYNTHESIZED_WIRE_16),
	.phase_va(SYNTHESIZED_WIRE_19),
	.phase_mod(SYNTHESIZED_WIRE_20));


phi_phase_mod	b2v_inst6(
	.en(en),
	
	.phi_in(SYNTHESIZED_WIRE_21));


tra	b2v_inst7(
	.clk(clk),
	.rst(SYNTHESIZED_WIRE_17),
	.data_in(SYNTHESIZED_WIRE_18),
	.out_va(SYNTHESIZED_WIRE_15),
	.data_out(SYNTHESIZED_WIRE_16));


NCO	b2v_inst8(
	.clk(clk),
	.clken(SYNTHESIZED_WIRE_19),
	.reset_n(rst),
	.phase_mod_i(SYNTHESIZED_WIRE_20),
	.phi_inc_i(SYNTHESIZED_WIRE_21),
	
	.fcos_o(SYNTHESIZED_WIRE_26)
	);


LPM	b2v_inst9(
	.dataa(SYNTHESIZED_WIRE_26),
	.datab(SYNTHESIZED_WIRE_23),
	.result(SYNTHESIZED_WIRE_9));


endmodule
