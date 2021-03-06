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
// CREATED		"Wed Jan 16 16:20:39 2019"

module qpsk(
	clk,
	reset_n,
	NRZ1,
	NRZ2,
	qpsk,
	PD,
	clk_DA
);


input wire	clk;
input wire	reset_n;
output wire	NRZ1;
output wire	NRZ2;
output wire	[7:0] qpsk;
output wire PD;
output wire clk_DA;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	[7:0] SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;

assign	NRZ1 = SYNTHESIZED_WIRE_1;
assign	NRZ2 = SYNTHESIZED_WIRE_2;
assign   PD=0;
assign   clk_DA = clk;




counter	b2v_inst(
	.clk(clk),
	.reset_n(reset_n),
	.clk1(SYNTHESIZED_WIRE_0));


NRZ	b2v_inst1(
	.clk1(SYNTHESIZED_WIRE_0),
	.reset_n(reset_n),
	.NRZ(SYNTHESIZED_WIRE_1));


Controller	b2v_inst2(
	.clk(clk),
	.reset_n(reset_n),
	.dataoutm1(SYNTHESIZED_WIRE_1),
	.dataoutm2(SYNTHESIZED_WIRE_2),
	
	
	
	.address(SYNTHESIZED_WIRE_3));


LookUpTable	b2v_inst4(
	.clk(clk),
	.reset_n(reset_n),
	.address(SYNTHESIZED_WIRE_3),
	.data(qpsk));


counter1	b2v_inst5(
	.clk(clk),
	.reset_n(reset_n),
	.clk1(SYNTHESIZED_WIRE_4));


NRZ1	b2v_inst6(
	.clk1(SYNTHESIZED_WIRE_4),
	.reset_n(reset_n),
	.NRZ(SYNTHESIZED_WIRE_2));


endmodule
