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
// CREATED		"Fri Mar 01 12:09:56 2019"

module FSK2(
	pin_name2,
	out,
	data,
	data23,
	dout,
	PD,
	clk_DA,
	clk_AD,
	SW,
	A,
	AD_PD
);


input wire	pin_name2;
input wire signed[3:0]SW;
input wire signed[7:0]A;
output wire	out;
output wire	[7:0] data;
output wire	[7:0] data23;
output wire	[7:0] dout;
output wire PD;
output wire clk_DA;
output wire clk_AD;
output AD_PD;

wire	SYNTHESIZED_WIRE_0;
wire	[7:0] SYNTHESIZED_WIRE_1;
wire	[7:0] SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	[7:0] SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	[7:0] SYNTHESIZED_WIRE_7;

assign  AD_PD=0;
assign	out = SYNTHESIZED_WIRE_0;
assign	data = SYNTHESIZED_WIRE_1;
assign	data23 = SYNTHESIZED_WIRE_2;
assign   PD=0;
assign   clk_DA=pin_name2;
assign   clk_AD=pin_name2;




kaiguan	b2v_inst(
	.sel(SYNTHESIZED_WIRE_0),
	.din0(SYNTHESIZED_WIRE_1),
	.din1(SYNTHESIZED_WIRE_2),
	.dout(dout));
	defparam	b2v_inst.N = 8;


counter	b2v_inst2(
	.clock(SYNTHESIZED_WIRE_3),
	.q(SYNTHESIZED_WIRE_5));


fenpin1	b2v_inst20(
	.clk_in(pin_name2),
	.clk_out(SYNTHESIZED_WIRE_6),
	.SW(SW)
	);
	


fenpin2	b2v_inst21(
	.clk_in(pin_name2),
	.clk_out(SYNTHESIZED_WIRE_3),
	.SW(SW));
	


fenpin	b2v_inst22(
	.clk_in(pin_name2),
	.clk_out(SYNTHESIZED_WIRE_4),
	.SW(SW));
	


MXL	b2v_inst3(
	.clk(SYNTHESIZED_WIRE_4),
	.out(SYNTHESIZED_WIRE_0));


DATAROM	b2v_inst4(
	.clock(pin_name2),
	.address(SYNTHESIZED_WIRE_5),
	.q(SYNTHESIZED_WIRE_1));


counter	b2v_inst5(
	.clock(SYNTHESIZED_WIRE_6),
	.q(SYNTHESIZED_WIRE_7));


DATAROM	b2v_inst6(
	.clock(pin_name2),
	.address(SYNTHESIZED_WIRE_7),
	.q(SYNTHESIZED_WIRE_2));


endmodule
