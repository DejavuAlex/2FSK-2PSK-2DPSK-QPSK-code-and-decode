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
// CREATED		"Thu Feb 21 11:34:15 2019"

module QPSK(
	clk,
	en,
	rst,
	sel,
	data_in,
	fcos_o,
	fsin_o
);


input wire	clk;
input wire	en;
input wire	rst;
input wire	sel;
output wire	data_in;
output wire	[11:0] fcos_o;
output wire	[11:0] fsin_o;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_6;
wire	[1:0] SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_10;
wire	[13:0] SYNTHESIZED_WIRE_11;
wire	[31:0] SYNTHESIZED_WIRE_12;

assign	data_in = SYNTHESIZED_WIRE_9;




data_selector	b2v_inst(
	.en(en),
	.data_0(SYNTHESIZED_WIRE_0),
	.data_1(SYNTHESIZED_WIRE_1),
	.sel(sel),
	.data(SYNTHESIZED_WIRE_9),
	.sel_load(SYNTHESIZED_WIRE_8));


data_source	b2v_inst1(
	.clk(SYNTHESIZED_WIRE_13),
	.en(SYNTHESIZED_WIRE_14),
	.rst(rst),
	.data(SYNTHESIZED_WIRE_0)
	);


data_source_2	b2v_inst2(
	.clk(SYNTHESIZED_WIRE_13),
	.en(SYNTHESIZED_WIRE_14),
	.rst(rst),
	.data(SYNTHESIZED_WIRE_1)
	);


fre_diff	b2v_inst3(
	.clk(clk),
	.en(en),
	.rst(rst),
	.c_out(SYNTHESIZED_WIRE_13),
	.f_valid(SYNTHESIZED_WIRE_14));


phase_selector	b2v_inst5(
	.clk(clk),
	.reset_n(SYNTHESIZED_WIRE_6),
	.ph_select(SYNTHESIZED_WIRE_7),
	.phase_va(SYNTHESIZED_WIRE_10),
	.phase_mod(SYNTHESIZED_WIRE_11));


phi_phase_mod	b2v_inst6(
	.en(en),
	
	.phi_in(SYNTHESIZED_WIRE_12));


tra	b2v_inst7(
	.clk(clk),
	.rst(SYNTHESIZED_WIRE_8),
	.data_in(SYNTHESIZED_WIRE_9),
	.out_va(SYNTHESIZED_WIRE_6),
	.data_out(SYNTHESIZED_WIRE_7));


NCO	b2v_inst8(
	.clk(clk),
	.clken(SYNTHESIZED_WIRE_10),
	.reset_n(rst),
	.phase_mod_i(SYNTHESIZED_WIRE_11),
	.phi_inc_i(SYNTHESIZED_WIRE_12),
	
	.fcos_o(fcos_o),
	.fsin_o(fsin_o));


endmodule
