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

// VENDOR "Altera"
// PROGRAM "Quartus Prime"
// VERSION "Version 16.0.0 Build 211 04/27/2016 SJ Standard Edition"

// DATE "02/24/2019 16:47:28"

// 
// Device: Altera 10M08DAF484C8G Package FBGA484
// 

// 
// This greybox netlist file is for third party Synthesis Tools
// for timing and resource estimation only.
// 


module nco (
	clk,
	clken,
	phi_inc_i,
	phase_mod_i,
	fsin_o,
	fcos_o,
	out_valid,
	reset_n)/* synthesis synthesis_greybox=1 */;
input 	clk;
input 	clken;
input 	[31:0] phi_inc_i;
input 	[13:0] phase_mod_i;
output 	[11:0] fsin_o;
output 	[11:0] fcos_o;
output 	out_valid;
input 	reset_n;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \nco_ii_0|ux710isdr|data_ready~q ;
wire \nco_ii_0|ux122|data_out[0]~q ;
wire \nco_ii_0|ux122|data_out[1]~q ;
wire \nco_ii_0|ux122|data_out[2]~q ;
wire \nco_ii_0|ux122|data_out[3]~q ;
wire \nco_ii_0|ux122|data_out[4]~q ;
wire \nco_ii_0|ux122|data_out[5]~q ;
wire \nco_ii_0|ux122|data_out[6]~q ;
wire \nco_ii_0|ux122|data_out[7]~q ;
wire \nco_ii_0|ux122|data_out[8]~q ;
wire \nco_ii_0|ux122|data_out[9]~q ;
wire \nco_ii_0|ux122|data_out[10]~q ;
wire \nco_ii_0|ux122|data_out[11]~q ;
wire \nco_ii_0|ux123|data_out[0]~q ;
wire \nco_ii_0|ux123|data_out[1]~q ;
wire \nco_ii_0|ux123|data_out[2]~q ;
wire \nco_ii_0|ux123|data_out[3]~q ;
wire \nco_ii_0|ux123|data_out[4]~q ;
wire \nco_ii_0|ux123|data_out[5]~q ;
wire \nco_ii_0|ux123|data_out[6]~q ;
wire \nco_ii_0|ux123|data_out[7]~q ;
wire \nco_ii_0|ux123|data_out[8]~q ;
wire \nco_ii_0|ux123|data_out[9]~q ;
wire \nco_ii_0|ux123|data_out[10]~q ;
wire \nco_ii_0|ux123|data_out[11]~q ;
wire \~GND~combout ;
wire \reset_n~input_o ;
wire \clk~input_o ;
wire \clken~input_o ;
wire \phase_mod_i[1]~input_o ;
wire \phase_mod_i[0]~input_o ;
wire \phase_mod_i[2]~input_o ;
wire \phase_mod_i[3]~input_o ;
wire \phase_mod_i[4]~input_o ;
wire \phase_mod_i[5]~input_o ;
wire \phase_mod_i[6]~input_o ;
wire \phase_mod_i[7]~input_o ;
wire \phase_mod_i[8]~input_o ;
wire \phase_mod_i[9]~input_o ;
wire \phase_mod_i[10]~input_o ;
wire \phase_mod_i[11]~input_o ;
wire \phase_mod_i[12]~input_o ;
wire \phase_mod_i[13]~input_o ;
wire \phi_inc_i[19]~input_o ;
wire \phi_inc_i[18]~input_o ;
wire \phi_inc_i[17]~input_o ;
wire \phi_inc_i[16]~input_o ;
wire \phi_inc_i[15]~input_o ;
wire \phi_inc_i[14]~input_o ;
wire \phi_inc_i[13]~input_o ;
wire \phi_inc_i[12]~input_o ;
wire \phi_inc_i[11]~input_o ;
wire \phi_inc_i[10]~input_o ;
wire \phi_inc_i[9]~input_o ;
wire \phi_inc_i[8]~input_o ;
wire \phi_inc_i[7]~input_o ;
wire \phi_inc_i[6]~input_o ;
wire \phi_inc_i[5]~input_o ;
wire \phi_inc_i[4]~input_o ;
wire \phi_inc_i[3]~input_o ;
wire \phi_inc_i[2]~input_o ;
wire \phi_inc_i[1]~input_o ;
wire \phi_inc_i[0]~input_o ;
wire \phi_inc_i[20]~input_o ;
wire \phi_inc_i[21]~input_o ;
wire \phi_inc_i[22]~input_o ;
wire \phi_inc_i[23]~input_o ;
wire \phi_inc_i[24]~input_o ;
wire \phi_inc_i[25]~input_o ;
wire \phi_inc_i[26]~input_o ;
wire \phi_inc_i[27]~input_o ;
wire \phi_inc_i[28]~input_o ;
wire \phi_inc_i[29]~input_o ;
wire \phi_inc_i[30]~input_o ;
wire \phi_inc_i[31]~input_o ;


nco_nco_nco_ii_0 nco_ii_0(
	.data_ready(\nco_ii_0|ux710isdr|data_ready~q ),
	.data_out_0(\nco_ii_0|ux122|data_out[0]~q ),
	.data_out_1(\nco_ii_0|ux122|data_out[1]~q ),
	.data_out_2(\nco_ii_0|ux122|data_out[2]~q ),
	.data_out_3(\nco_ii_0|ux122|data_out[3]~q ),
	.data_out_4(\nco_ii_0|ux122|data_out[4]~q ),
	.data_out_5(\nco_ii_0|ux122|data_out[5]~q ),
	.data_out_6(\nco_ii_0|ux122|data_out[6]~q ),
	.data_out_7(\nco_ii_0|ux122|data_out[7]~q ),
	.data_out_8(\nco_ii_0|ux122|data_out[8]~q ),
	.data_out_9(\nco_ii_0|ux122|data_out[9]~q ),
	.data_out_10(\nco_ii_0|ux122|data_out[10]~q ),
	.data_out_11(\nco_ii_0|ux122|data_out[11]~q ),
	.data_out_01(\nco_ii_0|ux123|data_out[0]~q ),
	.data_out_12(\nco_ii_0|ux123|data_out[1]~q ),
	.data_out_21(\nco_ii_0|ux123|data_out[2]~q ),
	.data_out_31(\nco_ii_0|ux123|data_out[3]~q ),
	.data_out_41(\nco_ii_0|ux123|data_out[4]~q ),
	.data_out_51(\nco_ii_0|ux123|data_out[5]~q ),
	.data_out_61(\nco_ii_0|ux123|data_out[6]~q ),
	.data_out_71(\nco_ii_0|ux123|data_out[7]~q ),
	.data_out_81(\nco_ii_0|ux123|data_out[8]~q ),
	.data_out_91(\nco_ii_0|ux123|data_out[9]~q ),
	.data_out_101(\nco_ii_0|ux123|data_out[10]~q ),
	.data_out_111(\nco_ii_0|ux123|data_out[11]~q ),
	.GND_port(\~GND~combout ),
	.reset_n(\reset_n~input_o ),
	.clk(\clk~input_o ),
	.clken(\clken~input_o ),
	.phase_mod_i_1(\phase_mod_i[1]~input_o ),
	.phase_mod_i_0(\phase_mod_i[0]~input_o ),
	.phase_mod_i_2(\phase_mod_i[2]~input_o ),
	.phase_mod_i_3(\phase_mod_i[3]~input_o ),
	.phase_mod_i_4(\phase_mod_i[4]~input_o ),
	.phase_mod_i_5(\phase_mod_i[5]~input_o ),
	.phase_mod_i_6(\phase_mod_i[6]~input_o ),
	.phase_mod_i_7(\phase_mod_i[7]~input_o ),
	.phase_mod_i_8(\phase_mod_i[8]~input_o ),
	.phase_mod_i_9(\phase_mod_i[9]~input_o ),
	.phase_mod_i_10(\phase_mod_i[10]~input_o ),
	.phase_mod_i_11(\phase_mod_i[11]~input_o ),
	.phase_mod_i_12(\phase_mod_i[12]~input_o ),
	.phase_mod_i_13(\phase_mod_i[13]~input_o ),
	.phi_inc_i_19(\phi_inc_i[19]~input_o ),
	.phi_inc_i_18(\phi_inc_i[18]~input_o ),
	.phi_inc_i_17(\phi_inc_i[17]~input_o ),
	.phi_inc_i_16(\phi_inc_i[16]~input_o ),
	.phi_inc_i_15(\phi_inc_i[15]~input_o ),
	.phi_inc_i_14(\phi_inc_i[14]~input_o ),
	.phi_inc_i_13(\phi_inc_i[13]~input_o ),
	.phi_inc_i_12(\phi_inc_i[12]~input_o ),
	.phi_inc_i_11(\phi_inc_i[11]~input_o ),
	.phi_inc_i_10(\phi_inc_i[10]~input_o ),
	.phi_inc_i_9(\phi_inc_i[9]~input_o ),
	.phi_inc_i_8(\phi_inc_i[8]~input_o ),
	.phi_inc_i_7(\phi_inc_i[7]~input_o ),
	.phi_inc_i_6(\phi_inc_i[6]~input_o ),
	.phi_inc_i_5(\phi_inc_i[5]~input_o ),
	.phi_inc_i_4(\phi_inc_i[4]~input_o ),
	.phi_inc_i_3(\phi_inc_i[3]~input_o ),
	.phi_inc_i_2(\phi_inc_i[2]~input_o ),
	.phi_inc_i_1(\phi_inc_i[1]~input_o ),
	.phi_inc_i_0(\phi_inc_i[0]~input_o ),
	.phi_inc_i_20(\phi_inc_i[20]~input_o ),
	.phi_inc_i_21(\phi_inc_i[21]~input_o ),
	.phi_inc_i_22(\phi_inc_i[22]~input_o ),
	.phi_inc_i_23(\phi_inc_i[23]~input_o ),
	.phi_inc_i_24(\phi_inc_i[24]~input_o ),
	.phi_inc_i_25(\phi_inc_i[25]~input_o ),
	.phi_inc_i_26(\phi_inc_i[26]~input_o ),
	.phi_inc_i_27(\phi_inc_i[27]~input_o ),
	.phi_inc_i_28(\phi_inc_i[28]~input_o ),
	.phi_inc_i_29(\phi_inc_i[29]~input_o ),
	.phi_inc_i_30(\phi_inc_i[30]~input_o ),
	.phi_inc_i_31(\phi_inc_i[31]~input_o ));

fiftyfivenm_lcell_comb \~GND (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\~GND~combout ),
	.cout());
defparam \~GND .lut_mask = 16'h0000;
defparam \~GND .sum_lutc_input = "datac";

assign \reset_n~input_o  = reset_n;

assign \clk~input_o  = clk;

assign \clken~input_o  = clken;

assign \phase_mod_i[1]~input_o  = phase_mod_i[1];

assign \phase_mod_i[0]~input_o  = phase_mod_i[0];

assign \phase_mod_i[2]~input_o  = phase_mod_i[2];

assign \phase_mod_i[3]~input_o  = phase_mod_i[3];

assign \phase_mod_i[4]~input_o  = phase_mod_i[4];

assign \phase_mod_i[5]~input_o  = phase_mod_i[5];

assign \phase_mod_i[6]~input_o  = phase_mod_i[6];

assign \phase_mod_i[7]~input_o  = phase_mod_i[7];

assign \phase_mod_i[8]~input_o  = phase_mod_i[8];

assign \phase_mod_i[9]~input_o  = phase_mod_i[9];

assign \phase_mod_i[10]~input_o  = phase_mod_i[10];

assign \phase_mod_i[11]~input_o  = phase_mod_i[11];

assign \phase_mod_i[12]~input_o  = phase_mod_i[12];

assign \phase_mod_i[13]~input_o  = phase_mod_i[13];

assign \phi_inc_i[19]~input_o  = phi_inc_i[19];

assign \phi_inc_i[18]~input_o  = phi_inc_i[18];

assign \phi_inc_i[17]~input_o  = phi_inc_i[17];

assign \phi_inc_i[16]~input_o  = phi_inc_i[16];

assign \phi_inc_i[15]~input_o  = phi_inc_i[15];

assign \phi_inc_i[14]~input_o  = phi_inc_i[14];

assign \phi_inc_i[13]~input_o  = phi_inc_i[13];

assign \phi_inc_i[12]~input_o  = phi_inc_i[12];

assign \phi_inc_i[11]~input_o  = phi_inc_i[11];

assign \phi_inc_i[10]~input_o  = phi_inc_i[10];

assign \phi_inc_i[9]~input_o  = phi_inc_i[9];

assign \phi_inc_i[8]~input_o  = phi_inc_i[8];

assign \phi_inc_i[7]~input_o  = phi_inc_i[7];

assign \phi_inc_i[6]~input_o  = phi_inc_i[6];

assign \phi_inc_i[5]~input_o  = phi_inc_i[5];

assign \phi_inc_i[4]~input_o  = phi_inc_i[4];

assign \phi_inc_i[3]~input_o  = phi_inc_i[3];

assign \phi_inc_i[2]~input_o  = phi_inc_i[2];

assign \phi_inc_i[1]~input_o  = phi_inc_i[1];

assign \phi_inc_i[0]~input_o  = phi_inc_i[0];

assign \phi_inc_i[20]~input_o  = phi_inc_i[20];

assign \phi_inc_i[21]~input_o  = phi_inc_i[21];

assign \phi_inc_i[22]~input_o  = phi_inc_i[22];

assign \phi_inc_i[23]~input_o  = phi_inc_i[23];

assign \phi_inc_i[24]~input_o  = phi_inc_i[24];

assign \phi_inc_i[25]~input_o  = phi_inc_i[25];

assign \phi_inc_i[26]~input_o  = phi_inc_i[26];

assign \phi_inc_i[27]~input_o  = phi_inc_i[27];

assign \phi_inc_i[28]~input_o  = phi_inc_i[28];

assign \phi_inc_i[29]~input_o  = phi_inc_i[29];

assign \phi_inc_i[30]~input_o  = phi_inc_i[30];

assign \phi_inc_i[31]~input_o  = phi_inc_i[31];

assign fsin_o[0] = \nco_ii_0|ux122|data_out[0]~q ;

assign fsin_o[1] = \nco_ii_0|ux122|data_out[1]~q ;

assign fsin_o[2] = \nco_ii_0|ux122|data_out[2]~q ;

assign fsin_o[3] = \nco_ii_0|ux122|data_out[3]~q ;

assign fsin_o[4] = \nco_ii_0|ux122|data_out[4]~q ;

assign fsin_o[5] = \nco_ii_0|ux122|data_out[5]~q ;

assign fsin_o[6] = \nco_ii_0|ux122|data_out[6]~q ;

assign fsin_o[7] = \nco_ii_0|ux122|data_out[7]~q ;

assign fsin_o[8] = \nco_ii_0|ux122|data_out[8]~q ;

assign fsin_o[9] = \nco_ii_0|ux122|data_out[9]~q ;

assign fsin_o[10] = \nco_ii_0|ux122|data_out[10]~q ;

assign fsin_o[11] = \nco_ii_0|ux122|data_out[11]~q ;

assign fcos_o[0] = \nco_ii_0|ux123|data_out[0]~q ;

assign fcos_o[1] = \nco_ii_0|ux123|data_out[1]~q ;

assign fcos_o[2] = \nco_ii_0|ux123|data_out[2]~q ;

assign fcos_o[3] = \nco_ii_0|ux123|data_out[3]~q ;

assign fcos_o[4] = \nco_ii_0|ux123|data_out[4]~q ;

assign fcos_o[5] = \nco_ii_0|ux123|data_out[5]~q ;

assign fcos_o[6] = \nco_ii_0|ux123|data_out[6]~q ;

assign fcos_o[7] = \nco_ii_0|ux123|data_out[7]~q ;

assign fcos_o[8] = \nco_ii_0|ux123|data_out[8]~q ;

assign fcos_o[9] = \nco_ii_0|ux123|data_out[9]~q ;

assign fcos_o[10] = \nco_ii_0|ux123|data_out[10]~q ;

assign fcos_o[11] = \nco_ii_0|ux123|data_out[11]~q ;

assign out_valid = \nco_ii_0|ux710isdr|data_ready~q ;

endmodule

module nco_nco_nco_ii_0 (
	data_ready,
	data_out_0,
	data_out_1,
	data_out_2,
	data_out_3,
	data_out_4,
	data_out_5,
	data_out_6,
	data_out_7,
	data_out_8,
	data_out_9,
	data_out_10,
	data_out_11,
	data_out_01,
	data_out_12,
	data_out_21,
	data_out_31,
	data_out_41,
	data_out_51,
	data_out_61,
	data_out_71,
	data_out_81,
	data_out_91,
	data_out_101,
	data_out_111,
	GND_port,
	reset_n,
	clk,
	clken,
	phase_mod_i_1,
	phase_mod_i_0,
	phase_mod_i_2,
	phase_mod_i_3,
	phase_mod_i_4,
	phase_mod_i_5,
	phase_mod_i_6,
	phase_mod_i_7,
	phase_mod_i_8,
	phase_mod_i_9,
	phase_mod_i_10,
	phase_mod_i_11,
	phase_mod_i_12,
	phase_mod_i_13,
	phi_inc_i_19,
	phi_inc_i_18,
	phi_inc_i_17,
	phi_inc_i_16,
	phi_inc_i_15,
	phi_inc_i_14,
	phi_inc_i_13,
	phi_inc_i_12,
	phi_inc_i_11,
	phi_inc_i_10,
	phi_inc_i_9,
	phi_inc_i_8,
	phi_inc_i_7,
	phi_inc_i_6,
	phi_inc_i_5,
	phi_inc_i_4,
	phi_inc_i_3,
	phi_inc_i_2,
	phi_inc_i_1,
	phi_inc_i_0,
	phi_inc_i_20,
	phi_inc_i_21,
	phi_inc_i_22,
	phi_inc_i_23,
	phi_inc_i_24,
	phi_inc_i_25,
	phi_inc_i_26,
	phi_inc_i_27,
	phi_inc_i_28,
	phi_inc_i_29,
	phi_inc_i_30,
	phi_inc_i_31)/* synthesis synthesis_greybox=1 */;
output 	data_ready;
output 	data_out_0;
output 	data_out_1;
output 	data_out_2;
output 	data_out_3;
output 	data_out_4;
output 	data_out_5;
output 	data_out_6;
output 	data_out_7;
output 	data_out_8;
output 	data_out_9;
output 	data_out_10;
output 	data_out_11;
output 	data_out_01;
output 	data_out_12;
output 	data_out_21;
output 	data_out_31;
output 	data_out_41;
output 	data_out_51;
output 	data_out_61;
output 	data_out_71;
output 	data_out_81;
output 	data_out_91;
output 	data_out_101;
output 	data_out_111;
input 	GND_port;
input 	reset_n;
input 	clk;
input 	clken;
input 	phase_mod_i_1;
input 	phase_mod_i_0;
input 	phase_mod_i_2;
input 	phase_mod_i_3;
input 	phase_mod_i_4;
input 	phase_mod_i_5;
input 	phase_mod_i_6;
input 	phase_mod_i_7;
input 	phase_mod_i_8;
input 	phase_mod_i_9;
input 	phase_mod_i_10;
input 	phase_mod_i_11;
input 	phase_mod_i_12;
input 	phase_mod_i_13;
input 	phi_inc_i_19;
input 	phi_inc_i_18;
input 	phi_inc_i_17;
input 	phi_inc_i_16;
input 	phi_inc_i_15;
input 	phi_inc_i_14;
input 	phi_inc_i_13;
input 	phi_inc_i_12;
input 	phi_inc_i_11;
input 	phi_inc_i_10;
input 	phi_inc_i_9;
input 	phi_inc_i_8;
input 	phi_inc_i_7;
input 	phi_inc_i_6;
input 	phi_inc_i_5;
input 	phi_inc_i_4;
input 	phi_inc_i_3;
input 	phi_inc_i_2;
input 	phi_inc_i_1;
input 	phi_inc_i_0;
input 	phi_inc_i_20;
input 	phi_inc_i_21;
input 	phi_inc_i_22;
input 	phi_inc_i_23;
input 	phi_inc_i_24;
input 	phi_inc_i_25;
input 	phi_inc_i_26;
input 	phi_inc_i_27;
input 	phi_inc_i_28;
input 	phi_inc_i_29;
input 	phi_inc_i_30;
input 	phi_inc_i_31;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \ux0120|altsyncram_component0|auto_generated|q_a[0] ;
wire \ux0120|altsyncram_component0|auto_generated|q_a[1] ;
wire \ux0120|altsyncram_component0|auto_generated|q_a[2] ;
wire \ux0120|altsyncram_component0|auto_generated|q_a[3] ;
wire \ux0120|altsyncram_component0|auto_generated|q_a[4] ;
wire \ux0120|altsyncram_component0|auto_generated|q_a[5] ;
wire \ux0120|altsyncram_component0|auto_generated|q_a[6] ;
wire \ux0120|altsyncram_component0|auto_generated|q_a[7] ;
wire \ux0120|altsyncram_component0|auto_generated|q_a[8] ;
wire \ux0120|altsyncram_component0|auto_generated|q_a[9] ;
wire \ux0120|altsyncram_component0|auto_generated|q_a[10] ;
wire \ux0120|altsyncram_component0|auto_generated|q_a[11] ;
wire \ux0121|altsyncram_component0|auto_generated|q_a[0] ;
wire \ux0121|altsyncram_component0|auto_generated|q_a[1] ;
wire \ux0121|altsyncram_component0|auto_generated|q_a[2] ;
wire \ux0121|altsyncram_component0|auto_generated|q_a[3] ;
wire \ux0121|altsyncram_component0|auto_generated|q_a[4] ;
wire \ux0121|altsyncram_component0|auto_generated|q_a[5] ;
wire \ux0121|altsyncram_component0|auto_generated|q_a[6] ;
wire \ux0121|altsyncram_component0|auto_generated|q_a[7] ;
wire \ux0121|altsyncram_component0|auto_generated|q_a[8] ;
wire \ux0121|altsyncram_component0|auto_generated|q_a[9] ;
wire \ux0121|altsyncram_component0|auto_generated|q_a[10] ;
wire \ux0121|altsyncram_component0|auto_generated|q_a[11] ;
wire \ux004|acc|auto_generated|pipeline_dffe[1]~q ;
wire \ux004|acc|auto_generated|pipeline_dffe[2]~q ;
wire \ux004|acc|auto_generated|pipeline_dffe[3]~q ;
wire \ux004|acc|auto_generated|pipeline_dffe[4]~q ;
wire \ux004|acc|auto_generated|pipeline_dffe[5]~q ;
wire \ux004|acc|auto_generated|pipeline_dffe[6]~q ;
wire \ux004|acc|auto_generated|pipeline_dffe[7]~q ;
wire \ux004|acc|auto_generated|pipeline_dffe[8]~q ;
wire \ux004|acc|auto_generated|pipeline_dffe[9]~q ;
wire \ux004|acc|auto_generated|pipeline_dffe[10]~q ;
wire \ux004|acc|auto_generated|pipeline_dffe[11]~q ;
wire \ux004|acc|auto_generated|pipeline_dffe[12]~q ;
wire \ux004|acc|auto_generated|pipeline_dffe[13]~q ;
wire \ux001|dxxrv[3]~q ;
wire \ux000|acc|auto_generated|pipeline_dffe[19]~q ;
wire \ux000|acc|auto_generated|pipeline_dffe[18]~q ;
wire \ux000|acc|auto_generated|pipeline_dffe[17]~q ;
wire \ux001|dxxrv[2]~q ;
wire \ux000|acc|auto_generated|pipeline_dffe[16]~q ;
wire \ux001|dxxrv[1]~q ;
wire \ux000|acc|auto_generated|pipeline_dffe[15]~q ;
wire \ux001|dxxrv[0]~q ;
wire \ux000|acc|auto_generated|pipeline_dffe[14]~q ;
wire \ux000|acc|auto_generated|pipeline_dffe[20]~q ;
wire \ux000|acc|auto_generated|pipeline_dffe[21]~q ;
wire \ux000|acc|auto_generated|pipeline_dffe[22]~q ;
wire \ux000|acc|auto_generated|pipeline_dffe[23]~q ;
wire \ux000|acc|auto_generated|pipeline_dffe[24]~q ;
wire \ux000|acc|auto_generated|pipeline_dffe[25]~q ;
wire \ux000|acc|auto_generated|pipeline_dffe[26]~q ;
wire \ux000|acc|auto_generated|pipeline_dffe[27]~q ;
wire \ux000|acc|auto_generated|pipeline_dffe[28]~q ;
wire \ux000|acc|auto_generated|pipeline_dffe[29]~q ;
wire \ux000|acc|auto_generated|pipeline_dffe[30]~q ;
wire \ux000|acc|auto_generated|pipeline_dffe[31]~q ;
wire \ux122|data_out[0]~1_combout ;
wire \ux009|rom_add[0]~q ;
wire \ux009|rom_add[1]~q ;
wire \ux009|rom_add[2]~q ;
wire \ux009|rom_add[3]~q ;
wire \ux009|rom_add[4]~q ;
wire \ux009|rom_add[5]~q ;
wire \ux009|rom_add[6]~q ;
wire \ux009|rom_add[7]~q ;
wire \ux009|rom_add[8]~q ;
wire \ux009|rom_add[9]~q ;
wire \ux009|rom_add[10]~q ;
wire \ux009|rom_add[11]~q ;
wire \ux009|rom_add[12]~q ;
wire \ux002|dxxpdo[5]~q ;
wire \ux002|dxxpdo[4]~q ;
wire \ux002|dxxpdo[6]~q ;
wire \ux002|dxxpdo[7]~q ;
wire \ux002|dxxpdo[8]~q ;
wire \ux002|dxxpdo[9]~q ;
wire \ux002|dxxpdo[10]~q ;
wire \ux002|dxxpdo[11]~q ;
wire \ux002|dxxpdo[12]~q ;
wire \ux002|dxxpdo[13]~q ;
wire \ux002|dxxpdo[14]~q ;
wire \ux002|dxxpdo[15]~q ;
wire \ux002|dxxpdo[16]~q ;
wire \ux002|dxxpdo[17]~q ;


nco_asj_nco_isdr ux710isdr(
	.data_ready1(data_ready),
	.GND_port(GND_port),
	.reset_n(reset_n),
	.clk(clk),
	.clken(clken));

nco_asj_nco_mob_rw_1 ux123(
	.q_a_0(\ux0121|altsyncram_component0|auto_generated|q_a[0] ),
	.q_a_1(\ux0121|altsyncram_component0|auto_generated|q_a[1] ),
	.q_a_2(\ux0121|altsyncram_component0|auto_generated|q_a[2] ),
	.q_a_3(\ux0121|altsyncram_component0|auto_generated|q_a[3] ),
	.q_a_4(\ux0121|altsyncram_component0|auto_generated|q_a[4] ),
	.q_a_5(\ux0121|altsyncram_component0|auto_generated|q_a[5] ),
	.q_a_6(\ux0121|altsyncram_component0|auto_generated|q_a[6] ),
	.q_a_7(\ux0121|altsyncram_component0|auto_generated|q_a[7] ),
	.q_a_8(\ux0121|altsyncram_component0|auto_generated|q_a[8] ),
	.q_a_9(\ux0121|altsyncram_component0|auto_generated|q_a[9] ),
	.q_a_10(\ux0121|altsyncram_component0|auto_generated|q_a[10] ),
	.q_a_11(\ux0121|altsyncram_component0|auto_generated|q_a[11] ),
	.data_out_0(data_out_01),
	.data_out_1(data_out_12),
	.data_out_2(data_out_21),
	.data_out_3(data_out_31),
	.data_out_4(data_out_41),
	.data_out_5(data_out_51),
	.data_out_6(data_out_61),
	.data_out_7(data_out_71),
	.data_out_8(data_out_81),
	.data_out_9(data_out_91),
	.data_out_10(data_out_101),
	.data_out_11(data_out_111),
	.data_out_01(\ux122|data_out[0]~1_combout ),
	.reset_n(reset_n),
	.clk(clk));

nco_asj_nco_mob_rw ux122(
	.q_a_0(\ux0120|altsyncram_component0|auto_generated|q_a[0] ),
	.q_a_1(\ux0120|altsyncram_component0|auto_generated|q_a[1] ),
	.q_a_2(\ux0120|altsyncram_component0|auto_generated|q_a[2] ),
	.q_a_3(\ux0120|altsyncram_component0|auto_generated|q_a[3] ),
	.q_a_4(\ux0120|altsyncram_component0|auto_generated|q_a[4] ),
	.q_a_5(\ux0120|altsyncram_component0|auto_generated|q_a[5] ),
	.q_a_6(\ux0120|altsyncram_component0|auto_generated|q_a[6] ),
	.q_a_7(\ux0120|altsyncram_component0|auto_generated|q_a[7] ),
	.q_a_8(\ux0120|altsyncram_component0|auto_generated|q_a[8] ),
	.q_a_9(\ux0120|altsyncram_component0|auto_generated|q_a[9] ),
	.q_a_10(\ux0120|altsyncram_component0|auto_generated|q_a[10] ),
	.q_a_11(\ux0120|altsyncram_component0|auto_generated|q_a[11] ),
	.data_out_0(data_out_0),
	.data_out_1(data_out_1),
	.data_out_2(data_out_2),
	.data_out_3(data_out_3),
	.data_out_4(data_out_4),
	.data_out_5(data_out_5),
	.data_out_6(data_out_6),
	.data_out_7(data_out_7),
	.data_out_8(data_out_8),
	.data_out_9(data_out_9),
	.data_out_10(data_out_10),
	.data_out_11(data_out_11),
	.data_out_01(\ux122|data_out[0]~1_combout ),
	.reset_n(reset_n),
	.clk(clk),
	.clken(clken));

nco_asj_nco_as_m_cen_1 ux0121(
	.q_a_0(\ux0121|altsyncram_component0|auto_generated|q_a[0] ),
	.q_a_1(\ux0121|altsyncram_component0|auto_generated|q_a[1] ),
	.q_a_2(\ux0121|altsyncram_component0|auto_generated|q_a[2] ),
	.q_a_3(\ux0121|altsyncram_component0|auto_generated|q_a[3] ),
	.q_a_4(\ux0121|altsyncram_component0|auto_generated|q_a[4] ),
	.q_a_5(\ux0121|altsyncram_component0|auto_generated|q_a[5] ),
	.q_a_6(\ux0121|altsyncram_component0|auto_generated|q_a[6] ),
	.q_a_7(\ux0121|altsyncram_component0|auto_generated|q_a[7] ),
	.q_a_8(\ux0121|altsyncram_component0|auto_generated|q_a[8] ),
	.q_a_9(\ux0121|altsyncram_component0|auto_generated|q_a[9] ),
	.q_a_10(\ux0121|altsyncram_component0|auto_generated|q_a[10] ),
	.q_a_11(\ux0121|altsyncram_component0|auto_generated|q_a[11] ),
	.rom_add_0(\ux009|rom_add[0]~q ),
	.rom_add_1(\ux009|rom_add[1]~q ),
	.rom_add_2(\ux009|rom_add[2]~q ),
	.rom_add_3(\ux009|rom_add[3]~q ),
	.rom_add_4(\ux009|rom_add[4]~q ),
	.rom_add_5(\ux009|rom_add[5]~q ),
	.rom_add_6(\ux009|rom_add[6]~q ),
	.rom_add_7(\ux009|rom_add[7]~q ),
	.rom_add_8(\ux009|rom_add[8]~q ),
	.rom_add_9(\ux009|rom_add[9]~q ),
	.rom_add_10(\ux009|rom_add[10]~q ),
	.rom_add_11(\ux009|rom_add[11]~q ),
	.rom_add_12(\ux009|rom_add[12]~q ),
	.clk(clk),
	.clken(clken));

nco_asj_nco_as_m_cen ux0120(
	.q_a_0(\ux0120|altsyncram_component0|auto_generated|q_a[0] ),
	.q_a_1(\ux0120|altsyncram_component0|auto_generated|q_a[1] ),
	.q_a_2(\ux0120|altsyncram_component0|auto_generated|q_a[2] ),
	.q_a_3(\ux0120|altsyncram_component0|auto_generated|q_a[3] ),
	.q_a_4(\ux0120|altsyncram_component0|auto_generated|q_a[4] ),
	.q_a_5(\ux0120|altsyncram_component0|auto_generated|q_a[5] ),
	.q_a_6(\ux0120|altsyncram_component0|auto_generated|q_a[6] ),
	.q_a_7(\ux0120|altsyncram_component0|auto_generated|q_a[7] ),
	.q_a_8(\ux0120|altsyncram_component0|auto_generated|q_a[8] ),
	.q_a_9(\ux0120|altsyncram_component0|auto_generated|q_a[9] ),
	.q_a_10(\ux0120|altsyncram_component0|auto_generated|q_a[10] ),
	.q_a_11(\ux0120|altsyncram_component0|auto_generated|q_a[11] ),
	.rom_add_0(\ux009|rom_add[0]~q ),
	.rom_add_1(\ux009|rom_add[1]~q ),
	.rom_add_2(\ux009|rom_add[2]~q ),
	.rom_add_3(\ux009|rom_add[3]~q ),
	.rom_add_4(\ux009|rom_add[4]~q ),
	.rom_add_5(\ux009|rom_add[5]~q ),
	.rom_add_6(\ux009|rom_add[6]~q ),
	.rom_add_7(\ux009|rom_add[7]~q ),
	.rom_add_8(\ux009|rom_add[8]~q ),
	.rom_add_9(\ux009|rom_add[9]~q ),
	.rom_add_10(\ux009|rom_add[10]~q ),
	.rom_add_11(\ux009|rom_add[11]~q ),
	.rom_add_12(\ux009|rom_add[12]~q ),
	.clk(clk),
	.clken(clken));

nco_asj_gal ux009(
	.pipeline_dffe_1(\ux004|acc|auto_generated|pipeline_dffe[1]~q ),
	.pipeline_dffe_2(\ux004|acc|auto_generated|pipeline_dffe[2]~q ),
	.pipeline_dffe_3(\ux004|acc|auto_generated|pipeline_dffe[3]~q ),
	.pipeline_dffe_4(\ux004|acc|auto_generated|pipeline_dffe[4]~q ),
	.pipeline_dffe_5(\ux004|acc|auto_generated|pipeline_dffe[5]~q ),
	.pipeline_dffe_6(\ux004|acc|auto_generated|pipeline_dffe[6]~q ),
	.pipeline_dffe_7(\ux004|acc|auto_generated|pipeline_dffe[7]~q ),
	.pipeline_dffe_8(\ux004|acc|auto_generated|pipeline_dffe[8]~q ),
	.pipeline_dffe_9(\ux004|acc|auto_generated|pipeline_dffe[9]~q ),
	.pipeline_dffe_10(\ux004|acc|auto_generated|pipeline_dffe[10]~q ),
	.pipeline_dffe_11(\ux004|acc|auto_generated|pipeline_dffe[11]~q ),
	.pipeline_dffe_12(\ux004|acc|auto_generated|pipeline_dffe[12]~q ),
	.pipeline_dffe_13(\ux004|acc|auto_generated|pipeline_dffe[13]~q ),
	.data_out_0(\ux122|data_out[0]~1_combout ),
	.rom_add_0(\ux009|rom_add[0]~q ),
	.rom_add_1(\ux009|rom_add[1]~q ),
	.rom_add_2(\ux009|rom_add[2]~q ),
	.rom_add_3(\ux009|rom_add[3]~q ),
	.rom_add_4(\ux009|rom_add[4]~q ),
	.rom_add_5(\ux009|rom_add[5]~q ),
	.rom_add_6(\ux009|rom_add[6]~q ),
	.rom_add_7(\ux009|rom_add[7]~q ),
	.rom_add_8(\ux009|rom_add[8]~q ),
	.rom_add_9(\ux009|rom_add[9]~q ),
	.rom_add_10(\ux009|rom_add[10]~q ),
	.rom_add_11(\ux009|rom_add[11]~q ),
	.rom_add_12(\ux009|rom_add[12]~q ),
	.reset_n(reset_n),
	.clk(clk));

nco_asj_nco_pxx ux004(
	.pipeline_dffe_1(\ux004|acc|auto_generated|pipeline_dffe[1]~q ),
	.pipeline_dffe_2(\ux004|acc|auto_generated|pipeline_dffe[2]~q ),
	.pipeline_dffe_3(\ux004|acc|auto_generated|pipeline_dffe[3]~q ),
	.pipeline_dffe_4(\ux004|acc|auto_generated|pipeline_dffe[4]~q ),
	.pipeline_dffe_5(\ux004|acc|auto_generated|pipeline_dffe[5]~q ),
	.pipeline_dffe_6(\ux004|acc|auto_generated|pipeline_dffe[6]~q ),
	.pipeline_dffe_7(\ux004|acc|auto_generated|pipeline_dffe[7]~q ),
	.pipeline_dffe_8(\ux004|acc|auto_generated|pipeline_dffe[8]~q ),
	.pipeline_dffe_9(\ux004|acc|auto_generated|pipeline_dffe[9]~q ),
	.pipeline_dffe_10(\ux004|acc|auto_generated|pipeline_dffe[10]~q ),
	.pipeline_dffe_11(\ux004|acc|auto_generated|pipeline_dffe[11]~q ),
	.pipeline_dffe_12(\ux004|acc|auto_generated|pipeline_dffe[12]~q ),
	.pipeline_dffe_13(\ux004|acc|auto_generated|pipeline_dffe[13]~q ),
	.data_out_0(\ux122|data_out[0]~1_combout ),
	.dxxpdo_5(\ux002|dxxpdo[5]~q ),
	.dxxpdo_4(\ux002|dxxpdo[4]~q ),
	.dxxpdo_6(\ux002|dxxpdo[6]~q ),
	.dxxpdo_7(\ux002|dxxpdo[7]~q ),
	.dxxpdo_8(\ux002|dxxpdo[8]~q ),
	.dxxpdo_9(\ux002|dxxpdo[9]~q ),
	.dxxpdo_10(\ux002|dxxpdo[10]~q ),
	.dxxpdo_11(\ux002|dxxpdo[11]~q ),
	.dxxpdo_12(\ux002|dxxpdo[12]~q ),
	.dxxpdo_13(\ux002|dxxpdo[13]~q ),
	.dxxpdo_14(\ux002|dxxpdo[14]~q ),
	.dxxpdo_15(\ux002|dxxpdo[15]~q ),
	.dxxpdo_16(\ux002|dxxpdo[16]~q ),
	.dxxpdo_17(\ux002|dxxpdo[17]~q ),
	.reset_n(reset_n),
	.clk(clk),
	.clken(clken),
	.phase_mod_i_1(phase_mod_i_1),
	.phase_mod_i_0(phase_mod_i_0),
	.phase_mod_i_2(phase_mod_i_2),
	.phase_mod_i_3(phase_mod_i_3),
	.phase_mod_i_4(phase_mod_i_4),
	.phase_mod_i_5(phase_mod_i_5),
	.phase_mod_i_6(phase_mod_i_6),
	.phase_mod_i_7(phase_mod_i_7),
	.phase_mod_i_8(phase_mod_i_8),
	.phase_mod_i_9(phase_mod_i_9),
	.phase_mod_i_10(phase_mod_i_10),
	.phase_mod_i_11(phase_mod_i_11),
	.phase_mod_i_12(phase_mod_i_12),
	.phase_mod_i_13(phase_mod_i_13));

nco_asj_dxx ux002(
	.dxxrv_3(\ux001|dxxrv[3]~q ),
	.pipeline_dffe_19(\ux000|acc|auto_generated|pipeline_dffe[19]~q ),
	.pipeline_dffe_18(\ux000|acc|auto_generated|pipeline_dffe[18]~q ),
	.pipeline_dffe_17(\ux000|acc|auto_generated|pipeline_dffe[17]~q ),
	.dxxrv_2(\ux001|dxxrv[2]~q ),
	.pipeline_dffe_16(\ux000|acc|auto_generated|pipeline_dffe[16]~q ),
	.dxxrv_1(\ux001|dxxrv[1]~q ),
	.pipeline_dffe_15(\ux000|acc|auto_generated|pipeline_dffe[15]~q ),
	.dxxrv_0(\ux001|dxxrv[0]~q ),
	.pipeline_dffe_14(\ux000|acc|auto_generated|pipeline_dffe[14]~q ),
	.pipeline_dffe_20(\ux000|acc|auto_generated|pipeline_dffe[20]~q ),
	.pipeline_dffe_21(\ux000|acc|auto_generated|pipeline_dffe[21]~q ),
	.pipeline_dffe_22(\ux000|acc|auto_generated|pipeline_dffe[22]~q ),
	.pipeline_dffe_23(\ux000|acc|auto_generated|pipeline_dffe[23]~q ),
	.pipeline_dffe_24(\ux000|acc|auto_generated|pipeline_dffe[24]~q ),
	.pipeline_dffe_25(\ux000|acc|auto_generated|pipeline_dffe[25]~q ),
	.pipeline_dffe_26(\ux000|acc|auto_generated|pipeline_dffe[26]~q ),
	.pipeline_dffe_27(\ux000|acc|auto_generated|pipeline_dffe[27]~q ),
	.pipeline_dffe_28(\ux000|acc|auto_generated|pipeline_dffe[28]~q ),
	.pipeline_dffe_29(\ux000|acc|auto_generated|pipeline_dffe[29]~q ),
	.pipeline_dffe_30(\ux000|acc|auto_generated|pipeline_dffe[30]~q ),
	.pipeline_dffe_31(\ux000|acc|auto_generated|pipeline_dffe[31]~q ),
	.data_out_0(\ux122|data_out[0]~1_combout ),
	.dxxpdo_5(\ux002|dxxpdo[5]~q ),
	.dxxpdo_4(\ux002|dxxpdo[4]~q ),
	.dxxpdo_6(\ux002|dxxpdo[6]~q ),
	.dxxpdo_7(\ux002|dxxpdo[7]~q ),
	.dxxpdo_8(\ux002|dxxpdo[8]~q ),
	.dxxpdo_9(\ux002|dxxpdo[9]~q ),
	.dxxpdo_10(\ux002|dxxpdo[10]~q ),
	.dxxpdo_11(\ux002|dxxpdo[11]~q ),
	.dxxpdo_12(\ux002|dxxpdo[12]~q ),
	.dxxpdo_13(\ux002|dxxpdo[13]~q ),
	.dxxpdo_14(\ux002|dxxpdo[14]~q ),
	.dxxpdo_15(\ux002|dxxpdo[15]~q ),
	.dxxpdo_16(\ux002|dxxpdo[16]~q ),
	.dxxpdo_17(\ux002|dxxpdo[17]~q ),
	.reset_n(reset_n),
	.clk(clk));

nco_asj_dxx_g ux001(
	.dxxrv_3(\ux001|dxxrv[3]~q ),
	.dxxrv_2(\ux001|dxxrv[2]~q ),
	.dxxrv_1(\ux001|dxxrv[1]~q ),
	.dxxrv_0(\ux001|dxxrv[0]~q ),
	.data_out_0(\ux122|data_out[0]~1_combout ),
	.reset_n(reset_n),
	.clk(clk));

nco_asj_altqmcpipe ux000(
	.pipeline_dffe_19(\ux000|acc|auto_generated|pipeline_dffe[19]~q ),
	.pipeline_dffe_18(\ux000|acc|auto_generated|pipeline_dffe[18]~q ),
	.pipeline_dffe_17(\ux000|acc|auto_generated|pipeline_dffe[17]~q ),
	.pipeline_dffe_16(\ux000|acc|auto_generated|pipeline_dffe[16]~q ),
	.pipeline_dffe_15(\ux000|acc|auto_generated|pipeline_dffe[15]~q ),
	.pipeline_dffe_14(\ux000|acc|auto_generated|pipeline_dffe[14]~q ),
	.pipeline_dffe_20(\ux000|acc|auto_generated|pipeline_dffe[20]~q ),
	.pipeline_dffe_21(\ux000|acc|auto_generated|pipeline_dffe[21]~q ),
	.pipeline_dffe_22(\ux000|acc|auto_generated|pipeline_dffe[22]~q ),
	.pipeline_dffe_23(\ux000|acc|auto_generated|pipeline_dffe[23]~q ),
	.pipeline_dffe_24(\ux000|acc|auto_generated|pipeline_dffe[24]~q ),
	.pipeline_dffe_25(\ux000|acc|auto_generated|pipeline_dffe[25]~q ),
	.pipeline_dffe_26(\ux000|acc|auto_generated|pipeline_dffe[26]~q ),
	.pipeline_dffe_27(\ux000|acc|auto_generated|pipeline_dffe[27]~q ),
	.pipeline_dffe_28(\ux000|acc|auto_generated|pipeline_dffe[28]~q ),
	.pipeline_dffe_29(\ux000|acc|auto_generated|pipeline_dffe[29]~q ),
	.pipeline_dffe_30(\ux000|acc|auto_generated|pipeline_dffe[30]~q ),
	.pipeline_dffe_31(\ux000|acc|auto_generated|pipeline_dffe[31]~q ),
	.data_out_0(\ux122|data_out[0]~1_combout ),
	.reset_n(reset_n),
	.clk(clk),
	.clken(clken),
	.phi_inc_i_19(phi_inc_i_19),
	.phi_inc_i_18(phi_inc_i_18),
	.phi_inc_i_17(phi_inc_i_17),
	.phi_inc_i_16(phi_inc_i_16),
	.phi_inc_i_15(phi_inc_i_15),
	.phi_inc_i_14(phi_inc_i_14),
	.phi_inc_i_13(phi_inc_i_13),
	.phi_inc_i_12(phi_inc_i_12),
	.phi_inc_i_11(phi_inc_i_11),
	.phi_inc_i_10(phi_inc_i_10),
	.phi_inc_i_9(phi_inc_i_9),
	.phi_inc_i_8(phi_inc_i_8),
	.phi_inc_i_7(phi_inc_i_7),
	.phi_inc_i_6(phi_inc_i_6),
	.phi_inc_i_5(phi_inc_i_5),
	.phi_inc_i_4(phi_inc_i_4),
	.phi_inc_i_3(phi_inc_i_3),
	.phi_inc_i_2(phi_inc_i_2),
	.phi_inc_i_1(phi_inc_i_1),
	.phi_inc_i_0(phi_inc_i_0),
	.phi_inc_i_20(phi_inc_i_20),
	.phi_inc_i_21(phi_inc_i_21),
	.phi_inc_i_22(phi_inc_i_22),
	.phi_inc_i_23(phi_inc_i_23),
	.phi_inc_i_24(phi_inc_i_24),
	.phi_inc_i_25(phi_inc_i_25),
	.phi_inc_i_26(phi_inc_i_26),
	.phi_inc_i_27(phi_inc_i_27),
	.phi_inc_i_28(phi_inc_i_28),
	.phi_inc_i_29(phi_inc_i_29),
	.phi_inc_i_30(phi_inc_i_30),
	.phi_inc_i_31(phi_inc_i_31));

endmodule

module nco_asj_altqmcpipe (
	pipeline_dffe_19,
	pipeline_dffe_18,
	pipeline_dffe_17,
	pipeline_dffe_16,
	pipeline_dffe_15,
	pipeline_dffe_14,
	pipeline_dffe_20,
	pipeline_dffe_21,
	pipeline_dffe_22,
	pipeline_dffe_23,
	pipeline_dffe_24,
	pipeline_dffe_25,
	pipeline_dffe_26,
	pipeline_dffe_27,
	pipeline_dffe_28,
	pipeline_dffe_29,
	pipeline_dffe_30,
	pipeline_dffe_31,
	data_out_0,
	reset_n,
	clk,
	clken,
	phi_inc_i_19,
	phi_inc_i_18,
	phi_inc_i_17,
	phi_inc_i_16,
	phi_inc_i_15,
	phi_inc_i_14,
	phi_inc_i_13,
	phi_inc_i_12,
	phi_inc_i_11,
	phi_inc_i_10,
	phi_inc_i_9,
	phi_inc_i_8,
	phi_inc_i_7,
	phi_inc_i_6,
	phi_inc_i_5,
	phi_inc_i_4,
	phi_inc_i_3,
	phi_inc_i_2,
	phi_inc_i_1,
	phi_inc_i_0,
	phi_inc_i_20,
	phi_inc_i_21,
	phi_inc_i_22,
	phi_inc_i_23,
	phi_inc_i_24,
	phi_inc_i_25,
	phi_inc_i_26,
	phi_inc_i_27,
	phi_inc_i_28,
	phi_inc_i_29,
	phi_inc_i_30,
	phi_inc_i_31)/* synthesis synthesis_greybox=1 */;
output 	pipeline_dffe_19;
output 	pipeline_dffe_18;
output 	pipeline_dffe_17;
output 	pipeline_dffe_16;
output 	pipeline_dffe_15;
output 	pipeline_dffe_14;
output 	pipeline_dffe_20;
output 	pipeline_dffe_21;
output 	pipeline_dffe_22;
output 	pipeline_dffe_23;
output 	pipeline_dffe_24;
output 	pipeline_dffe_25;
output 	pipeline_dffe_26;
output 	pipeline_dffe_27;
output 	pipeline_dffe_28;
output 	pipeline_dffe_29;
output 	pipeline_dffe_30;
output 	pipeline_dffe_31;
input 	data_out_0;
input 	reset_n;
input 	clk;
input 	clken;
input 	phi_inc_i_19;
input 	phi_inc_i_18;
input 	phi_inc_i_17;
input 	phi_inc_i_16;
input 	phi_inc_i_15;
input 	phi_inc_i_14;
input 	phi_inc_i_13;
input 	phi_inc_i_12;
input 	phi_inc_i_11;
input 	phi_inc_i_10;
input 	phi_inc_i_9;
input 	phi_inc_i_8;
input 	phi_inc_i_7;
input 	phi_inc_i_6;
input 	phi_inc_i_5;
input 	phi_inc_i_4;
input 	phi_inc_i_3;
input 	phi_inc_i_2;
input 	phi_inc_i_1;
input 	phi_inc_i_0;
input 	phi_inc_i_20;
input 	phi_inc_i_21;
input 	phi_inc_i_22;
input 	phi_inc_i_23;
input 	phi_inc_i_24;
input 	phi_inc_i_25;
input 	phi_inc_i_26;
input 	phi_inc_i_27;
input 	phi_inc_i_28;
input 	phi_inc_i_29;
input 	phi_inc_i_30;
input 	phi_inc_i_31;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \phi_int_arr_reg[19]~q ;
wire \phi_int_arr_reg[18]~q ;
wire \phi_int_arr_reg[17]~q ;
wire \phi_int_arr_reg[16]~q ;
wire \phi_int_arr_reg[15]~q ;
wire \phi_int_arr_reg[14]~q ;
wire \phi_int_arr_reg[13]~q ;
wire \phi_int_arr_reg[12]~q ;
wire \phi_int_arr_reg[11]~q ;
wire \phi_int_arr_reg[10]~q ;
wire \phi_int_arr_reg[9]~q ;
wire \phi_int_arr_reg[8]~q ;
wire \phi_int_arr_reg[7]~q ;
wire \phi_int_arr_reg[6]~q ;
wire \phi_int_arr_reg[5]~q ;
wire \phi_int_arr_reg[4]~q ;
wire \phi_int_arr_reg[3]~q ;
wire \phi_int_arr_reg[2]~q ;
wire \phi_int_arr_reg[1]~q ;
wire \phi_int_arr_reg[0]~q ;
wire \phi_int_arr_reg[20]~q ;
wire \phi_int_arr_reg[21]~q ;
wire \phi_int_arr_reg[22]~q ;
wire \phi_int_arr_reg[23]~q ;
wire \phi_int_arr_reg[24]~q ;
wire \phi_int_arr_reg[25]~q ;
wire \phi_int_arr_reg[26]~q ;
wire \phi_int_arr_reg[27]~q ;
wire \phi_int_arr_reg[28]~q ;
wire \phi_int_arr_reg[29]~q ;
wire \phi_int_arr_reg[30]~q ;
wire \phi_int_arr_reg[31]~q ;
wire \phi_int_arr_reg~0_combout ;
wire \phi_int_arr_reg~1_combout ;
wire \phi_int_arr_reg~2_combout ;
wire \phi_int_arr_reg~3_combout ;
wire \phi_int_arr_reg~4_combout ;
wire \phi_int_arr_reg~5_combout ;
wire \phi_int_arr_reg~6_combout ;
wire \phi_int_arr_reg~7_combout ;
wire \phi_int_arr_reg~8_combout ;
wire \phi_int_arr_reg~9_combout ;
wire \phi_int_arr_reg~10_combout ;
wire \phi_int_arr_reg~11_combout ;
wire \phi_int_arr_reg~12_combout ;
wire \phi_int_arr_reg~13_combout ;
wire \phi_int_arr_reg~14_combout ;
wire \phi_int_arr_reg~15_combout ;
wire \phi_int_arr_reg~16_combout ;
wire \phi_int_arr_reg~17_combout ;
wire \phi_int_arr_reg~18_combout ;
wire \phi_int_arr_reg~19_combout ;
wire \phi_int_arr_reg~20_combout ;
wire \phi_int_arr_reg~21_combout ;
wire \phi_int_arr_reg~22_combout ;
wire \phi_int_arr_reg~23_combout ;
wire \phi_int_arr_reg~24_combout ;
wire \phi_int_arr_reg~25_combout ;
wire \phi_int_arr_reg~26_combout ;
wire \phi_int_arr_reg~27_combout ;
wire \phi_int_arr_reg~28_combout ;
wire \phi_int_arr_reg~29_combout ;
wire \phi_int_arr_reg~30_combout ;
wire \phi_int_arr_reg~31_combout ;


nco_lpm_add_sub_1 acc(
	.pipeline_dffe_19(pipeline_dffe_19),
	.pipeline_dffe_18(pipeline_dffe_18),
	.pipeline_dffe_17(pipeline_dffe_17),
	.pipeline_dffe_16(pipeline_dffe_16),
	.pipeline_dffe_15(pipeline_dffe_15),
	.pipeline_dffe_14(pipeline_dffe_14),
	.pipeline_dffe_20(pipeline_dffe_20),
	.pipeline_dffe_21(pipeline_dffe_21),
	.pipeline_dffe_22(pipeline_dffe_22),
	.pipeline_dffe_23(pipeline_dffe_23),
	.pipeline_dffe_24(pipeline_dffe_24),
	.pipeline_dffe_25(pipeline_dffe_25),
	.pipeline_dffe_26(pipeline_dffe_26),
	.pipeline_dffe_27(pipeline_dffe_27),
	.pipeline_dffe_28(pipeline_dffe_28),
	.pipeline_dffe_29(pipeline_dffe_29),
	.pipeline_dffe_30(pipeline_dffe_30),
	.pipeline_dffe_31(pipeline_dffe_31),
	.phi_int_arr_reg_19(\phi_int_arr_reg[19]~q ),
	.phi_int_arr_reg_18(\phi_int_arr_reg[18]~q ),
	.phi_int_arr_reg_17(\phi_int_arr_reg[17]~q ),
	.phi_int_arr_reg_16(\phi_int_arr_reg[16]~q ),
	.phi_int_arr_reg_15(\phi_int_arr_reg[15]~q ),
	.phi_int_arr_reg_14(\phi_int_arr_reg[14]~q ),
	.phi_int_arr_reg_13(\phi_int_arr_reg[13]~q ),
	.phi_int_arr_reg_12(\phi_int_arr_reg[12]~q ),
	.phi_int_arr_reg_11(\phi_int_arr_reg[11]~q ),
	.phi_int_arr_reg_10(\phi_int_arr_reg[10]~q ),
	.phi_int_arr_reg_9(\phi_int_arr_reg[9]~q ),
	.phi_int_arr_reg_8(\phi_int_arr_reg[8]~q ),
	.phi_int_arr_reg_7(\phi_int_arr_reg[7]~q ),
	.phi_int_arr_reg_6(\phi_int_arr_reg[6]~q ),
	.phi_int_arr_reg_5(\phi_int_arr_reg[5]~q ),
	.phi_int_arr_reg_4(\phi_int_arr_reg[4]~q ),
	.phi_int_arr_reg_3(\phi_int_arr_reg[3]~q ),
	.phi_int_arr_reg_2(\phi_int_arr_reg[2]~q ),
	.phi_int_arr_reg_1(\phi_int_arr_reg[1]~q ),
	.phi_int_arr_reg_0(\phi_int_arr_reg[0]~q ),
	.phi_int_arr_reg_20(\phi_int_arr_reg[20]~q ),
	.phi_int_arr_reg_21(\phi_int_arr_reg[21]~q ),
	.phi_int_arr_reg_22(\phi_int_arr_reg[22]~q ),
	.phi_int_arr_reg_23(\phi_int_arr_reg[23]~q ),
	.phi_int_arr_reg_24(\phi_int_arr_reg[24]~q ),
	.phi_int_arr_reg_25(\phi_int_arr_reg[25]~q ),
	.phi_int_arr_reg_26(\phi_int_arr_reg[26]~q ),
	.phi_int_arr_reg_27(\phi_int_arr_reg[27]~q ),
	.phi_int_arr_reg_28(\phi_int_arr_reg[28]~q ),
	.phi_int_arr_reg_29(\phi_int_arr_reg[29]~q ),
	.phi_int_arr_reg_30(\phi_int_arr_reg[30]~q ),
	.phi_int_arr_reg_31(\phi_int_arr_reg[31]~q ),
	.reset_n(reset_n),
	.clock(clk),
	.clken(clken));

dffeas \phi_int_arr_reg[19] (
	.clk(clk),
	.d(\phi_int_arr_reg~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_int_arr_reg[19]~q ),
	.prn(vcc));
defparam \phi_int_arr_reg[19] .is_wysiwyg = "true";
defparam \phi_int_arr_reg[19] .power_up = "low";

dffeas \phi_int_arr_reg[18] (
	.clk(clk),
	.d(\phi_int_arr_reg~1_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_int_arr_reg[18]~q ),
	.prn(vcc));
defparam \phi_int_arr_reg[18] .is_wysiwyg = "true";
defparam \phi_int_arr_reg[18] .power_up = "low";

dffeas \phi_int_arr_reg[17] (
	.clk(clk),
	.d(\phi_int_arr_reg~2_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_int_arr_reg[17]~q ),
	.prn(vcc));
defparam \phi_int_arr_reg[17] .is_wysiwyg = "true";
defparam \phi_int_arr_reg[17] .power_up = "low";

dffeas \phi_int_arr_reg[16] (
	.clk(clk),
	.d(\phi_int_arr_reg~3_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_int_arr_reg[16]~q ),
	.prn(vcc));
defparam \phi_int_arr_reg[16] .is_wysiwyg = "true";
defparam \phi_int_arr_reg[16] .power_up = "low";

dffeas \phi_int_arr_reg[15] (
	.clk(clk),
	.d(\phi_int_arr_reg~4_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_int_arr_reg[15]~q ),
	.prn(vcc));
defparam \phi_int_arr_reg[15] .is_wysiwyg = "true";
defparam \phi_int_arr_reg[15] .power_up = "low";

dffeas \phi_int_arr_reg[14] (
	.clk(clk),
	.d(\phi_int_arr_reg~5_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_int_arr_reg[14]~q ),
	.prn(vcc));
defparam \phi_int_arr_reg[14] .is_wysiwyg = "true";
defparam \phi_int_arr_reg[14] .power_up = "low";

dffeas \phi_int_arr_reg[13] (
	.clk(clk),
	.d(\phi_int_arr_reg~6_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_int_arr_reg[13]~q ),
	.prn(vcc));
defparam \phi_int_arr_reg[13] .is_wysiwyg = "true";
defparam \phi_int_arr_reg[13] .power_up = "low";

dffeas \phi_int_arr_reg[12] (
	.clk(clk),
	.d(\phi_int_arr_reg~7_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_int_arr_reg[12]~q ),
	.prn(vcc));
defparam \phi_int_arr_reg[12] .is_wysiwyg = "true";
defparam \phi_int_arr_reg[12] .power_up = "low";

dffeas \phi_int_arr_reg[11] (
	.clk(clk),
	.d(\phi_int_arr_reg~8_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_int_arr_reg[11]~q ),
	.prn(vcc));
defparam \phi_int_arr_reg[11] .is_wysiwyg = "true";
defparam \phi_int_arr_reg[11] .power_up = "low";

dffeas \phi_int_arr_reg[10] (
	.clk(clk),
	.d(\phi_int_arr_reg~9_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_int_arr_reg[10]~q ),
	.prn(vcc));
defparam \phi_int_arr_reg[10] .is_wysiwyg = "true";
defparam \phi_int_arr_reg[10] .power_up = "low";

dffeas \phi_int_arr_reg[9] (
	.clk(clk),
	.d(\phi_int_arr_reg~10_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_int_arr_reg[9]~q ),
	.prn(vcc));
defparam \phi_int_arr_reg[9] .is_wysiwyg = "true";
defparam \phi_int_arr_reg[9] .power_up = "low";

dffeas \phi_int_arr_reg[8] (
	.clk(clk),
	.d(\phi_int_arr_reg~11_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_int_arr_reg[8]~q ),
	.prn(vcc));
defparam \phi_int_arr_reg[8] .is_wysiwyg = "true";
defparam \phi_int_arr_reg[8] .power_up = "low";

dffeas \phi_int_arr_reg[7] (
	.clk(clk),
	.d(\phi_int_arr_reg~12_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_int_arr_reg[7]~q ),
	.prn(vcc));
defparam \phi_int_arr_reg[7] .is_wysiwyg = "true";
defparam \phi_int_arr_reg[7] .power_up = "low";

dffeas \phi_int_arr_reg[6] (
	.clk(clk),
	.d(\phi_int_arr_reg~13_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_int_arr_reg[6]~q ),
	.prn(vcc));
defparam \phi_int_arr_reg[6] .is_wysiwyg = "true";
defparam \phi_int_arr_reg[6] .power_up = "low";

dffeas \phi_int_arr_reg[5] (
	.clk(clk),
	.d(\phi_int_arr_reg~14_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_int_arr_reg[5]~q ),
	.prn(vcc));
defparam \phi_int_arr_reg[5] .is_wysiwyg = "true";
defparam \phi_int_arr_reg[5] .power_up = "low";

dffeas \phi_int_arr_reg[4] (
	.clk(clk),
	.d(\phi_int_arr_reg~15_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_int_arr_reg[4]~q ),
	.prn(vcc));
defparam \phi_int_arr_reg[4] .is_wysiwyg = "true";
defparam \phi_int_arr_reg[4] .power_up = "low";

dffeas \phi_int_arr_reg[3] (
	.clk(clk),
	.d(\phi_int_arr_reg~16_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_int_arr_reg[3]~q ),
	.prn(vcc));
defparam \phi_int_arr_reg[3] .is_wysiwyg = "true";
defparam \phi_int_arr_reg[3] .power_up = "low";

dffeas \phi_int_arr_reg[2] (
	.clk(clk),
	.d(\phi_int_arr_reg~17_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_int_arr_reg[2]~q ),
	.prn(vcc));
defparam \phi_int_arr_reg[2] .is_wysiwyg = "true";
defparam \phi_int_arr_reg[2] .power_up = "low";

dffeas \phi_int_arr_reg[1] (
	.clk(clk),
	.d(\phi_int_arr_reg~18_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_int_arr_reg[1]~q ),
	.prn(vcc));
defparam \phi_int_arr_reg[1] .is_wysiwyg = "true";
defparam \phi_int_arr_reg[1] .power_up = "low";

dffeas \phi_int_arr_reg[0] (
	.clk(clk),
	.d(\phi_int_arr_reg~19_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_int_arr_reg[0]~q ),
	.prn(vcc));
defparam \phi_int_arr_reg[0] .is_wysiwyg = "true";
defparam \phi_int_arr_reg[0] .power_up = "low";

dffeas \phi_int_arr_reg[20] (
	.clk(clk),
	.d(\phi_int_arr_reg~20_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_int_arr_reg[20]~q ),
	.prn(vcc));
defparam \phi_int_arr_reg[20] .is_wysiwyg = "true";
defparam \phi_int_arr_reg[20] .power_up = "low";

dffeas \phi_int_arr_reg[21] (
	.clk(clk),
	.d(\phi_int_arr_reg~21_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_int_arr_reg[21]~q ),
	.prn(vcc));
defparam \phi_int_arr_reg[21] .is_wysiwyg = "true";
defparam \phi_int_arr_reg[21] .power_up = "low";

dffeas \phi_int_arr_reg[22] (
	.clk(clk),
	.d(\phi_int_arr_reg~22_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_int_arr_reg[22]~q ),
	.prn(vcc));
defparam \phi_int_arr_reg[22] .is_wysiwyg = "true";
defparam \phi_int_arr_reg[22] .power_up = "low";

dffeas \phi_int_arr_reg[23] (
	.clk(clk),
	.d(\phi_int_arr_reg~23_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_int_arr_reg[23]~q ),
	.prn(vcc));
defparam \phi_int_arr_reg[23] .is_wysiwyg = "true";
defparam \phi_int_arr_reg[23] .power_up = "low";

dffeas \phi_int_arr_reg[24] (
	.clk(clk),
	.d(\phi_int_arr_reg~24_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_int_arr_reg[24]~q ),
	.prn(vcc));
defparam \phi_int_arr_reg[24] .is_wysiwyg = "true";
defparam \phi_int_arr_reg[24] .power_up = "low";

dffeas \phi_int_arr_reg[25] (
	.clk(clk),
	.d(\phi_int_arr_reg~25_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_int_arr_reg[25]~q ),
	.prn(vcc));
defparam \phi_int_arr_reg[25] .is_wysiwyg = "true";
defparam \phi_int_arr_reg[25] .power_up = "low";

dffeas \phi_int_arr_reg[26] (
	.clk(clk),
	.d(\phi_int_arr_reg~26_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_int_arr_reg[26]~q ),
	.prn(vcc));
defparam \phi_int_arr_reg[26] .is_wysiwyg = "true";
defparam \phi_int_arr_reg[26] .power_up = "low";

dffeas \phi_int_arr_reg[27] (
	.clk(clk),
	.d(\phi_int_arr_reg~27_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_int_arr_reg[27]~q ),
	.prn(vcc));
defparam \phi_int_arr_reg[27] .is_wysiwyg = "true";
defparam \phi_int_arr_reg[27] .power_up = "low";

dffeas \phi_int_arr_reg[28] (
	.clk(clk),
	.d(\phi_int_arr_reg~28_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_int_arr_reg[28]~q ),
	.prn(vcc));
defparam \phi_int_arr_reg[28] .is_wysiwyg = "true";
defparam \phi_int_arr_reg[28] .power_up = "low";

dffeas \phi_int_arr_reg[29] (
	.clk(clk),
	.d(\phi_int_arr_reg~29_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_int_arr_reg[29]~q ),
	.prn(vcc));
defparam \phi_int_arr_reg[29] .is_wysiwyg = "true";
defparam \phi_int_arr_reg[29] .power_up = "low";

dffeas \phi_int_arr_reg[30] (
	.clk(clk),
	.d(\phi_int_arr_reg~30_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_int_arr_reg[30]~q ),
	.prn(vcc));
defparam \phi_int_arr_reg[30] .is_wysiwyg = "true";
defparam \phi_int_arr_reg[30] .power_up = "low";

dffeas \phi_int_arr_reg[31] (
	.clk(clk),
	.d(\phi_int_arr_reg~31_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_int_arr_reg[31]~q ),
	.prn(vcc));
defparam \phi_int_arr_reg[31] .is_wysiwyg = "true";
defparam \phi_int_arr_reg[31] .power_up = "low";

fiftyfivenm_lcell_comb \phi_int_arr_reg~0 (
	.dataa(reset_n),
	.datab(phi_inc_i_19),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~0_combout ),
	.cout());
defparam \phi_int_arr_reg~0 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \phi_int_arr_reg~1 (
	.dataa(reset_n),
	.datab(phi_inc_i_18),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~1_combout ),
	.cout());
defparam \phi_int_arr_reg~1 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~1 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \phi_int_arr_reg~2 (
	.dataa(reset_n),
	.datab(phi_inc_i_17),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~2_combout ),
	.cout());
defparam \phi_int_arr_reg~2 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~2 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \phi_int_arr_reg~3 (
	.dataa(reset_n),
	.datab(phi_inc_i_16),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~3_combout ),
	.cout());
defparam \phi_int_arr_reg~3 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~3 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \phi_int_arr_reg~4 (
	.dataa(reset_n),
	.datab(phi_inc_i_15),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~4_combout ),
	.cout());
defparam \phi_int_arr_reg~4 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~4 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \phi_int_arr_reg~5 (
	.dataa(reset_n),
	.datab(phi_inc_i_14),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~5_combout ),
	.cout());
defparam \phi_int_arr_reg~5 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~5 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \phi_int_arr_reg~6 (
	.dataa(reset_n),
	.datab(phi_inc_i_13),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~6_combout ),
	.cout());
defparam \phi_int_arr_reg~6 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~6 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \phi_int_arr_reg~7 (
	.dataa(reset_n),
	.datab(phi_inc_i_12),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~7_combout ),
	.cout());
defparam \phi_int_arr_reg~7 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~7 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \phi_int_arr_reg~8 (
	.dataa(reset_n),
	.datab(phi_inc_i_11),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~8_combout ),
	.cout());
defparam \phi_int_arr_reg~8 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~8 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \phi_int_arr_reg~9 (
	.dataa(reset_n),
	.datab(phi_inc_i_10),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~9_combout ),
	.cout());
defparam \phi_int_arr_reg~9 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~9 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \phi_int_arr_reg~10 (
	.dataa(reset_n),
	.datab(phi_inc_i_9),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~10_combout ),
	.cout());
defparam \phi_int_arr_reg~10 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~10 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \phi_int_arr_reg~11 (
	.dataa(reset_n),
	.datab(phi_inc_i_8),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~11_combout ),
	.cout());
defparam \phi_int_arr_reg~11 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~11 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \phi_int_arr_reg~12 (
	.dataa(reset_n),
	.datab(phi_inc_i_7),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~12_combout ),
	.cout());
defparam \phi_int_arr_reg~12 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~12 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \phi_int_arr_reg~13 (
	.dataa(reset_n),
	.datab(phi_inc_i_6),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~13_combout ),
	.cout());
defparam \phi_int_arr_reg~13 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~13 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \phi_int_arr_reg~14 (
	.dataa(reset_n),
	.datab(phi_inc_i_5),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~14_combout ),
	.cout());
defparam \phi_int_arr_reg~14 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~14 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \phi_int_arr_reg~15 (
	.dataa(reset_n),
	.datab(phi_inc_i_4),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~15_combout ),
	.cout());
defparam \phi_int_arr_reg~15 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~15 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \phi_int_arr_reg~16 (
	.dataa(reset_n),
	.datab(phi_inc_i_3),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~16_combout ),
	.cout());
defparam \phi_int_arr_reg~16 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~16 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \phi_int_arr_reg~17 (
	.dataa(reset_n),
	.datab(phi_inc_i_2),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~17_combout ),
	.cout());
defparam \phi_int_arr_reg~17 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~17 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \phi_int_arr_reg~18 (
	.dataa(reset_n),
	.datab(phi_inc_i_1),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~18_combout ),
	.cout());
defparam \phi_int_arr_reg~18 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~18 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \phi_int_arr_reg~19 (
	.dataa(reset_n),
	.datab(phi_inc_i_0),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~19_combout ),
	.cout());
defparam \phi_int_arr_reg~19 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~19 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \phi_int_arr_reg~20 (
	.dataa(reset_n),
	.datab(phi_inc_i_20),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~20_combout ),
	.cout());
defparam \phi_int_arr_reg~20 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~20 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \phi_int_arr_reg~21 (
	.dataa(reset_n),
	.datab(phi_inc_i_21),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~21_combout ),
	.cout());
defparam \phi_int_arr_reg~21 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~21 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \phi_int_arr_reg~22 (
	.dataa(reset_n),
	.datab(phi_inc_i_22),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~22_combout ),
	.cout());
defparam \phi_int_arr_reg~22 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~22 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \phi_int_arr_reg~23 (
	.dataa(reset_n),
	.datab(phi_inc_i_23),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~23_combout ),
	.cout());
defparam \phi_int_arr_reg~23 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~23 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \phi_int_arr_reg~24 (
	.dataa(reset_n),
	.datab(phi_inc_i_24),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~24_combout ),
	.cout());
defparam \phi_int_arr_reg~24 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~24 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \phi_int_arr_reg~25 (
	.dataa(reset_n),
	.datab(phi_inc_i_25),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~25_combout ),
	.cout());
defparam \phi_int_arr_reg~25 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~25 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \phi_int_arr_reg~26 (
	.dataa(reset_n),
	.datab(phi_inc_i_26),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~26_combout ),
	.cout());
defparam \phi_int_arr_reg~26 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~26 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \phi_int_arr_reg~27 (
	.dataa(reset_n),
	.datab(phi_inc_i_27),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~27_combout ),
	.cout());
defparam \phi_int_arr_reg~27 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~27 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \phi_int_arr_reg~28 (
	.dataa(reset_n),
	.datab(phi_inc_i_28),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~28_combout ),
	.cout());
defparam \phi_int_arr_reg~28 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~28 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \phi_int_arr_reg~29 (
	.dataa(reset_n),
	.datab(phi_inc_i_29),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~29_combout ),
	.cout());
defparam \phi_int_arr_reg~29 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~29 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \phi_int_arr_reg~30 (
	.dataa(reset_n),
	.datab(phi_inc_i_30),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~30_combout ),
	.cout());
defparam \phi_int_arr_reg~30 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~30 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \phi_int_arr_reg~31 (
	.dataa(reset_n),
	.datab(phi_inc_i_31),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_int_arr_reg~31_combout ),
	.cout());
defparam \phi_int_arr_reg~31 .lut_mask = 16'hEEEE;
defparam \phi_int_arr_reg~31 .sum_lutc_input = "datac";

endmodule

module nco_lpm_add_sub_1 (
	pipeline_dffe_19,
	pipeline_dffe_18,
	pipeline_dffe_17,
	pipeline_dffe_16,
	pipeline_dffe_15,
	pipeline_dffe_14,
	pipeline_dffe_20,
	pipeline_dffe_21,
	pipeline_dffe_22,
	pipeline_dffe_23,
	pipeline_dffe_24,
	pipeline_dffe_25,
	pipeline_dffe_26,
	pipeline_dffe_27,
	pipeline_dffe_28,
	pipeline_dffe_29,
	pipeline_dffe_30,
	pipeline_dffe_31,
	phi_int_arr_reg_19,
	phi_int_arr_reg_18,
	phi_int_arr_reg_17,
	phi_int_arr_reg_16,
	phi_int_arr_reg_15,
	phi_int_arr_reg_14,
	phi_int_arr_reg_13,
	phi_int_arr_reg_12,
	phi_int_arr_reg_11,
	phi_int_arr_reg_10,
	phi_int_arr_reg_9,
	phi_int_arr_reg_8,
	phi_int_arr_reg_7,
	phi_int_arr_reg_6,
	phi_int_arr_reg_5,
	phi_int_arr_reg_4,
	phi_int_arr_reg_3,
	phi_int_arr_reg_2,
	phi_int_arr_reg_1,
	phi_int_arr_reg_0,
	phi_int_arr_reg_20,
	phi_int_arr_reg_21,
	phi_int_arr_reg_22,
	phi_int_arr_reg_23,
	phi_int_arr_reg_24,
	phi_int_arr_reg_25,
	phi_int_arr_reg_26,
	phi_int_arr_reg_27,
	phi_int_arr_reg_28,
	phi_int_arr_reg_29,
	phi_int_arr_reg_30,
	phi_int_arr_reg_31,
	reset_n,
	clock,
	clken)/* synthesis synthesis_greybox=1 */;
output 	pipeline_dffe_19;
output 	pipeline_dffe_18;
output 	pipeline_dffe_17;
output 	pipeline_dffe_16;
output 	pipeline_dffe_15;
output 	pipeline_dffe_14;
output 	pipeline_dffe_20;
output 	pipeline_dffe_21;
output 	pipeline_dffe_22;
output 	pipeline_dffe_23;
output 	pipeline_dffe_24;
output 	pipeline_dffe_25;
output 	pipeline_dffe_26;
output 	pipeline_dffe_27;
output 	pipeline_dffe_28;
output 	pipeline_dffe_29;
output 	pipeline_dffe_30;
output 	pipeline_dffe_31;
input 	phi_int_arr_reg_19;
input 	phi_int_arr_reg_18;
input 	phi_int_arr_reg_17;
input 	phi_int_arr_reg_16;
input 	phi_int_arr_reg_15;
input 	phi_int_arr_reg_14;
input 	phi_int_arr_reg_13;
input 	phi_int_arr_reg_12;
input 	phi_int_arr_reg_11;
input 	phi_int_arr_reg_10;
input 	phi_int_arr_reg_9;
input 	phi_int_arr_reg_8;
input 	phi_int_arr_reg_7;
input 	phi_int_arr_reg_6;
input 	phi_int_arr_reg_5;
input 	phi_int_arr_reg_4;
input 	phi_int_arr_reg_3;
input 	phi_int_arr_reg_2;
input 	phi_int_arr_reg_1;
input 	phi_int_arr_reg_0;
input 	phi_int_arr_reg_20;
input 	phi_int_arr_reg_21;
input 	phi_int_arr_reg_22;
input 	phi_int_arr_reg_23;
input 	phi_int_arr_reg_24;
input 	phi_int_arr_reg_25;
input 	phi_int_arr_reg_26;
input 	phi_int_arr_reg_27;
input 	phi_int_arr_reg_28;
input 	phi_int_arr_reg_29;
input 	phi_int_arr_reg_30;
input 	phi_int_arr_reg_31;
input 	reset_n;
input 	clock;
input 	clken;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



nco_add_sub_lfh auto_generated(
	.pipeline_dffe_19(pipeline_dffe_19),
	.pipeline_dffe_18(pipeline_dffe_18),
	.pipeline_dffe_17(pipeline_dffe_17),
	.pipeline_dffe_16(pipeline_dffe_16),
	.pipeline_dffe_15(pipeline_dffe_15),
	.pipeline_dffe_14(pipeline_dffe_14),
	.pipeline_dffe_20(pipeline_dffe_20),
	.pipeline_dffe_21(pipeline_dffe_21),
	.pipeline_dffe_22(pipeline_dffe_22),
	.pipeline_dffe_23(pipeline_dffe_23),
	.pipeline_dffe_24(pipeline_dffe_24),
	.pipeline_dffe_25(pipeline_dffe_25),
	.pipeline_dffe_26(pipeline_dffe_26),
	.pipeline_dffe_27(pipeline_dffe_27),
	.pipeline_dffe_28(pipeline_dffe_28),
	.pipeline_dffe_29(pipeline_dffe_29),
	.pipeline_dffe_30(pipeline_dffe_30),
	.pipeline_dffe_31(pipeline_dffe_31),
	.phi_int_arr_reg_19(phi_int_arr_reg_19),
	.phi_int_arr_reg_18(phi_int_arr_reg_18),
	.phi_int_arr_reg_17(phi_int_arr_reg_17),
	.phi_int_arr_reg_16(phi_int_arr_reg_16),
	.phi_int_arr_reg_15(phi_int_arr_reg_15),
	.phi_int_arr_reg_14(phi_int_arr_reg_14),
	.phi_int_arr_reg_13(phi_int_arr_reg_13),
	.phi_int_arr_reg_12(phi_int_arr_reg_12),
	.phi_int_arr_reg_11(phi_int_arr_reg_11),
	.phi_int_arr_reg_10(phi_int_arr_reg_10),
	.phi_int_arr_reg_9(phi_int_arr_reg_9),
	.phi_int_arr_reg_8(phi_int_arr_reg_8),
	.phi_int_arr_reg_7(phi_int_arr_reg_7),
	.phi_int_arr_reg_6(phi_int_arr_reg_6),
	.phi_int_arr_reg_5(phi_int_arr_reg_5),
	.phi_int_arr_reg_4(phi_int_arr_reg_4),
	.phi_int_arr_reg_3(phi_int_arr_reg_3),
	.phi_int_arr_reg_2(phi_int_arr_reg_2),
	.phi_int_arr_reg_1(phi_int_arr_reg_1),
	.phi_int_arr_reg_0(phi_int_arr_reg_0),
	.phi_int_arr_reg_20(phi_int_arr_reg_20),
	.phi_int_arr_reg_21(phi_int_arr_reg_21),
	.phi_int_arr_reg_22(phi_int_arr_reg_22),
	.phi_int_arr_reg_23(phi_int_arr_reg_23),
	.phi_int_arr_reg_24(phi_int_arr_reg_24),
	.phi_int_arr_reg_25(phi_int_arr_reg_25),
	.phi_int_arr_reg_26(phi_int_arr_reg_26),
	.phi_int_arr_reg_27(phi_int_arr_reg_27),
	.phi_int_arr_reg_28(phi_int_arr_reg_28),
	.phi_int_arr_reg_29(phi_int_arr_reg_29),
	.phi_int_arr_reg_30(phi_int_arr_reg_30),
	.phi_int_arr_reg_31(phi_int_arr_reg_31),
	.reset_n(reset_n),
	.clock(clock),
	.clken(clken));

endmodule

module nco_add_sub_lfh (
	pipeline_dffe_19,
	pipeline_dffe_18,
	pipeline_dffe_17,
	pipeline_dffe_16,
	pipeline_dffe_15,
	pipeline_dffe_14,
	pipeline_dffe_20,
	pipeline_dffe_21,
	pipeline_dffe_22,
	pipeline_dffe_23,
	pipeline_dffe_24,
	pipeline_dffe_25,
	pipeline_dffe_26,
	pipeline_dffe_27,
	pipeline_dffe_28,
	pipeline_dffe_29,
	pipeline_dffe_30,
	pipeline_dffe_31,
	phi_int_arr_reg_19,
	phi_int_arr_reg_18,
	phi_int_arr_reg_17,
	phi_int_arr_reg_16,
	phi_int_arr_reg_15,
	phi_int_arr_reg_14,
	phi_int_arr_reg_13,
	phi_int_arr_reg_12,
	phi_int_arr_reg_11,
	phi_int_arr_reg_10,
	phi_int_arr_reg_9,
	phi_int_arr_reg_8,
	phi_int_arr_reg_7,
	phi_int_arr_reg_6,
	phi_int_arr_reg_5,
	phi_int_arr_reg_4,
	phi_int_arr_reg_3,
	phi_int_arr_reg_2,
	phi_int_arr_reg_1,
	phi_int_arr_reg_0,
	phi_int_arr_reg_20,
	phi_int_arr_reg_21,
	phi_int_arr_reg_22,
	phi_int_arr_reg_23,
	phi_int_arr_reg_24,
	phi_int_arr_reg_25,
	phi_int_arr_reg_26,
	phi_int_arr_reg_27,
	phi_int_arr_reg_28,
	phi_int_arr_reg_29,
	phi_int_arr_reg_30,
	phi_int_arr_reg_31,
	reset_n,
	clock,
	clken)/* synthesis synthesis_greybox=1 */;
output 	pipeline_dffe_19;
output 	pipeline_dffe_18;
output 	pipeline_dffe_17;
output 	pipeline_dffe_16;
output 	pipeline_dffe_15;
output 	pipeline_dffe_14;
output 	pipeline_dffe_20;
output 	pipeline_dffe_21;
output 	pipeline_dffe_22;
output 	pipeline_dffe_23;
output 	pipeline_dffe_24;
output 	pipeline_dffe_25;
output 	pipeline_dffe_26;
output 	pipeline_dffe_27;
output 	pipeline_dffe_28;
output 	pipeline_dffe_29;
output 	pipeline_dffe_30;
output 	pipeline_dffe_31;
input 	phi_int_arr_reg_19;
input 	phi_int_arr_reg_18;
input 	phi_int_arr_reg_17;
input 	phi_int_arr_reg_16;
input 	phi_int_arr_reg_15;
input 	phi_int_arr_reg_14;
input 	phi_int_arr_reg_13;
input 	phi_int_arr_reg_12;
input 	phi_int_arr_reg_11;
input 	phi_int_arr_reg_10;
input 	phi_int_arr_reg_9;
input 	phi_int_arr_reg_8;
input 	phi_int_arr_reg_7;
input 	phi_int_arr_reg_6;
input 	phi_int_arr_reg_5;
input 	phi_int_arr_reg_4;
input 	phi_int_arr_reg_3;
input 	phi_int_arr_reg_2;
input 	phi_int_arr_reg_1;
input 	phi_int_arr_reg_0;
input 	phi_int_arr_reg_20;
input 	phi_int_arr_reg_21;
input 	phi_int_arr_reg_22;
input 	phi_int_arr_reg_23;
input 	phi_int_arr_reg_24;
input 	phi_int_arr_reg_25;
input 	phi_int_arr_reg_26;
input 	phi_int_arr_reg_27;
input 	phi_int_arr_reg_28;
input 	phi_int_arr_reg_29;
input 	phi_int_arr_reg_30;
input 	phi_int_arr_reg_31;
input 	reset_n;
input 	clock;
input 	clken;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \pipeline_dffe[0]~32_combout ;
wire \pipeline_dffe[0]~q ;
wire \pipeline_dffe[0]~33 ;
wire \pipeline_dffe[1]~34_combout ;
wire \pipeline_dffe[1]~q ;
wire \pipeline_dffe[1]~35 ;
wire \pipeline_dffe[2]~36_combout ;
wire \pipeline_dffe[2]~q ;
wire \pipeline_dffe[2]~37 ;
wire \pipeline_dffe[3]~38_combout ;
wire \pipeline_dffe[3]~q ;
wire \pipeline_dffe[3]~39 ;
wire \pipeline_dffe[4]~40_combout ;
wire \pipeline_dffe[4]~q ;
wire \pipeline_dffe[4]~41 ;
wire \pipeline_dffe[5]~42_combout ;
wire \pipeline_dffe[5]~q ;
wire \pipeline_dffe[5]~43 ;
wire \pipeline_dffe[6]~44_combout ;
wire \pipeline_dffe[6]~q ;
wire \pipeline_dffe[6]~45 ;
wire \pipeline_dffe[7]~46_combout ;
wire \pipeline_dffe[7]~q ;
wire \pipeline_dffe[7]~47 ;
wire \pipeline_dffe[8]~48_combout ;
wire \pipeline_dffe[8]~q ;
wire \pipeline_dffe[8]~49 ;
wire \pipeline_dffe[9]~50_combout ;
wire \pipeline_dffe[9]~q ;
wire \pipeline_dffe[9]~51 ;
wire \pipeline_dffe[10]~52_combout ;
wire \pipeline_dffe[10]~q ;
wire \pipeline_dffe[10]~53 ;
wire \pipeline_dffe[11]~54_combout ;
wire \pipeline_dffe[11]~q ;
wire \pipeline_dffe[11]~55 ;
wire \pipeline_dffe[12]~56_combout ;
wire \pipeline_dffe[12]~q ;
wire \pipeline_dffe[12]~57 ;
wire \pipeline_dffe[13]~58_combout ;
wire \pipeline_dffe[13]~q ;
wire \pipeline_dffe[13]~59 ;
wire \pipeline_dffe[14]~61 ;
wire \pipeline_dffe[15]~63 ;
wire \pipeline_dffe[16]~65 ;
wire \pipeline_dffe[17]~67 ;
wire \pipeline_dffe[18]~69 ;
wire \pipeline_dffe[19]~70_combout ;
wire \pipeline_dffe[18]~68_combout ;
wire \pipeline_dffe[17]~66_combout ;
wire \pipeline_dffe[16]~64_combout ;
wire \pipeline_dffe[15]~62_combout ;
wire \pipeline_dffe[14]~60_combout ;
wire \pipeline_dffe[19]~71 ;
wire \pipeline_dffe[20]~72_combout ;
wire \pipeline_dffe[20]~73 ;
wire \pipeline_dffe[21]~74_combout ;
wire \pipeline_dffe[21]~75 ;
wire \pipeline_dffe[22]~76_combout ;
wire \pipeline_dffe[22]~77 ;
wire \pipeline_dffe[23]~78_combout ;
wire \pipeline_dffe[23]~79 ;
wire \pipeline_dffe[24]~80_combout ;
wire \pipeline_dffe[24]~81 ;
wire \pipeline_dffe[25]~82_combout ;
wire \pipeline_dffe[25]~83 ;
wire \pipeline_dffe[26]~84_combout ;
wire \pipeline_dffe[26]~85 ;
wire \pipeline_dffe[27]~86_combout ;
wire \pipeline_dffe[27]~87 ;
wire \pipeline_dffe[28]~88_combout ;
wire \pipeline_dffe[28]~89 ;
wire \pipeline_dffe[29]~90_combout ;
wire \pipeline_dffe[29]~91 ;
wire \pipeline_dffe[30]~92_combout ;
wire \pipeline_dffe[30]~93 ;
wire \pipeline_dffe[31]~94_combout ;


dffeas \pipeline_dffe[19] (
	.clk(clock),
	.d(\pipeline_dffe[19]~70_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_19),
	.prn(vcc));
defparam \pipeline_dffe[19] .is_wysiwyg = "true";
defparam \pipeline_dffe[19] .power_up = "low";

dffeas \pipeline_dffe[18] (
	.clk(clock),
	.d(\pipeline_dffe[18]~68_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_18),
	.prn(vcc));
defparam \pipeline_dffe[18] .is_wysiwyg = "true";
defparam \pipeline_dffe[18] .power_up = "low";

dffeas \pipeline_dffe[17] (
	.clk(clock),
	.d(\pipeline_dffe[17]~66_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_17),
	.prn(vcc));
defparam \pipeline_dffe[17] .is_wysiwyg = "true";
defparam \pipeline_dffe[17] .power_up = "low";

dffeas \pipeline_dffe[16] (
	.clk(clock),
	.d(\pipeline_dffe[16]~64_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_16),
	.prn(vcc));
defparam \pipeline_dffe[16] .is_wysiwyg = "true";
defparam \pipeline_dffe[16] .power_up = "low";

dffeas \pipeline_dffe[15] (
	.clk(clock),
	.d(\pipeline_dffe[15]~62_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_15),
	.prn(vcc));
defparam \pipeline_dffe[15] .is_wysiwyg = "true";
defparam \pipeline_dffe[15] .power_up = "low";

dffeas \pipeline_dffe[14] (
	.clk(clock),
	.d(\pipeline_dffe[14]~60_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_14),
	.prn(vcc));
defparam \pipeline_dffe[14] .is_wysiwyg = "true";
defparam \pipeline_dffe[14] .power_up = "low";

dffeas \pipeline_dffe[20] (
	.clk(clock),
	.d(\pipeline_dffe[20]~72_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_20),
	.prn(vcc));
defparam \pipeline_dffe[20] .is_wysiwyg = "true";
defparam \pipeline_dffe[20] .power_up = "low";

dffeas \pipeline_dffe[21] (
	.clk(clock),
	.d(\pipeline_dffe[21]~74_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_21),
	.prn(vcc));
defparam \pipeline_dffe[21] .is_wysiwyg = "true";
defparam \pipeline_dffe[21] .power_up = "low";

dffeas \pipeline_dffe[22] (
	.clk(clock),
	.d(\pipeline_dffe[22]~76_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_22),
	.prn(vcc));
defparam \pipeline_dffe[22] .is_wysiwyg = "true";
defparam \pipeline_dffe[22] .power_up = "low";

dffeas \pipeline_dffe[23] (
	.clk(clock),
	.d(\pipeline_dffe[23]~78_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_23),
	.prn(vcc));
defparam \pipeline_dffe[23] .is_wysiwyg = "true";
defparam \pipeline_dffe[23] .power_up = "low";

dffeas \pipeline_dffe[24] (
	.clk(clock),
	.d(\pipeline_dffe[24]~80_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_24),
	.prn(vcc));
defparam \pipeline_dffe[24] .is_wysiwyg = "true";
defparam \pipeline_dffe[24] .power_up = "low";

dffeas \pipeline_dffe[25] (
	.clk(clock),
	.d(\pipeline_dffe[25]~82_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_25),
	.prn(vcc));
defparam \pipeline_dffe[25] .is_wysiwyg = "true";
defparam \pipeline_dffe[25] .power_up = "low";

dffeas \pipeline_dffe[26] (
	.clk(clock),
	.d(\pipeline_dffe[26]~84_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_26),
	.prn(vcc));
defparam \pipeline_dffe[26] .is_wysiwyg = "true";
defparam \pipeline_dffe[26] .power_up = "low";

dffeas \pipeline_dffe[27] (
	.clk(clock),
	.d(\pipeline_dffe[27]~86_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_27),
	.prn(vcc));
defparam \pipeline_dffe[27] .is_wysiwyg = "true";
defparam \pipeline_dffe[27] .power_up = "low";

dffeas \pipeline_dffe[28] (
	.clk(clock),
	.d(\pipeline_dffe[28]~88_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_28),
	.prn(vcc));
defparam \pipeline_dffe[28] .is_wysiwyg = "true";
defparam \pipeline_dffe[28] .power_up = "low";

dffeas \pipeline_dffe[29] (
	.clk(clock),
	.d(\pipeline_dffe[29]~90_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_29),
	.prn(vcc));
defparam \pipeline_dffe[29] .is_wysiwyg = "true";
defparam \pipeline_dffe[29] .power_up = "low";

dffeas \pipeline_dffe[30] (
	.clk(clock),
	.d(\pipeline_dffe[30]~92_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_30),
	.prn(vcc));
defparam \pipeline_dffe[30] .is_wysiwyg = "true";
defparam \pipeline_dffe[30] .power_up = "low";

dffeas \pipeline_dffe[31] (
	.clk(clock),
	.d(\pipeline_dffe[31]~94_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_31),
	.prn(vcc));
defparam \pipeline_dffe[31] .is_wysiwyg = "true";
defparam \pipeline_dffe[31] .power_up = "low";

fiftyfivenm_lcell_comb \pipeline_dffe[0]~32 (
	.dataa(\pipeline_dffe[0]~q ),
	.datab(phi_int_arr_reg_0),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(\pipeline_dffe[0]~32_combout ),
	.cout(\pipeline_dffe[0]~33 ));
defparam \pipeline_dffe[0]~32 .lut_mask = 16'h66EE;
defparam \pipeline_dffe[0]~32 .sum_lutc_input = "datac";

dffeas \pipeline_dffe[0] (
	.clk(clock),
	.d(\pipeline_dffe[0]~32_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(\pipeline_dffe[0]~q ),
	.prn(vcc));
defparam \pipeline_dffe[0] .is_wysiwyg = "true";
defparam \pipeline_dffe[0] .power_up = "low";

fiftyfivenm_lcell_comb \pipeline_dffe[1]~34 (
	.dataa(\pipeline_dffe[1]~q ),
	.datab(phi_int_arr_reg_1),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[0]~33 ),
	.combout(\pipeline_dffe[1]~34_combout ),
	.cout(\pipeline_dffe[1]~35 ));
defparam \pipeline_dffe[1]~34 .lut_mask = 16'h967F;
defparam \pipeline_dffe[1]~34 .sum_lutc_input = "cin";

dffeas \pipeline_dffe[1] (
	.clk(clock),
	.d(\pipeline_dffe[1]~34_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(\pipeline_dffe[1]~q ),
	.prn(vcc));
defparam \pipeline_dffe[1] .is_wysiwyg = "true";
defparam \pipeline_dffe[1] .power_up = "low";

fiftyfivenm_lcell_comb \pipeline_dffe[2]~36 (
	.dataa(\pipeline_dffe[2]~q ),
	.datab(phi_int_arr_reg_2),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[1]~35 ),
	.combout(\pipeline_dffe[2]~36_combout ),
	.cout(\pipeline_dffe[2]~37 ));
defparam \pipeline_dffe[2]~36 .lut_mask = 16'h96EF;
defparam \pipeline_dffe[2]~36 .sum_lutc_input = "cin";

dffeas \pipeline_dffe[2] (
	.clk(clock),
	.d(\pipeline_dffe[2]~36_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(\pipeline_dffe[2]~q ),
	.prn(vcc));
defparam \pipeline_dffe[2] .is_wysiwyg = "true";
defparam \pipeline_dffe[2] .power_up = "low";

fiftyfivenm_lcell_comb \pipeline_dffe[3]~38 (
	.dataa(\pipeline_dffe[3]~q ),
	.datab(phi_int_arr_reg_3),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[2]~37 ),
	.combout(\pipeline_dffe[3]~38_combout ),
	.cout(\pipeline_dffe[3]~39 ));
defparam \pipeline_dffe[3]~38 .lut_mask = 16'h967F;
defparam \pipeline_dffe[3]~38 .sum_lutc_input = "cin";

dffeas \pipeline_dffe[3] (
	.clk(clock),
	.d(\pipeline_dffe[3]~38_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(\pipeline_dffe[3]~q ),
	.prn(vcc));
defparam \pipeline_dffe[3] .is_wysiwyg = "true";
defparam \pipeline_dffe[3] .power_up = "low";

fiftyfivenm_lcell_comb \pipeline_dffe[4]~40 (
	.dataa(\pipeline_dffe[4]~q ),
	.datab(phi_int_arr_reg_4),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[3]~39 ),
	.combout(\pipeline_dffe[4]~40_combout ),
	.cout(\pipeline_dffe[4]~41 ));
defparam \pipeline_dffe[4]~40 .lut_mask = 16'h96EF;
defparam \pipeline_dffe[4]~40 .sum_lutc_input = "cin";

dffeas \pipeline_dffe[4] (
	.clk(clock),
	.d(\pipeline_dffe[4]~40_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(\pipeline_dffe[4]~q ),
	.prn(vcc));
defparam \pipeline_dffe[4] .is_wysiwyg = "true";
defparam \pipeline_dffe[4] .power_up = "low";

fiftyfivenm_lcell_comb \pipeline_dffe[5]~42 (
	.dataa(\pipeline_dffe[5]~q ),
	.datab(phi_int_arr_reg_5),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[4]~41 ),
	.combout(\pipeline_dffe[5]~42_combout ),
	.cout(\pipeline_dffe[5]~43 ));
defparam \pipeline_dffe[5]~42 .lut_mask = 16'h967F;
defparam \pipeline_dffe[5]~42 .sum_lutc_input = "cin";

dffeas \pipeline_dffe[5] (
	.clk(clock),
	.d(\pipeline_dffe[5]~42_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(\pipeline_dffe[5]~q ),
	.prn(vcc));
defparam \pipeline_dffe[5] .is_wysiwyg = "true";
defparam \pipeline_dffe[5] .power_up = "low";

fiftyfivenm_lcell_comb \pipeline_dffe[6]~44 (
	.dataa(\pipeline_dffe[6]~q ),
	.datab(phi_int_arr_reg_6),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[5]~43 ),
	.combout(\pipeline_dffe[6]~44_combout ),
	.cout(\pipeline_dffe[6]~45 ));
defparam \pipeline_dffe[6]~44 .lut_mask = 16'h96EF;
defparam \pipeline_dffe[6]~44 .sum_lutc_input = "cin";

dffeas \pipeline_dffe[6] (
	.clk(clock),
	.d(\pipeline_dffe[6]~44_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(\pipeline_dffe[6]~q ),
	.prn(vcc));
defparam \pipeline_dffe[6] .is_wysiwyg = "true";
defparam \pipeline_dffe[6] .power_up = "low";

fiftyfivenm_lcell_comb \pipeline_dffe[7]~46 (
	.dataa(\pipeline_dffe[7]~q ),
	.datab(phi_int_arr_reg_7),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[6]~45 ),
	.combout(\pipeline_dffe[7]~46_combout ),
	.cout(\pipeline_dffe[7]~47 ));
defparam \pipeline_dffe[7]~46 .lut_mask = 16'h967F;
defparam \pipeline_dffe[7]~46 .sum_lutc_input = "cin";

dffeas \pipeline_dffe[7] (
	.clk(clock),
	.d(\pipeline_dffe[7]~46_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(\pipeline_dffe[7]~q ),
	.prn(vcc));
defparam \pipeline_dffe[7] .is_wysiwyg = "true";
defparam \pipeline_dffe[7] .power_up = "low";

fiftyfivenm_lcell_comb \pipeline_dffe[8]~48 (
	.dataa(\pipeline_dffe[8]~q ),
	.datab(phi_int_arr_reg_8),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[7]~47 ),
	.combout(\pipeline_dffe[8]~48_combout ),
	.cout(\pipeline_dffe[8]~49 ));
defparam \pipeline_dffe[8]~48 .lut_mask = 16'h96EF;
defparam \pipeline_dffe[8]~48 .sum_lutc_input = "cin";

dffeas \pipeline_dffe[8] (
	.clk(clock),
	.d(\pipeline_dffe[8]~48_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(\pipeline_dffe[8]~q ),
	.prn(vcc));
defparam \pipeline_dffe[8] .is_wysiwyg = "true";
defparam \pipeline_dffe[8] .power_up = "low";

fiftyfivenm_lcell_comb \pipeline_dffe[9]~50 (
	.dataa(\pipeline_dffe[9]~q ),
	.datab(phi_int_arr_reg_9),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[8]~49 ),
	.combout(\pipeline_dffe[9]~50_combout ),
	.cout(\pipeline_dffe[9]~51 ));
defparam \pipeline_dffe[9]~50 .lut_mask = 16'h967F;
defparam \pipeline_dffe[9]~50 .sum_lutc_input = "cin";

dffeas \pipeline_dffe[9] (
	.clk(clock),
	.d(\pipeline_dffe[9]~50_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(\pipeline_dffe[9]~q ),
	.prn(vcc));
defparam \pipeline_dffe[9] .is_wysiwyg = "true";
defparam \pipeline_dffe[9] .power_up = "low";

fiftyfivenm_lcell_comb \pipeline_dffe[10]~52 (
	.dataa(\pipeline_dffe[10]~q ),
	.datab(phi_int_arr_reg_10),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[9]~51 ),
	.combout(\pipeline_dffe[10]~52_combout ),
	.cout(\pipeline_dffe[10]~53 ));
defparam \pipeline_dffe[10]~52 .lut_mask = 16'h96EF;
defparam \pipeline_dffe[10]~52 .sum_lutc_input = "cin";

dffeas \pipeline_dffe[10] (
	.clk(clock),
	.d(\pipeline_dffe[10]~52_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(\pipeline_dffe[10]~q ),
	.prn(vcc));
defparam \pipeline_dffe[10] .is_wysiwyg = "true";
defparam \pipeline_dffe[10] .power_up = "low";

fiftyfivenm_lcell_comb \pipeline_dffe[11]~54 (
	.dataa(\pipeline_dffe[11]~q ),
	.datab(phi_int_arr_reg_11),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[10]~53 ),
	.combout(\pipeline_dffe[11]~54_combout ),
	.cout(\pipeline_dffe[11]~55 ));
defparam \pipeline_dffe[11]~54 .lut_mask = 16'h967F;
defparam \pipeline_dffe[11]~54 .sum_lutc_input = "cin";

dffeas \pipeline_dffe[11] (
	.clk(clock),
	.d(\pipeline_dffe[11]~54_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(\pipeline_dffe[11]~q ),
	.prn(vcc));
defparam \pipeline_dffe[11] .is_wysiwyg = "true";
defparam \pipeline_dffe[11] .power_up = "low";

fiftyfivenm_lcell_comb \pipeline_dffe[12]~56 (
	.dataa(\pipeline_dffe[12]~q ),
	.datab(phi_int_arr_reg_12),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[11]~55 ),
	.combout(\pipeline_dffe[12]~56_combout ),
	.cout(\pipeline_dffe[12]~57 ));
defparam \pipeline_dffe[12]~56 .lut_mask = 16'h96EF;
defparam \pipeline_dffe[12]~56 .sum_lutc_input = "cin";

dffeas \pipeline_dffe[12] (
	.clk(clock),
	.d(\pipeline_dffe[12]~56_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(\pipeline_dffe[12]~q ),
	.prn(vcc));
defparam \pipeline_dffe[12] .is_wysiwyg = "true";
defparam \pipeline_dffe[12] .power_up = "low";

fiftyfivenm_lcell_comb \pipeline_dffe[13]~58 (
	.dataa(\pipeline_dffe[13]~q ),
	.datab(phi_int_arr_reg_13),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[12]~57 ),
	.combout(\pipeline_dffe[13]~58_combout ),
	.cout(\pipeline_dffe[13]~59 ));
defparam \pipeline_dffe[13]~58 .lut_mask = 16'h967F;
defparam \pipeline_dffe[13]~58 .sum_lutc_input = "cin";

dffeas \pipeline_dffe[13] (
	.clk(clock),
	.d(\pipeline_dffe[13]~58_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(\pipeline_dffe[13]~q ),
	.prn(vcc));
defparam \pipeline_dffe[13] .is_wysiwyg = "true";
defparam \pipeline_dffe[13] .power_up = "low";

fiftyfivenm_lcell_comb \pipeline_dffe[14]~60 (
	.dataa(pipeline_dffe_14),
	.datab(phi_int_arr_reg_14),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[13]~59 ),
	.combout(\pipeline_dffe[14]~60_combout ),
	.cout(\pipeline_dffe[14]~61 ));
defparam \pipeline_dffe[14]~60 .lut_mask = 16'h96EF;
defparam \pipeline_dffe[14]~60 .sum_lutc_input = "cin";

fiftyfivenm_lcell_comb \pipeline_dffe[15]~62 (
	.dataa(pipeline_dffe_15),
	.datab(phi_int_arr_reg_15),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[14]~61 ),
	.combout(\pipeline_dffe[15]~62_combout ),
	.cout(\pipeline_dffe[15]~63 ));
defparam \pipeline_dffe[15]~62 .lut_mask = 16'h967F;
defparam \pipeline_dffe[15]~62 .sum_lutc_input = "cin";

fiftyfivenm_lcell_comb \pipeline_dffe[16]~64 (
	.dataa(pipeline_dffe_16),
	.datab(phi_int_arr_reg_16),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[15]~63 ),
	.combout(\pipeline_dffe[16]~64_combout ),
	.cout(\pipeline_dffe[16]~65 ));
defparam \pipeline_dffe[16]~64 .lut_mask = 16'h96EF;
defparam \pipeline_dffe[16]~64 .sum_lutc_input = "cin";

fiftyfivenm_lcell_comb \pipeline_dffe[17]~66 (
	.dataa(pipeline_dffe_17),
	.datab(phi_int_arr_reg_17),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[16]~65 ),
	.combout(\pipeline_dffe[17]~66_combout ),
	.cout(\pipeline_dffe[17]~67 ));
defparam \pipeline_dffe[17]~66 .lut_mask = 16'h967F;
defparam \pipeline_dffe[17]~66 .sum_lutc_input = "cin";

fiftyfivenm_lcell_comb \pipeline_dffe[18]~68 (
	.dataa(pipeline_dffe_18),
	.datab(phi_int_arr_reg_18),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[17]~67 ),
	.combout(\pipeline_dffe[18]~68_combout ),
	.cout(\pipeline_dffe[18]~69 ));
defparam \pipeline_dffe[18]~68 .lut_mask = 16'h96EF;
defparam \pipeline_dffe[18]~68 .sum_lutc_input = "cin";

fiftyfivenm_lcell_comb \pipeline_dffe[19]~70 (
	.dataa(pipeline_dffe_19),
	.datab(phi_int_arr_reg_19),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[18]~69 ),
	.combout(\pipeline_dffe[19]~70_combout ),
	.cout(\pipeline_dffe[19]~71 ));
defparam \pipeline_dffe[19]~70 .lut_mask = 16'h967F;
defparam \pipeline_dffe[19]~70 .sum_lutc_input = "cin";

fiftyfivenm_lcell_comb \pipeline_dffe[20]~72 (
	.dataa(pipeline_dffe_20),
	.datab(phi_int_arr_reg_20),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[19]~71 ),
	.combout(\pipeline_dffe[20]~72_combout ),
	.cout(\pipeline_dffe[20]~73 ));
defparam \pipeline_dffe[20]~72 .lut_mask = 16'h96EF;
defparam \pipeline_dffe[20]~72 .sum_lutc_input = "cin";

fiftyfivenm_lcell_comb \pipeline_dffe[21]~74 (
	.dataa(pipeline_dffe_21),
	.datab(phi_int_arr_reg_21),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[20]~73 ),
	.combout(\pipeline_dffe[21]~74_combout ),
	.cout(\pipeline_dffe[21]~75 ));
defparam \pipeline_dffe[21]~74 .lut_mask = 16'h967F;
defparam \pipeline_dffe[21]~74 .sum_lutc_input = "cin";

fiftyfivenm_lcell_comb \pipeline_dffe[22]~76 (
	.dataa(pipeline_dffe_22),
	.datab(phi_int_arr_reg_22),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[21]~75 ),
	.combout(\pipeline_dffe[22]~76_combout ),
	.cout(\pipeline_dffe[22]~77 ));
defparam \pipeline_dffe[22]~76 .lut_mask = 16'h96EF;
defparam \pipeline_dffe[22]~76 .sum_lutc_input = "cin";

fiftyfivenm_lcell_comb \pipeline_dffe[23]~78 (
	.dataa(pipeline_dffe_23),
	.datab(phi_int_arr_reg_23),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[22]~77 ),
	.combout(\pipeline_dffe[23]~78_combout ),
	.cout(\pipeline_dffe[23]~79 ));
defparam \pipeline_dffe[23]~78 .lut_mask = 16'h967F;
defparam \pipeline_dffe[23]~78 .sum_lutc_input = "cin";

fiftyfivenm_lcell_comb \pipeline_dffe[24]~80 (
	.dataa(pipeline_dffe_24),
	.datab(phi_int_arr_reg_24),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[23]~79 ),
	.combout(\pipeline_dffe[24]~80_combout ),
	.cout(\pipeline_dffe[24]~81 ));
defparam \pipeline_dffe[24]~80 .lut_mask = 16'h96EF;
defparam \pipeline_dffe[24]~80 .sum_lutc_input = "cin";

fiftyfivenm_lcell_comb \pipeline_dffe[25]~82 (
	.dataa(pipeline_dffe_25),
	.datab(phi_int_arr_reg_25),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[24]~81 ),
	.combout(\pipeline_dffe[25]~82_combout ),
	.cout(\pipeline_dffe[25]~83 ));
defparam \pipeline_dffe[25]~82 .lut_mask = 16'h967F;
defparam \pipeline_dffe[25]~82 .sum_lutc_input = "cin";

fiftyfivenm_lcell_comb \pipeline_dffe[26]~84 (
	.dataa(pipeline_dffe_26),
	.datab(phi_int_arr_reg_26),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[25]~83 ),
	.combout(\pipeline_dffe[26]~84_combout ),
	.cout(\pipeline_dffe[26]~85 ));
defparam \pipeline_dffe[26]~84 .lut_mask = 16'h96EF;
defparam \pipeline_dffe[26]~84 .sum_lutc_input = "cin";

fiftyfivenm_lcell_comb \pipeline_dffe[27]~86 (
	.dataa(pipeline_dffe_27),
	.datab(phi_int_arr_reg_27),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[26]~85 ),
	.combout(\pipeline_dffe[27]~86_combout ),
	.cout(\pipeline_dffe[27]~87 ));
defparam \pipeline_dffe[27]~86 .lut_mask = 16'h967F;
defparam \pipeline_dffe[27]~86 .sum_lutc_input = "cin";

fiftyfivenm_lcell_comb \pipeline_dffe[28]~88 (
	.dataa(pipeline_dffe_28),
	.datab(phi_int_arr_reg_28),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[27]~87 ),
	.combout(\pipeline_dffe[28]~88_combout ),
	.cout(\pipeline_dffe[28]~89 ));
defparam \pipeline_dffe[28]~88 .lut_mask = 16'h96EF;
defparam \pipeline_dffe[28]~88 .sum_lutc_input = "cin";

fiftyfivenm_lcell_comb \pipeline_dffe[29]~90 (
	.dataa(pipeline_dffe_29),
	.datab(phi_int_arr_reg_29),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[28]~89 ),
	.combout(\pipeline_dffe[29]~90_combout ),
	.cout(\pipeline_dffe[29]~91 ));
defparam \pipeline_dffe[29]~90 .lut_mask = 16'h967F;
defparam \pipeline_dffe[29]~90 .sum_lutc_input = "cin";

fiftyfivenm_lcell_comb \pipeline_dffe[30]~92 (
	.dataa(pipeline_dffe_30),
	.datab(phi_int_arr_reg_30),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[29]~91 ),
	.combout(\pipeline_dffe[30]~92_combout ),
	.cout(\pipeline_dffe[30]~93 ));
defparam \pipeline_dffe[30]~92 .lut_mask = 16'h96EF;
defparam \pipeline_dffe[30]~92 .sum_lutc_input = "cin";

fiftyfivenm_lcell_comb \pipeline_dffe[31]~94 (
	.dataa(pipeline_dffe_31),
	.datab(phi_int_arr_reg_31),
	.datac(gnd),
	.datad(gnd),
	.cin(\pipeline_dffe[30]~93 ),
	.combout(\pipeline_dffe[31]~94_combout ),
	.cout());
defparam \pipeline_dffe[31]~94 .lut_mask = 16'h9696;
defparam \pipeline_dffe[31]~94 .sum_lutc_input = "cin";

endmodule

module nco_asj_dxx (
	dxxrv_3,
	pipeline_dffe_19,
	pipeline_dffe_18,
	pipeline_dffe_17,
	dxxrv_2,
	pipeline_dffe_16,
	dxxrv_1,
	pipeline_dffe_15,
	dxxrv_0,
	pipeline_dffe_14,
	pipeline_dffe_20,
	pipeline_dffe_21,
	pipeline_dffe_22,
	pipeline_dffe_23,
	pipeline_dffe_24,
	pipeline_dffe_25,
	pipeline_dffe_26,
	pipeline_dffe_27,
	pipeline_dffe_28,
	pipeline_dffe_29,
	pipeline_dffe_30,
	pipeline_dffe_31,
	data_out_0,
	dxxpdo_5,
	dxxpdo_4,
	dxxpdo_6,
	dxxpdo_7,
	dxxpdo_8,
	dxxpdo_9,
	dxxpdo_10,
	dxxpdo_11,
	dxxpdo_12,
	dxxpdo_13,
	dxxpdo_14,
	dxxpdo_15,
	dxxpdo_16,
	dxxpdo_17,
	reset_n,
	clk)/* synthesis synthesis_greybox=1 */;
input 	dxxrv_3;
input 	pipeline_dffe_19;
input 	pipeline_dffe_18;
input 	pipeline_dffe_17;
input 	dxxrv_2;
input 	pipeline_dffe_16;
input 	dxxrv_1;
input 	pipeline_dffe_15;
input 	dxxrv_0;
input 	pipeline_dffe_14;
input 	pipeline_dffe_20;
input 	pipeline_dffe_21;
input 	pipeline_dffe_22;
input 	pipeline_dffe_23;
input 	pipeline_dffe_24;
input 	pipeline_dffe_25;
input 	pipeline_dffe_26;
input 	pipeline_dffe_27;
input 	pipeline_dffe_28;
input 	pipeline_dffe_29;
input 	pipeline_dffe_30;
input 	pipeline_dffe_31;
input 	data_out_0;
output 	dxxpdo_5;
output 	dxxpdo_4;
output 	dxxpdo_6;
output 	dxxpdo_7;
output 	dxxpdo_8;
output 	dxxpdo_9;
output 	dxxpdo_10;
output 	dxxpdo_11;
output 	dxxpdo_12;
output 	dxxpdo_13;
output 	dxxpdo_14;
output 	dxxpdo_15;
output 	dxxpdo_16;
output 	dxxpdo_17;
input 	reset_n;
input 	clk;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \phi_dither_out_w[4]~15_cout ;
wire \phi_dither_out_w[4]~17_cout ;
wire \phi_dither_out_w[4]~19_cout ;
wire \phi_dither_out_w[4]~21_cout ;
wire \phi_dither_out_w[4]~23 ;
wire \phi_dither_out_w[5]~24_combout ;
wire \phi_dither_out_w[5]~q ;
wire \dxxpdo~0_combout ;
wire \phi_dither_out_w[4]~22_combout ;
wire \phi_dither_out_w[4]~q ;
wire \dxxpdo~1_combout ;
wire \phi_dither_out_w[5]~25 ;
wire \phi_dither_out_w[6]~26_combout ;
wire \phi_dither_out_w[6]~q ;
wire \dxxpdo~2_combout ;
wire \phi_dither_out_w[6]~27 ;
wire \phi_dither_out_w[7]~28_combout ;
wire \phi_dither_out_w[7]~q ;
wire \dxxpdo~3_combout ;
wire \phi_dither_out_w[7]~29 ;
wire \phi_dither_out_w[8]~30_combout ;
wire \phi_dither_out_w[8]~q ;
wire \dxxpdo~4_combout ;
wire \phi_dither_out_w[8]~31 ;
wire \phi_dither_out_w[9]~32_combout ;
wire \phi_dither_out_w[9]~q ;
wire \dxxpdo~5_combout ;
wire \phi_dither_out_w[9]~33 ;
wire \phi_dither_out_w[10]~34_combout ;
wire \phi_dither_out_w[10]~q ;
wire \dxxpdo~6_combout ;
wire \phi_dither_out_w[10]~35 ;
wire \phi_dither_out_w[11]~36_combout ;
wire \phi_dither_out_w[11]~q ;
wire \dxxpdo~7_combout ;
wire \phi_dither_out_w[11]~37 ;
wire \phi_dither_out_w[12]~38_combout ;
wire \phi_dither_out_w[12]~q ;
wire \dxxpdo~8_combout ;
wire \phi_dither_out_w[12]~39 ;
wire \phi_dither_out_w[13]~40_combout ;
wire \phi_dither_out_w[13]~q ;
wire \dxxpdo~9_combout ;
wire \phi_dither_out_w[13]~41 ;
wire \phi_dither_out_w[14]~42_combout ;
wire \phi_dither_out_w[14]~q ;
wire \dxxpdo~10_combout ;
wire \phi_dither_out_w[14]~43 ;
wire \phi_dither_out_w[15]~44_combout ;
wire \phi_dither_out_w[15]~q ;
wire \dxxpdo~11_combout ;
wire \phi_dither_out_w[15]~45 ;
wire \phi_dither_out_w[16]~46_combout ;
wire \phi_dither_out_w[16]~q ;
wire \dxxpdo~12_combout ;
wire \phi_dither_out_w[16]~47 ;
wire \phi_dither_out_w[17]~48_combout ;
wire \phi_dither_out_w[17]~q ;
wire \dxxpdo~13_combout ;


dffeas \dxxpdo[5] (
	.clk(clk),
	.d(\dxxpdo~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(dxxpdo_5),
	.prn(vcc));
defparam \dxxpdo[5] .is_wysiwyg = "true";
defparam \dxxpdo[5] .power_up = "low";

dffeas \dxxpdo[4] (
	.clk(clk),
	.d(\dxxpdo~1_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(dxxpdo_4),
	.prn(vcc));
defparam \dxxpdo[4] .is_wysiwyg = "true";
defparam \dxxpdo[4] .power_up = "low";

dffeas \dxxpdo[6] (
	.clk(clk),
	.d(\dxxpdo~2_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(dxxpdo_6),
	.prn(vcc));
defparam \dxxpdo[6] .is_wysiwyg = "true";
defparam \dxxpdo[6] .power_up = "low";

dffeas \dxxpdo[7] (
	.clk(clk),
	.d(\dxxpdo~3_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(dxxpdo_7),
	.prn(vcc));
defparam \dxxpdo[7] .is_wysiwyg = "true";
defparam \dxxpdo[7] .power_up = "low";

dffeas \dxxpdo[8] (
	.clk(clk),
	.d(\dxxpdo~4_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(dxxpdo_8),
	.prn(vcc));
defparam \dxxpdo[8] .is_wysiwyg = "true";
defparam \dxxpdo[8] .power_up = "low";

dffeas \dxxpdo[9] (
	.clk(clk),
	.d(\dxxpdo~5_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(dxxpdo_9),
	.prn(vcc));
defparam \dxxpdo[9] .is_wysiwyg = "true";
defparam \dxxpdo[9] .power_up = "low";

dffeas \dxxpdo[10] (
	.clk(clk),
	.d(\dxxpdo~6_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(dxxpdo_10),
	.prn(vcc));
defparam \dxxpdo[10] .is_wysiwyg = "true";
defparam \dxxpdo[10] .power_up = "low";

dffeas \dxxpdo[11] (
	.clk(clk),
	.d(\dxxpdo~7_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(dxxpdo_11),
	.prn(vcc));
defparam \dxxpdo[11] .is_wysiwyg = "true";
defparam \dxxpdo[11] .power_up = "low";

dffeas \dxxpdo[12] (
	.clk(clk),
	.d(\dxxpdo~8_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(dxxpdo_12),
	.prn(vcc));
defparam \dxxpdo[12] .is_wysiwyg = "true";
defparam \dxxpdo[12] .power_up = "low";

dffeas \dxxpdo[13] (
	.clk(clk),
	.d(\dxxpdo~9_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(dxxpdo_13),
	.prn(vcc));
defparam \dxxpdo[13] .is_wysiwyg = "true";
defparam \dxxpdo[13] .power_up = "low";

dffeas \dxxpdo[14] (
	.clk(clk),
	.d(\dxxpdo~10_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(dxxpdo_14),
	.prn(vcc));
defparam \dxxpdo[14] .is_wysiwyg = "true";
defparam \dxxpdo[14] .power_up = "low";

dffeas \dxxpdo[15] (
	.clk(clk),
	.d(\dxxpdo~11_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(dxxpdo_15),
	.prn(vcc));
defparam \dxxpdo[15] .is_wysiwyg = "true";
defparam \dxxpdo[15] .power_up = "low";

dffeas \dxxpdo[16] (
	.clk(clk),
	.d(\dxxpdo~12_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(dxxpdo_16),
	.prn(vcc));
defparam \dxxpdo[16] .is_wysiwyg = "true";
defparam \dxxpdo[16] .power_up = "low";

dffeas \dxxpdo[17] (
	.clk(clk),
	.d(\dxxpdo~13_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(dxxpdo_17),
	.prn(vcc));
defparam \dxxpdo[17] .is_wysiwyg = "true";
defparam \dxxpdo[17] .power_up = "low";

fiftyfivenm_lcell_comb \phi_dither_out_w[4]~15 (
	.dataa(dxxrv_0),
	.datab(pipeline_dffe_14),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(\phi_dither_out_w[4]~15_cout ));
defparam \phi_dither_out_w[4]~15 .lut_mask = 16'h00EE;
defparam \phi_dither_out_w[4]~15 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \phi_dither_out_w[4]~17 (
	.dataa(dxxrv_1),
	.datab(pipeline_dffe_15),
	.datac(gnd),
	.datad(vcc),
	.cin(\phi_dither_out_w[4]~15_cout ),
	.combout(),
	.cout(\phi_dither_out_w[4]~17_cout ));
defparam \phi_dither_out_w[4]~17 .lut_mask = 16'h007F;
defparam \phi_dither_out_w[4]~17 .sum_lutc_input = "cin";

fiftyfivenm_lcell_comb \phi_dither_out_w[4]~19 (
	.dataa(dxxrv_2),
	.datab(pipeline_dffe_16),
	.datac(gnd),
	.datad(vcc),
	.cin(\phi_dither_out_w[4]~17_cout ),
	.combout(),
	.cout(\phi_dither_out_w[4]~19_cout ));
defparam \phi_dither_out_w[4]~19 .lut_mask = 16'h00EF;
defparam \phi_dither_out_w[4]~19 .sum_lutc_input = "cin";

fiftyfivenm_lcell_comb \phi_dither_out_w[4]~21 (
	.dataa(dxxrv_3),
	.datab(pipeline_dffe_17),
	.datac(gnd),
	.datad(vcc),
	.cin(\phi_dither_out_w[4]~19_cout ),
	.combout(),
	.cout(\phi_dither_out_w[4]~21_cout ));
defparam \phi_dither_out_w[4]~21 .lut_mask = 16'h007F;
defparam \phi_dither_out_w[4]~21 .sum_lutc_input = "cin";

fiftyfivenm_lcell_comb \phi_dither_out_w[4]~22 (
	.dataa(dxxrv_3),
	.datab(pipeline_dffe_18),
	.datac(gnd),
	.datad(vcc),
	.cin(\phi_dither_out_w[4]~21_cout ),
	.combout(\phi_dither_out_w[4]~22_combout ),
	.cout(\phi_dither_out_w[4]~23 ));
defparam \phi_dither_out_w[4]~22 .lut_mask = 16'h96EF;
defparam \phi_dither_out_w[4]~22 .sum_lutc_input = "cin";

fiftyfivenm_lcell_comb \phi_dither_out_w[5]~24 (
	.dataa(dxxrv_3),
	.datab(pipeline_dffe_19),
	.datac(gnd),
	.datad(vcc),
	.cin(\phi_dither_out_w[4]~23 ),
	.combout(\phi_dither_out_w[5]~24_combout ),
	.cout(\phi_dither_out_w[5]~25 ));
defparam \phi_dither_out_w[5]~24 .lut_mask = 16'h967F;
defparam \phi_dither_out_w[5]~24 .sum_lutc_input = "cin";

dffeas \phi_dither_out_w[5] (
	.clk(clk),
	.d(\phi_dither_out_w[5]~24_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_dither_out_w[5]~q ),
	.prn(vcc));
defparam \phi_dither_out_w[5] .is_wysiwyg = "true";
defparam \phi_dither_out_w[5] .power_up = "low";

fiftyfivenm_lcell_comb \dxxpdo~0 (
	.dataa(reset_n),
	.datab(\phi_dither_out_w[5]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\dxxpdo~0_combout ),
	.cout());
defparam \dxxpdo~0 .lut_mask = 16'hEEEE;
defparam \dxxpdo~0 .sum_lutc_input = "datac";

dffeas \phi_dither_out_w[4] (
	.clk(clk),
	.d(\phi_dither_out_w[4]~22_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_dither_out_w[4]~q ),
	.prn(vcc));
defparam \phi_dither_out_w[4] .is_wysiwyg = "true";
defparam \phi_dither_out_w[4] .power_up = "low";

fiftyfivenm_lcell_comb \dxxpdo~1 (
	.dataa(reset_n),
	.datab(\phi_dither_out_w[4]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\dxxpdo~1_combout ),
	.cout());
defparam \dxxpdo~1 .lut_mask = 16'hEEEE;
defparam \dxxpdo~1 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \phi_dither_out_w[6]~26 (
	.dataa(dxxrv_3),
	.datab(pipeline_dffe_20),
	.datac(gnd),
	.datad(vcc),
	.cin(\phi_dither_out_w[5]~25 ),
	.combout(\phi_dither_out_w[6]~26_combout ),
	.cout(\phi_dither_out_w[6]~27 ));
defparam \phi_dither_out_w[6]~26 .lut_mask = 16'h96EF;
defparam \phi_dither_out_w[6]~26 .sum_lutc_input = "cin";

dffeas \phi_dither_out_w[6] (
	.clk(clk),
	.d(\phi_dither_out_w[6]~26_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_dither_out_w[6]~q ),
	.prn(vcc));
defparam \phi_dither_out_w[6] .is_wysiwyg = "true";
defparam \phi_dither_out_w[6] .power_up = "low";

fiftyfivenm_lcell_comb \dxxpdo~2 (
	.dataa(reset_n),
	.datab(\phi_dither_out_w[6]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\dxxpdo~2_combout ),
	.cout());
defparam \dxxpdo~2 .lut_mask = 16'hEEEE;
defparam \dxxpdo~2 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \phi_dither_out_w[7]~28 (
	.dataa(dxxrv_3),
	.datab(pipeline_dffe_21),
	.datac(gnd),
	.datad(vcc),
	.cin(\phi_dither_out_w[6]~27 ),
	.combout(\phi_dither_out_w[7]~28_combout ),
	.cout(\phi_dither_out_w[7]~29 ));
defparam \phi_dither_out_w[7]~28 .lut_mask = 16'h967F;
defparam \phi_dither_out_w[7]~28 .sum_lutc_input = "cin";

dffeas \phi_dither_out_w[7] (
	.clk(clk),
	.d(\phi_dither_out_w[7]~28_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_dither_out_w[7]~q ),
	.prn(vcc));
defparam \phi_dither_out_w[7] .is_wysiwyg = "true";
defparam \phi_dither_out_w[7] .power_up = "low";

fiftyfivenm_lcell_comb \dxxpdo~3 (
	.dataa(reset_n),
	.datab(\phi_dither_out_w[7]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\dxxpdo~3_combout ),
	.cout());
defparam \dxxpdo~3 .lut_mask = 16'hEEEE;
defparam \dxxpdo~3 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \phi_dither_out_w[8]~30 (
	.dataa(dxxrv_3),
	.datab(pipeline_dffe_22),
	.datac(gnd),
	.datad(vcc),
	.cin(\phi_dither_out_w[7]~29 ),
	.combout(\phi_dither_out_w[8]~30_combout ),
	.cout(\phi_dither_out_w[8]~31 ));
defparam \phi_dither_out_w[8]~30 .lut_mask = 16'h96EF;
defparam \phi_dither_out_w[8]~30 .sum_lutc_input = "cin";

dffeas \phi_dither_out_w[8] (
	.clk(clk),
	.d(\phi_dither_out_w[8]~30_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_dither_out_w[8]~q ),
	.prn(vcc));
defparam \phi_dither_out_w[8] .is_wysiwyg = "true";
defparam \phi_dither_out_w[8] .power_up = "low";

fiftyfivenm_lcell_comb \dxxpdo~4 (
	.dataa(reset_n),
	.datab(\phi_dither_out_w[8]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\dxxpdo~4_combout ),
	.cout());
defparam \dxxpdo~4 .lut_mask = 16'hEEEE;
defparam \dxxpdo~4 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \phi_dither_out_w[9]~32 (
	.dataa(dxxrv_3),
	.datab(pipeline_dffe_23),
	.datac(gnd),
	.datad(vcc),
	.cin(\phi_dither_out_w[8]~31 ),
	.combout(\phi_dither_out_w[9]~32_combout ),
	.cout(\phi_dither_out_w[9]~33 ));
defparam \phi_dither_out_w[9]~32 .lut_mask = 16'h967F;
defparam \phi_dither_out_w[9]~32 .sum_lutc_input = "cin";

dffeas \phi_dither_out_w[9] (
	.clk(clk),
	.d(\phi_dither_out_w[9]~32_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_dither_out_w[9]~q ),
	.prn(vcc));
defparam \phi_dither_out_w[9] .is_wysiwyg = "true";
defparam \phi_dither_out_w[9] .power_up = "low";

fiftyfivenm_lcell_comb \dxxpdo~5 (
	.dataa(reset_n),
	.datab(\phi_dither_out_w[9]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\dxxpdo~5_combout ),
	.cout());
defparam \dxxpdo~5 .lut_mask = 16'hEEEE;
defparam \dxxpdo~5 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \phi_dither_out_w[10]~34 (
	.dataa(dxxrv_3),
	.datab(pipeline_dffe_24),
	.datac(gnd),
	.datad(vcc),
	.cin(\phi_dither_out_w[9]~33 ),
	.combout(\phi_dither_out_w[10]~34_combout ),
	.cout(\phi_dither_out_w[10]~35 ));
defparam \phi_dither_out_w[10]~34 .lut_mask = 16'h96EF;
defparam \phi_dither_out_w[10]~34 .sum_lutc_input = "cin";

dffeas \phi_dither_out_w[10] (
	.clk(clk),
	.d(\phi_dither_out_w[10]~34_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_dither_out_w[10]~q ),
	.prn(vcc));
defparam \phi_dither_out_w[10] .is_wysiwyg = "true";
defparam \phi_dither_out_w[10] .power_up = "low";

fiftyfivenm_lcell_comb \dxxpdo~6 (
	.dataa(reset_n),
	.datab(\phi_dither_out_w[10]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\dxxpdo~6_combout ),
	.cout());
defparam \dxxpdo~6 .lut_mask = 16'hEEEE;
defparam \dxxpdo~6 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \phi_dither_out_w[11]~36 (
	.dataa(dxxrv_3),
	.datab(pipeline_dffe_25),
	.datac(gnd),
	.datad(vcc),
	.cin(\phi_dither_out_w[10]~35 ),
	.combout(\phi_dither_out_w[11]~36_combout ),
	.cout(\phi_dither_out_w[11]~37 ));
defparam \phi_dither_out_w[11]~36 .lut_mask = 16'h967F;
defparam \phi_dither_out_w[11]~36 .sum_lutc_input = "cin";

dffeas \phi_dither_out_w[11] (
	.clk(clk),
	.d(\phi_dither_out_w[11]~36_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_dither_out_w[11]~q ),
	.prn(vcc));
defparam \phi_dither_out_w[11] .is_wysiwyg = "true";
defparam \phi_dither_out_w[11] .power_up = "low";

fiftyfivenm_lcell_comb \dxxpdo~7 (
	.dataa(reset_n),
	.datab(\phi_dither_out_w[11]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\dxxpdo~7_combout ),
	.cout());
defparam \dxxpdo~7 .lut_mask = 16'hEEEE;
defparam \dxxpdo~7 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \phi_dither_out_w[12]~38 (
	.dataa(dxxrv_3),
	.datab(pipeline_dffe_26),
	.datac(gnd),
	.datad(vcc),
	.cin(\phi_dither_out_w[11]~37 ),
	.combout(\phi_dither_out_w[12]~38_combout ),
	.cout(\phi_dither_out_w[12]~39 ));
defparam \phi_dither_out_w[12]~38 .lut_mask = 16'h96EF;
defparam \phi_dither_out_w[12]~38 .sum_lutc_input = "cin";

dffeas \phi_dither_out_w[12] (
	.clk(clk),
	.d(\phi_dither_out_w[12]~38_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_dither_out_w[12]~q ),
	.prn(vcc));
defparam \phi_dither_out_w[12] .is_wysiwyg = "true";
defparam \phi_dither_out_w[12] .power_up = "low";

fiftyfivenm_lcell_comb \dxxpdo~8 (
	.dataa(reset_n),
	.datab(\phi_dither_out_w[12]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\dxxpdo~8_combout ),
	.cout());
defparam \dxxpdo~8 .lut_mask = 16'hEEEE;
defparam \dxxpdo~8 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \phi_dither_out_w[13]~40 (
	.dataa(dxxrv_3),
	.datab(pipeline_dffe_27),
	.datac(gnd),
	.datad(vcc),
	.cin(\phi_dither_out_w[12]~39 ),
	.combout(\phi_dither_out_w[13]~40_combout ),
	.cout(\phi_dither_out_w[13]~41 ));
defparam \phi_dither_out_w[13]~40 .lut_mask = 16'h967F;
defparam \phi_dither_out_w[13]~40 .sum_lutc_input = "cin";

dffeas \phi_dither_out_w[13] (
	.clk(clk),
	.d(\phi_dither_out_w[13]~40_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_dither_out_w[13]~q ),
	.prn(vcc));
defparam \phi_dither_out_w[13] .is_wysiwyg = "true";
defparam \phi_dither_out_w[13] .power_up = "low";

fiftyfivenm_lcell_comb \dxxpdo~9 (
	.dataa(reset_n),
	.datab(\phi_dither_out_w[13]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\dxxpdo~9_combout ),
	.cout());
defparam \dxxpdo~9 .lut_mask = 16'hEEEE;
defparam \dxxpdo~9 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \phi_dither_out_w[14]~42 (
	.dataa(dxxrv_3),
	.datab(pipeline_dffe_28),
	.datac(gnd),
	.datad(vcc),
	.cin(\phi_dither_out_w[13]~41 ),
	.combout(\phi_dither_out_w[14]~42_combout ),
	.cout(\phi_dither_out_w[14]~43 ));
defparam \phi_dither_out_w[14]~42 .lut_mask = 16'h96EF;
defparam \phi_dither_out_w[14]~42 .sum_lutc_input = "cin";

dffeas \phi_dither_out_w[14] (
	.clk(clk),
	.d(\phi_dither_out_w[14]~42_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_dither_out_w[14]~q ),
	.prn(vcc));
defparam \phi_dither_out_w[14] .is_wysiwyg = "true";
defparam \phi_dither_out_w[14] .power_up = "low";

fiftyfivenm_lcell_comb \dxxpdo~10 (
	.dataa(reset_n),
	.datab(\phi_dither_out_w[14]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\dxxpdo~10_combout ),
	.cout());
defparam \dxxpdo~10 .lut_mask = 16'hEEEE;
defparam \dxxpdo~10 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \phi_dither_out_w[15]~44 (
	.dataa(dxxrv_3),
	.datab(pipeline_dffe_29),
	.datac(gnd),
	.datad(vcc),
	.cin(\phi_dither_out_w[14]~43 ),
	.combout(\phi_dither_out_w[15]~44_combout ),
	.cout(\phi_dither_out_w[15]~45 ));
defparam \phi_dither_out_w[15]~44 .lut_mask = 16'h967F;
defparam \phi_dither_out_w[15]~44 .sum_lutc_input = "cin";

dffeas \phi_dither_out_w[15] (
	.clk(clk),
	.d(\phi_dither_out_w[15]~44_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_dither_out_w[15]~q ),
	.prn(vcc));
defparam \phi_dither_out_w[15] .is_wysiwyg = "true";
defparam \phi_dither_out_w[15] .power_up = "low";

fiftyfivenm_lcell_comb \dxxpdo~11 (
	.dataa(reset_n),
	.datab(\phi_dither_out_w[15]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\dxxpdo~11_combout ),
	.cout());
defparam \dxxpdo~11 .lut_mask = 16'hEEEE;
defparam \dxxpdo~11 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \phi_dither_out_w[16]~46 (
	.dataa(dxxrv_3),
	.datab(pipeline_dffe_30),
	.datac(gnd),
	.datad(vcc),
	.cin(\phi_dither_out_w[15]~45 ),
	.combout(\phi_dither_out_w[16]~46_combout ),
	.cout(\phi_dither_out_w[16]~47 ));
defparam \phi_dither_out_w[16]~46 .lut_mask = 16'h96EF;
defparam \phi_dither_out_w[16]~46 .sum_lutc_input = "cin";

dffeas \phi_dither_out_w[16] (
	.clk(clk),
	.d(\phi_dither_out_w[16]~46_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_dither_out_w[16]~q ),
	.prn(vcc));
defparam \phi_dither_out_w[16] .is_wysiwyg = "true";
defparam \phi_dither_out_w[16] .power_up = "low";

fiftyfivenm_lcell_comb \dxxpdo~12 (
	.dataa(reset_n),
	.datab(\phi_dither_out_w[16]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\dxxpdo~12_combout ),
	.cout());
defparam \dxxpdo~12 .lut_mask = 16'hEEEE;
defparam \dxxpdo~12 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \phi_dither_out_w[17]~48 (
	.dataa(dxxrv_3),
	.datab(pipeline_dffe_31),
	.datac(gnd),
	.datad(gnd),
	.cin(\phi_dither_out_w[16]~47 ),
	.combout(\phi_dither_out_w[17]~48_combout ),
	.cout());
defparam \phi_dither_out_w[17]~48 .lut_mask = 16'h9696;
defparam \phi_dither_out_w[17]~48 .sum_lutc_input = "cin";

dffeas \phi_dither_out_w[17] (
	.clk(clk),
	.d(\phi_dither_out_w[17]~48_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_dither_out_w[17]~q ),
	.prn(vcc));
defparam \phi_dither_out_w[17] .is_wysiwyg = "true";
defparam \phi_dither_out_w[17] .power_up = "low";

fiftyfivenm_lcell_comb \dxxpdo~13 (
	.dataa(reset_n),
	.datab(\phi_dither_out_w[17]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\dxxpdo~13_combout ),
	.cout());
defparam \dxxpdo~13 .lut_mask = 16'hEEEE;
defparam \dxxpdo~13 .sum_lutc_input = "datac";

endmodule

module nco_asj_dxx_g (
	dxxrv_3,
	dxxrv_2,
	dxxrv_1,
	dxxrv_0,
	data_out_0,
	reset_n,
	clk)/* synthesis synthesis_greybox=1 */;
output 	dxxrv_3;
output 	dxxrv_2;
output 	dxxrv_1;
output 	dxxrv_0;
input 	data_out_0;
input 	reset_n;
input 	clk;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \lsfr_reg~16_combout ;
wire \lsfr_reg[0]~q ;
wire \lsfr_reg~15_combout ;
wire \lsfr_reg[1]~q ;
wire \lsfr_reg~14_combout ;
wire \lsfr_reg[2]~q ;
wire \lsfr_reg~13_combout ;
wire \lsfr_reg[3]~q ;
wire \lsfr_reg~12_combout ;
wire \lsfr_reg[4]~q ;
wire \lsfr_reg~11_combout ;
wire \lsfr_reg[5]~q ;
wire \lsfr_reg~10_combout ;
wire \lsfr_reg[6]~q ;
wire \lsfr_reg~9_combout ;
wire \lsfr_reg[7]~q ;
wire \lsfr_reg~8_combout ;
wire \lsfr_reg[8]~q ;
wire \lsfr_reg~7_combout ;
wire \lsfr_reg[9]~q ;
wire \lsfr_reg~6_combout ;
wire \lsfr_reg[10]~q ;
wire \lsfr_reg~5_combout ;
wire \lsfr_reg[11]~q ;
wire \lsfr_reg~4_combout ;
wire \lsfr_reg[12]~q ;
wire \lsfr_reg~3_combout ;
wire \lsfr_reg[13]~q ;
wire \lsfr_reg~2_combout ;
wire \lsfr_reg[14]~q ;
wire \lsfr_reg~1_combout ;
wire \lsfr_reg[15]~q ;
wire \Add0~0_combout ;
wire \Add0~1_combout ;
wire \Add0~2_combout ;
wire \lsfr_reg~0_combout ;


dffeas \dxxrv[3] (
	.clk(clk),
	.d(\Add0~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(dxxrv_3),
	.prn(vcc));
defparam \dxxrv[3] .is_wysiwyg = "true";
defparam \dxxrv[3] .power_up = "low";

dffeas \dxxrv[2] (
	.clk(clk),
	.d(\Add0~1_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(dxxrv_2),
	.prn(vcc));
defparam \dxxrv[2] .is_wysiwyg = "true";
defparam \dxxrv[2] .power_up = "low";

dffeas \dxxrv[1] (
	.clk(clk),
	.d(\Add0~2_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(dxxrv_1),
	.prn(vcc));
defparam \dxxrv[1] .is_wysiwyg = "true";
defparam \dxxrv[1] .power_up = "low";

dffeas \dxxrv[0] (
	.clk(clk),
	.d(\lsfr_reg~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(data_out_0),
	.q(dxxrv_0),
	.prn(vcc));
defparam \dxxrv[0] .is_wysiwyg = "true";
defparam \dxxrv[0] .power_up = "low";

fiftyfivenm_lcell_comb \lsfr_reg~16 (
	.dataa(\lsfr_reg[15]~q ),
	.datab(\lsfr_reg[14]~q ),
	.datac(\lsfr_reg[12]~q ),
	.datad(\lsfr_reg[3]~q ),
	.cin(gnd),
	.combout(\lsfr_reg~16_combout ),
	.cout());
defparam \lsfr_reg~16 .lut_mask = 16'h6996;
defparam \lsfr_reg~16 .sum_lutc_input = "datac";

dffeas \lsfr_reg[0] (
	.clk(clk),
	.d(\lsfr_reg~16_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(!reset_n),
	.ena(data_out_0),
	.q(\lsfr_reg[0]~q ),
	.prn(vcc));
defparam \lsfr_reg[0] .is_wysiwyg = "true";
defparam \lsfr_reg[0] .power_up = "low";

fiftyfivenm_lcell_comb \lsfr_reg~15 (
	.dataa(reset_n),
	.datab(\lsfr_reg[0]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\lsfr_reg~15_combout ),
	.cout());
defparam \lsfr_reg~15 .lut_mask = 16'hEEEE;
defparam \lsfr_reg~15 .sum_lutc_input = "datac";

dffeas \lsfr_reg[1] (
	.clk(clk),
	.d(\lsfr_reg~15_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\lsfr_reg[1]~q ),
	.prn(vcc));
defparam \lsfr_reg[1] .is_wysiwyg = "true";
defparam \lsfr_reg[1] .power_up = "low";

fiftyfivenm_lcell_comb \lsfr_reg~14 (
	.dataa(\lsfr_reg[1]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(reset_n),
	.cin(gnd),
	.combout(\lsfr_reg~14_combout ),
	.cout());
defparam \lsfr_reg~14 .lut_mask = 16'hAAFF;
defparam \lsfr_reg~14 .sum_lutc_input = "datac";

dffeas \lsfr_reg[2] (
	.clk(clk),
	.d(\lsfr_reg~14_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\lsfr_reg[2]~q ),
	.prn(vcc));
defparam \lsfr_reg[2] .is_wysiwyg = "true";
defparam \lsfr_reg[2] .power_up = "low";

fiftyfivenm_lcell_comb \lsfr_reg~13 (
	.dataa(\lsfr_reg[2]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(reset_n),
	.cin(gnd),
	.combout(\lsfr_reg~13_combout ),
	.cout());
defparam \lsfr_reg~13 .lut_mask = 16'hAAFF;
defparam \lsfr_reg~13 .sum_lutc_input = "datac";

dffeas \lsfr_reg[3] (
	.clk(clk),
	.d(\lsfr_reg~13_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\lsfr_reg[3]~q ),
	.prn(vcc));
defparam \lsfr_reg[3] .is_wysiwyg = "true";
defparam \lsfr_reg[3] .power_up = "low";

fiftyfivenm_lcell_comb \lsfr_reg~12 (
	.dataa(\lsfr_reg[3]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(reset_n),
	.cin(gnd),
	.combout(\lsfr_reg~12_combout ),
	.cout());
defparam \lsfr_reg~12 .lut_mask = 16'hAAFF;
defparam \lsfr_reg~12 .sum_lutc_input = "datac";

dffeas \lsfr_reg[4] (
	.clk(clk),
	.d(\lsfr_reg~12_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\lsfr_reg[4]~q ),
	.prn(vcc));
defparam \lsfr_reg[4] .is_wysiwyg = "true";
defparam \lsfr_reg[4] .power_up = "low";

fiftyfivenm_lcell_comb \lsfr_reg~11 (
	.dataa(reset_n),
	.datab(\lsfr_reg[4]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\lsfr_reg~11_combout ),
	.cout());
defparam \lsfr_reg~11 .lut_mask = 16'hEEEE;
defparam \lsfr_reg~11 .sum_lutc_input = "datac";

dffeas \lsfr_reg[5] (
	.clk(clk),
	.d(\lsfr_reg~11_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\lsfr_reg[5]~q ),
	.prn(vcc));
defparam \lsfr_reg[5] .is_wysiwyg = "true";
defparam \lsfr_reg[5] .power_up = "low";

fiftyfivenm_lcell_comb \lsfr_reg~10 (
	.dataa(\lsfr_reg[5]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(reset_n),
	.cin(gnd),
	.combout(\lsfr_reg~10_combout ),
	.cout());
defparam \lsfr_reg~10 .lut_mask = 16'hAAFF;
defparam \lsfr_reg~10 .sum_lutc_input = "datac";

dffeas \lsfr_reg[6] (
	.clk(clk),
	.d(\lsfr_reg~10_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\lsfr_reg[6]~q ),
	.prn(vcc));
defparam \lsfr_reg[6] .is_wysiwyg = "true";
defparam \lsfr_reg[6] .power_up = "low";

fiftyfivenm_lcell_comb \lsfr_reg~9 (
	.dataa(\lsfr_reg[6]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(reset_n),
	.cin(gnd),
	.combout(\lsfr_reg~9_combout ),
	.cout());
defparam \lsfr_reg~9 .lut_mask = 16'hAAFF;
defparam \lsfr_reg~9 .sum_lutc_input = "datac";

dffeas \lsfr_reg[7] (
	.clk(clk),
	.d(\lsfr_reg~9_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\lsfr_reg[7]~q ),
	.prn(vcc));
defparam \lsfr_reg[7] .is_wysiwyg = "true";
defparam \lsfr_reg[7] .power_up = "low";

fiftyfivenm_lcell_comb \lsfr_reg~8 (
	.dataa(reset_n),
	.datab(\lsfr_reg[7]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\lsfr_reg~8_combout ),
	.cout());
defparam \lsfr_reg~8 .lut_mask = 16'hEEEE;
defparam \lsfr_reg~8 .sum_lutc_input = "datac";

dffeas \lsfr_reg[8] (
	.clk(clk),
	.d(\lsfr_reg~8_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\lsfr_reg[8]~q ),
	.prn(vcc));
defparam \lsfr_reg[8] .is_wysiwyg = "true";
defparam \lsfr_reg[8] .power_up = "low";

fiftyfivenm_lcell_comb \lsfr_reg~7 (
	.dataa(\lsfr_reg[8]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(reset_n),
	.cin(gnd),
	.combout(\lsfr_reg~7_combout ),
	.cout());
defparam \lsfr_reg~7 .lut_mask = 16'hAAFF;
defparam \lsfr_reg~7 .sum_lutc_input = "datac";

dffeas \lsfr_reg[9] (
	.clk(clk),
	.d(\lsfr_reg~7_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\lsfr_reg[9]~q ),
	.prn(vcc));
defparam \lsfr_reg[9] .is_wysiwyg = "true";
defparam \lsfr_reg[9] .power_up = "low";

fiftyfivenm_lcell_comb \lsfr_reg~6 (
	.dataa(reset_n),
	.datab(\lsfr_reg[9]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\lsfr_reg~6_combout ),
	.cout());
defparam \lsfr_reg~6 .lut_mask = 16'hEEEE;
defparam \lsfr_reg~6 .sum_lutc_input = "datac";

dffeas \lsfr_reg[10] (
	.clk(clk),
	.d(\lsfr_reg~6_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\lsfr_reg[10]~q ),
	.prn(vcc));
defparam \lsfr_reg[10] .is_wysiwyg = "true";
defparam \lsfr_reg[10] .power_up = "low";

fiftyfivenm_lcell_comb \lsfr_reg~5 (
	.dataa(\lsfr_reg[10]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(reset_n),
	.cin(gnd),
	.combout(\lsfr_reg~5_combout ),
	.cout());
defparam \lsfr_reg~5 .lut_mask = 16'hAAFF;
defparam \lsfr_reg~5 .sum_lutc_input = "datac";

dffeas \lsfr_reg[11] (
	.clk(clk),
	.d(\lsfr_reg~5_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\lsfr_reg[11]~q ),
	.prn(vcc));
defparam \lsfr_reg[11] .is_wysiwyg = "true";
defparam \lsfr_reg[11] .power_up = "low";

fiftyfivenm_lcell_comb \lsfr_reg~4 (
	.dataa(\lsfr_reg[11]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(reset_n),
	.cin(gnd),
	.combout(\lsfr_reg~4_combout ),
	.cout());
defparam \lsfr_reg~4 .lut_mask = 16'hAAFF;
defparam \lsfr_reg~4 .sum_lutc_input = "datac";

dffeas \lsfr_reg[12] (
	.clk(clk),
	.d(\lsfr_reg~4_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\lsfr_reg[12]~q ),
	.prn(vcc));
defparam \lsfr_reg[12] .is_wysiwyg = "true";
defparam \lsfr_reg[12] .power_up = "low";

fiftyfivenm_lcell_comb \lsfr_reg~3 (
	.dataa(reset_n),
	.datab(\lsfr_reg[12]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\lsfr_reg~3_combout ),
	.cout());
defparam \lsfr_reg~3 .lut_mask = 16'hEEEE;
defparam \lsfr_reg~3 .sum_lutc_input = "datac";

dffeas \lsfr_reg[13] (
	.clk(clk),
	.d(\lsfr_reg~3_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\lsfr_reg[13]~q ),
	.prn(vcc));
defparam \lsfr_reg[13] .is_wysiwyg = "true";
defparam \lsfr_reg[13] .power_up = "low";

fiftyfivenm_lcell_comb \lsfr_reg~2 (
	.dataa(reset_n),
	.datab(\lsfr_reg[13]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\lsfr_reg~2_combout ),
	.cout());
defparam \lsfr_reg~2 .lut_mask = 16'hEEEE;
defparam \lsfr_reg~2 .sum_lutc_input = "datac";

dffeas \lsfr_reg[14] (
	.clk(clk),
	.d(\lsfr_reg~2_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\lsfr_reg[14]~q ),
	.prn(vcc));
defparam \lsfr_reg[14] .is_wysiwyg = "true";
defparam \lsfr_reg[14] .power_up = "low";

fiftyfivenm_lcell_comb \lsfr_reg~1 (
	.dataa(\lsfr_reg[14]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(reset_n),
	.cin(gnd),
	.combout(\lsfr_reg~1_combout ),
	.cout());
defparam \lsfr_reg~1 .lut_mask = 16'hAAFF;
defparam \lsfr_reg~1 .sum_lutc_input = "datac";

dffeas \lsfr_reg[15] (
	.clk(clk),
	.d(\lsfr_reg~1_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\lsfr_reg[15]~q ),
	.prn(vcc));
defparam \lsfr_reg[15] .is_wysiwyg = "true";
defparam \lsfr_reg[15] .power_up = "low";

fiftyfivenm_lcell_comb \Add0~0 (
	.dataa(\lsfr_reg[15]~q ),
	.datab(\lsfr_reg[14]~q ),
	.datac(\lsfr_reg[13]~q ),
	.datad(\lsfr_reg[12]~q ),
	.cin(gnd),
	.combout(\Add0~0_combout ),
	.cout());
defparam \Add0~0 .lut_mask = 16'hBFFF;
defparam \Add0~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Add0~1 (
	.dataa(\lsfr_reg[14]~q ),
	.datab(\lsfr_reg[15]~q ),
	.datac(\lsfr_reg[13]~q ),
	.datad(\lsfr_reg[12]~q ),
	.cin(gnd),
	.combout(\Add0~1_combout ),
	.cout());
defparam \Add0~1 .lut_mask = 16'h6996;
defparam \Add0~1 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Add0~2 (
	.dataa(gnd),
	.datab(\lsfr_reg[13]~q ),
	.datac(\lsfr_reg[15]~q ),
	.datad(\lsfr_reg[12]~q ),
	.cin(gnd),
	.combout(\Add0~2_combout ),
	.cout());
defparam \Add0~2 .lut_mask = 16'hC33C;
defparam \Add0~2 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \lsfr_reg~0 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\lsfr_reg[15]~q ),
	.datad(\lsfr_reg[12]~q ),
	.cin(gnd),
	.combout(\lsfr_reg~0_combout ),
	.cout());
defparam \lsfr_reg~0 .lut_mask = 16'h0FF0;
defparam \lsfr_reg~0 .sum_lutc_input = "datac";

endmodule

module nco_asj_gal (
	pipeline_dffe_1,
	pipeline_dffe_2,
	pipeline_dffe_3,
	pipeline_dffe_4,
	pipeline_dffe_5,
	pipeline_dffe_6,
	pipeline_dffe_7,
	pipeline_dffe_8,
	pipeline_dffe_9,
	pipeline_dffe_10,
	pipeline_dffe_11,
	pipeline_dffe_12,
	pipeline_dffe_13,
	data_out_0,
	rom_add_0,
	rom_add_1,
	rom_add_2,
	rom_add_3,
	rom_add_4,
	rom_add_5,
	rom_add_6,
	rom_add_7,
	rom_add_8,
	rom_add_9,
	rom_add_10,
	rom_add_11,
	rom_add_12,
	reset_n,
	clk)/* synthesis synthesis_greybox=1 */;
input 	pipeline_dffe_1;
input 	pipeline_dffe_2;
input 	pipeline_dffe_3;
input 	pipeline_dffe_4;
input 	pipeline_dffe_5;
input 	pipeline_dffe_6;
input 	pipeline_dffe_7;
input 	pipeline_dffe_8;
input 	pipeline_dffe_9;
input 	pipeline_dffe_10;
input 	pipeline_dffe_11;
input 	pipeline_dffe_12;
input 	pipeline_dffe_13;
input 	data_out_0;
output 	rom_add_0;
output 	rom_add_1;
output 	rom_add_2;
output 	rom_add_3;
output 	rom_add_4;
output 	rom_add_5;
output 	rom_add_6;
output 	rom_add_7;
output 	rom_add_8;
output 	rom_add_9;
output 	rom_add_10;
output 	rom_add_11;
output 	rom_add_12;
input 	reset_n;
input 	clk;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \rom_add~0_combout ;
wire \rom_add~1_combout ;
wire \rom_add~2_combout ;
wire \rom_add~3_combout ;
wire \rom_add~4_combout ;
wire \rom_add~5_combout ;
wire \rom_add~6_combout ;
wire \rom_add~7_combout ;
wire \rom_add~8_combout ;
wire \rom_add~9_combout ;
wire \rom_add~10_combout ;
wire \rom_add~11_combout ;
wire \rom_add~12_combout ;


dffeas \rom_add[0] (
	.clk(clk),
	.d(\rom_add~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(rom_add_0),
	.prn(vcc));
defparam \rom_add[0] .is_wysiwyg = "true";
defparam \rom_add[0] .power_up = "low";

dffeas \rom_add[1] (
	.clk(clk),
	.d(\rom_add~1_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(rom_add_1),
	.prn(vcc));
defparam \rom_add[1] .is_wysiwyg = "true";
defparam \rom_add[1] .power_up = "low";

dffeas \rom_add[2] (
	.clk(clk),
	.d(\rom_add~2_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(rom_add_2),
	.prn(vcc));
defparam \rom_add[2] .is_wysiwyg = "true";
defparam \rom_add[2] .power_up = "low";

dffeas \rom_add[3] (
	.clk(clk),
	.d(\rom_add~3_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(rom_add_3),
	.prn(vcc));
defparam \rom_add[3] .is_wysiwyg = "true";
defparam \rom_add[3] .power_up = "low";

dffeas \rom_add[4] (
	.clk(clk),
	.d(\rom_add~4_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(rom_add_4),
	.prn(vcc));
defparam \rom_add[4] .is_wysiwyg = "true";
defparam \rom_add[4] .power_up = "low";

dffeas \rom_add[5] (
	.clk(clk),
	.d(\rom_add~5_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(rom_add_5),
	.prn(vcc));
defparam \rom_add[5] .is_wysiwyg = "true";
defparam \rom_add[5] .power_up = "low";

dffeas \rom_add[6] (
	.clk(clk),
	.d(\rom_add~6_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(rom_add_6),
	.prn(vcc));
defparam \rom_add[6] .is_wysiwyg = "true";
defparam \rom_add[6] .power_up = "low";

dffeas \rom_add[7] (
	.clk(clk),
	.d(\rom_add~7_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(rom_add_7),
	.prn(vcc));
defparam \rom_add[7] .is_wysiwyg = "true";
defparam \rom_add[7] .power_up = "low";

dffeas \rom_add[8] (
	.clk(clk),
	.d(\rom_add~8_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(rom_add_8),
	.prn(vcc));
defparam \rom_add[8] .is_wysiwyg = "true";
defparam \rom_add[8] .power_up = "low";

dffeas \rom_add[9] (
	.clk(clk),
	.d(\rom_add~9_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(rom_add_9),
	.prn(vcc));
defparam \rom_add[9] .is_wysiwyg = "true";
defparam \rom_add[9] .power_up = "low";

dffeas \rom_add[10] (
	.clk(clk),
	.d(\rom_add~10_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(rom_add_10),
	.prn(vcc));
defparam \rom_add[10] .is_wysiwyg = "true";
defparam \rom_add[10] .power_up = "low";

dffeas \rom_add[11] (
	.clk(clk),
	.d(\rom_add~11_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(rom_add_11),
	.prn(vcc));
defparam \rom_add[11] .is_wysiwyg = "true";
defparam \rom_add[11] .power_up = "low";

dffeas \rom_add[12] (
	.clk(clk),
	.d(\rom_add~12_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(rom_add_12),
	.prn(vcc));
defparam \rom_add[12] .is_wysiwyg = "true";
defparam \rom_add[12] .power_up = "low";

fiftyfivenm_lcell_comb \rom_add~0 (
	.dataa(reset_n),
	.datab(pipeline_dffe_1),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\rom_add~0_combout ),
	.cout());
defparam \rom_add~0 .lut_mask = 16'hEEEE;
defparam \rom_add~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \rom_add~1 (
	.dataa(reset_n),
	.datab(pipeline_dffe_2),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\rom_add~1_combout ),
	.cout());
defparam \rom_add~1 .lut_mask = 16'hEEEE;
defparam \rom_add~1 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \rom_add~2 (
	.dataa(reset_n),
	.datab(pipeline_dffe_3),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\rom_add~2_combout ),
	.cout());
defparam \rom_add~2 .lut_mask = 16'hEEEE;
defparam \rom_add~2 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \rom_add~3 (
	.dataa(reset_n),
	.datab(pipeline_dffe_4),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\rom_add~3_combout ),
	.cout());
defparam \rom_add~3 .lut_mask = 16'hEEEE;
defparam \rom_add~3 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \rom_add~4 (
	.dataa(reset_n),
	.datab(pipeline_dffe_5),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\rom_add~4_combout ),
	.cout());
defparam \rom_add~4 .lut_mask = 16'hEEEE;
defparam \rom_add~4 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \rom_add~5 (
	.dataa(reset_n),
	.datab(pipeline_dffe_6),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\rom_add~5_combout ),
	.cout());
defparam \rom_add~5 .lut_mask = 16'hEEEE;
defparam \rom_add~5 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \rom_add~6 (
	.dataa(reset_n),
	.datab(pipeline_dffe_7),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\rom_add~6_combout ),
	.cout());
defparam \rom_add~6 .lut_mask = 16'hEEEE;
defparam \rom_add~6 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \rom_add~7 (
	.dataa(reset_n),
	.datab(pipeline_dffe_8),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\rom_add~7_combout ),
	.cout());
defparam \rom_add~7 .lut_mask = 16'hEEEE;
defparam \rom_add~7 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \rom_add~8 (
	.dataa(reset_n),
	.datab(pipeline_dffe_9),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\rom_add~8_combout ),
	.cout());
defparam \rom_add~8 .lut_mask = 16'hEEEE;
defparam \rom_add~8 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \rom_add~9 (
	.dataa(reset_n),
	.datab(pipeline_dffe_10),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\rom_add~9_combout ),
	.cout());
defparam \rom_add~9 .lut_mask = 16'hEEEE;
defparam \rom_add~9 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \rom_add~10 (
	.dataa(reset_n),
	.datab(pipeline_dffe_11),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\rom_add~10_combout ),
	.cout());
defparam \rom_add~10 .lut_mask = 16'hEEEE;
defparam \rom_add~10 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \rom_add~11 (
	.dataa(reset_n),
	.datab(pipeline_dffe_12),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\rom_add~11_combout ),
	.cout());
defparam \rom_add~11 .lut_mask = 16'hEEEE;
defparam \rom_add~11 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \rom_add~12 (
	.dataa(reset_n),
	.datab(pipeline_dffe_13),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\rom_add~12_combout ),
	.cout());
defparam \rom_add~12 .lut_mask = 16'hEEEE;
defparam \rom_add~12 .sum_lutc_input = "datac";

endmodule

module nco_asj_nco_as_m_cen (
	q_a_0,
	q_a_1,
	q_a_2,
	q_a_3,
	q_a_4,
	q_a_5,
	q_a_6,
	q_a_7,
	q_a_8,
	q_a_9,
	q_a_10,
	q_a_11,
	rom_add_0,
	rom_add_1,
	rom_add_2,
	rom_add_3,
	rom_add_4,
	rom_add_5,
	rom_add_6,
	rom_add_7,
	rom_add_8,
	rom_add_9,
	rom_add_10,
	rom_add_11,
	rom_add_12,
	clk,
	clken)/* synthesis synthesis_greybox=1 */;
output 	q_a_0;
output 	q_a_1;
output 	q_a_2;
output 	q_a_3;
output 	q_a_4;
output 	q_a_5;
output 	q_a_6;
output 	q_a_7;
output 	q_a_8;
output 	q_a_9;
output 	q_a_10;
output 	q_a_11;
input 	rom_add_0;
input 	rom_add_1;
input 	rom_add_2;
input 	rom_add_3;
input 	rom_add_4;
input 	rom_add_5;
input 	rom_add_6;
input 	rom_add_7;
input 	rom_add_8;
input 	rom_add_9;
input 	rom_add_10;
input 	rom_add_11;
input 	rom_add_12;
input 	clk;
input 	clken;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



nco_altsyncram_1 altsyncram_component0(
	.q_a({q_a_11,q_a_10,q_a_9,q_a_8,q_a_7,q_a_6,q_a_5,q_a_4,q_a_3,q_a_2,q_a_1,q_a_0}),
	.address_a({rom_add_12,rom_add_11,rom_add_10,rom_add_9,rom_add_8,rom_add_7,rom_add_6,rom_add_5,rom_add_4,rom_add_3,rom_add_2,rom_add_1,rom_add_0}),
	.clock0(clk),
	.clocken0(clken));

endmodule

module nco_altsyncram_1 (
	q_a,
	address_a,
	clock0,
	clocken0)/* synthesis synthesis_greybox=1 */;
output 	[11:0] q_a;
input 	[12:0] address_a;
input 	clock0;
input 	clocken0;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



nco_altsyncram_4u81 auto_generated(
	.q_a({q_a[11],q_a[10],q_a[9],q_a[8],q_a[7],q_a[6],q_a[5],q_a[4],q_a[3],q_a[2],q_a[1],q_a[0]}),
	.address_a({address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.clock0(clock0),
	.clocken0(clocken0));

endmodule

module nco_altsyncram_4u81 (
	q_a,
	address_a,
	clock0,
	clocken0)/* synthesis synthesis_greybox=1 */;
output 	[11:0] q_a;
input 	[12:0] address_a;
input 	clock0;
input 	clocken0;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;


wire [143:0] ram_block1a0_PORTADATAOUT_bus;
wire [143:0] ram_block1a1_PORTADATAOUT_bus;
wire [143:0] ram_block1a2_PORTADATAOUT_bus;
wire [143:0] ram_block1a3_PORTADATAOUT_bus;
wire [143:0] ram_block1a4_PORTADATAOUT_bus;
wire [143:0] ram_block1a5_PORTADATAOUT_bus;
wire [143:0] ram_block1a6_PORTADATAOUT_bus;
wire [143:0] ram_block1a7_PORTADATAOUT_bus;
wire [143:0] ram_block1a8_PORTADATAOUT_bus;
wire [143:0] ram_block1a9_PORTADATAOUT_bus;
wire [143:0] ram_block1a10_PORTADATAOUT_bus;
wire [143:0] ram_block1a11_PORTADATAOUT_bus;

assign q_a[0] = ram_block1a0_PORTADATAOUT_bus[0];

assign q_a[1] = ram_block1a1_PORTADATAOUT_bus[0];

assign q_a[2] = ram_block1a2_PORTADATAOUT_bus[0];

assign q_a[3] = ram_block1a3_PORTADATAOUT_bus[0];

assign q_a[4] = ram_block1a4_PORTADATAOUT_bus[0];

assign q_a[5] = ram_block1a5_PORTADATAOUT_bus[0];

assign q_a[6] = ram_block1a6_PORTADATAOUT_bus[0];

assign q_a[7] = ram_block1a7_PORTADATAOUT_bus[0];

assign q_a[8] = ram_block1a8_PORTADATAOUT_bus[0];

assign q_a[9] = ram_block1a9_PORTADATAOUT_bus[0];

assign q_a[10] = ram_block1a10_PORTADATAOUT_bus[0];

assign q_a[11] = ram_block1a11_PORTADATAOUT_bus[0];

fiftyfivenm_ram_block ram_block1a0(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a0_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a0.clk0_core_clock_enable = "ena0";
defparam ram_block1a0.clk0_input_clock_enable = "ena0";
defparam ram_block1a0.clk0_output_clock_enable = "ena0";
defparam ram_block1a0.data_interleave_offset_in_bits = 1;
defparam ram_block1a0.data_interleave_width_in_bits = 1;
defparam ram_block1a0.init_file = "nco_nco_ii_0_sin.hex";
defparam ram_block1a0.init_file_layout = "port_a";
defparam ram_block1a0.logical_ram_name = "nco_nco_ii_0:nco_ii_0|asj_nco_as_m_cen:ux0120|altsyncram:altsyncram_component0|altsyncram_4u81:auto_generated|ALTSYNCRAM";
defparam ram_block1a0.operation_mode = "rom";
defparam ram_block1a0.port_a_address_clear = "none";
defparam ram_block1a0.port_a_address_width = 13;
defparam ram_block1a0.port_a_data_out_clear = "none";
defparam ram_block1a0.port_a_data_out_clock = "clock0";
defparam ram_block1a0.port_a_data_width = 1;
defparam ram_block1a0.port_a_first_address = 0;
defparam ram_block1a0.port_a_first_bit_number = 0;
defparam ram_block1a0.port_a_last_address = 8191;
defparam ram_block1a0.port_a_logical_ram_depth = 8192;
defparam ram_block1a0.port_a_logical_ram_width = 12;
defparam ram_block1a0.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a0.ram_block_type = "auto";
defparam ram_block1a0.mem_init3 = 2048'h67319CC673398CE63398CC673198CE63319CCE673399CCE6733998CC667333998CCCE667333399999CCCCCCCC666666666666666664CCCCCC999993336664CC99B3366CC993264C9B364D9B26C9B24D926C936D926DB64924924DB4924924B6DA496DA4B696D2DA5A5A5A5A5A52D296B5AD294AD6B52B5A952B56A55AB54AB55AAD55AAB555AAAB55555AAAAAAAAAAAAAAAAAAAAA955556AAAD556AA556AB55AB54A952B52B5295AD6B5A529694B4B4B49692DA4B6D249249249249B6C936C9B26CD93264CD99B33326666666663333998CC67319CE739CE31CE38C71C71C78E3C70E1C3C3C783C3C1E0F83E0FC1F81FC07F00FF007FE001FFFC00001FFFFFFF;
defparam ram_block1a0.mem_init2 = 2048'hFFFFFFF000007FFF000FFC01FE01FC07F03F07E0F83E0F078783C787870E1C78E3C71C71C638E718E739CE7319CC663339998CCCCCCCCC9999B33664C99366C9B26D926DB2492492492496DA4B692D25A5A5A52D294B5AD6B5295A95A952A55AB55AAD54AAD556AAAD55552AAAAAAAAAAAAAAAAAAAAB55555AAAB555AAB556AB55AA55AB54AD5A952B5A95AD6A5296B5AD29694B4B4B4B4B4B696D2DA4B6D24B6DA4924925B64924924DB6C936D926C93649B26C9B364D9B264C993266CD99B32664CCD999333326666664CCCCCCCCCCCCCCCCC66666667333339999CCCE666333999CCC6633399CCE673399CCE673198CE63319CC663398CE63399CC67319CC;
defparam ram_block1a0.mem_init1 = 2048'h67319CC673398CE63398CC673198CE63319CCE673399CCE6733998CC667333998CCCE667333399999CCCCCCCC666666666666666664CCCCCC999993336664CC99B3366CC993264C9B364D9B26C9B24D926C936D926DB64924924DB4924924B6DA496DA4B696D2DA5A5A5A5A5A52D296B5AD294AD6B52B5A952B56A55AB54AB55AAD55AAB555AAAB55555AAAAAAAAAAAAAAAAAAAAA955556AAAD556AA556AB55AB54A952B52B5295AD6B5A529694B4B4B49692DA4B6D249249249249B6C936C9B26CD93264CD99B33326666666663333998CC67319CE739CE31CE38C71C71C78E3C70E1C3C3C783C3C1E0F83E0FC1F81FC07F00FF007FE001FFFC00001FFFFFFF;
defparam ram_block1a0.mem_init0 = 2048'hFFFFFFF000007FFF000FFC01FE01FC07F03F07E0F83E0F078783C787870E1C78E3C71C71C638E718E739CE7319CC663339998CCCCCCCCC9999B33664C99366C9B26D926DB2492492492496DA4B692D25A5A5A52D294B5AD6B5295A95A952A55AB55AAD54AAD556AAAD55552AAAAAAAAAAAAAAAAAAAAB55555AAAB555AAB556AB55AA55AB54AD5A952B5A95AD6A5296B5AD29694B4B4B4B4B4B696D2DA4B6D24B6DA4924925B64924924DB6C936D926C93649B26C9B364D9B264C993266CD99B32664CCD999333326666664CCCCCCCCCCCCCCCCC66666667333339999CCCE666333999CCC6633399CCE673399CCE673198CE63319CC663398CE63399CC67319CC;

fiftyfivenm_ram_block ram_block1a1(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a1_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a1.clk0_core_clock_enable = "ena0";
defparam ram_block1a1.clk0_input_clock_enable = "ena0";
defparam ram_block1a1.clk0_output_clock_enable = "ena0";
defparam ram_block1a1.data_interleave_offset_in_bits = 1;
defparam ram_block1a1.data_interleave_width_in_bits = 1;
defparam ram_block1a1.init_file = "nco_nco_ii_0_sin.hex";
defparam ram_block1a1.init_file_layout = "port_a";
defparam ram_block1a1.logical_ram_name = "nco_nco_ii_0:nco_ii_0|asj_nco_as_m_cen:ux0120|altsyncram:altsyncram_component0|altsyncram_4u81:auto_generated|ALTSYNCRAM";
defparam ram_block1a1.operation_mode = "rom";
defparam ram_block1a1.port_a_address_clear = "none";
defparam ram_block1a1.port_a_address_width = 13;
defparam ram_block1a1.port_a_data_out_clear = "none";
defparam ram_block1a1.port_a_data_out_clock = "clock0";
defparam ram_block1a1.port_a_data_width = 1;
defparam ram_block1a1.port_a_first_address = 0;
defparam ram_block1a1.port_a_first_bit_number = 1;
defparam ram_block1a1.port_a_last_address = 8191;
defparam ram_block1a1.port_a_logical_ram_depth = 8192;
defparam ram_block1a1.port_a_logical_ram_width = 12;
defparam ram_block1a1.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a1.ram_block_type = "auto";
defparam ram_block1a1.mem_init3 = 2048'hB5A5296B5A52D6B4A52D694A5AD294B5A5296B4A5AD296B4A5AD2D694B5A5AD2D696B4B5A5A52D2D296969696B4B4B4B4B4B4B4B4B6969696D2D2DA5A4B49692D25A4B692DA4B692DA496D24B6D2496DB4925B6DB492492492496D924924924936DB6C924DB64936C936C936C9B64DB26C9B26C9B264D93264D9B366CD993266CC999332666CCCD99999333333333333333333333199998CCCE66733998CC663398CE6339CC6319CE739C6318E738C738E71CE38C71C71C71C71C71C70E38F1C38F1E3C78F1E1C3C3C787878787C3C3E1F0F87C1E0F83E0FC1F03F07E07E07F03F80FE03FC07FC03FE00FFC00FFE001FFF8000FFFF800001FFFFFFFFE0000000;
defparam ram_block1a1.mem_init2 = 2048'h0000000FFFFFFFFF000003FFFE0003FFF000FFE007FE00FF807FC07F80FE03F81FC0FC0FC1F81F07E0F83E0F07C3E1F0F8787C3C3C3C3C787870F1E3C78F1E3871E38E1C71C71C71C71C71C638E71CE39C639CE318C739CE7318C67398CE63398CC6633399CCCE666333331999999999999999999999333336666CCC99933266CC993366CD9B364C99364C9B26C9B26C9B64DB26D926D926D924DB64926DB6D924924924936D24924924925B6DB4925B6D2496DA496D24B692DA4B692DA4B49692D25A4B4B69696D2D2D2DA5A5A5A5A5A5A5A5AD2D2D2D2969694B4B5A5AD2D696B4B5A52D696B4A5AD296B4A5AD294B5A5296B4A52D694A5AD694B5AD294B5A;
defparam ram_block1a1.mem_init1 = 2048'hD294B5AD296B5A5296B5A52D6B4A5AD694B5A52D694B5A52D694B5A52D29694B5A5A52D29696B4B4B5A5A5A5AD2D2D2D2D2D2D2D2D25A5A5A4B4B49692D2DA5B49692DA5B496D25B692DB496DA496DB4925B6DB492492DB6DB6DB6DB6DB6D924924DB6D924DB64936C936C936C9B64D93649B264D9366C9B366CD93366CD9933664CC9993336666CCCCC9999999999999999999998CCCCE666333199CCE673398CC67318CE7318C6318C6318E738C738C718E39C71CE38E38E38E3871C70E3871E3C70E1C3C7870F0E1E1E1E1E1F0F0787C3E0F07C1F07C1F03E07C0FC0FC07E03F01FC03FC07FC03FE007FE003FF8003FFF0000FFFFE0000003FFFFFFFFFFFF;
defparam ram_block1a1.mem_init0 = 2048'hFFFFFFFFFFFF8000000FFFFE0001FFF8003FF800FFC00FF807FC07F807F01F80FC07E07E07C0F81F07C1F07C1E0F87C3C1E1F0F0F0F0F0E1E1C3C7870E1C78F1C38E1C71C38E38E38E38E71C738E31C639C639CE318C6318C6319CE6319CC663399CCE67331998CCCE6666333333333333333333333266666CCCD999332664CD993366CD99366CD9B26CD9364C9B24D9364DB26D926D926D924DB64936DB64924936DB6DB6DB6DB6DB6924925B6DB4925B6D24B6D25B692DB496D25B4B692D25B4B69692D25A5A4B4B4B4969696969696969696B4B4B4B5A5A5AD2D29694B4B5A52D29694B5A52D694B5A52D694B5A52D6B4A5AD694B5AD294B5AD296B5A5296;

fiftyfivenm_ram_block ram_block1a2(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a2_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a2.clk0_core_clock_enable = "ena0";
defparam ram_block1a2.clk0_input_clock_enable = "ena0";
defparam ram_block1a2.clk0_output_clock_enable = "ena0";
defparam ram_block1a2.data_interleave_offset_in_bits = 1;
defparam ram_block1a2.data_interleave_width_in_bits = 1;
defparam ram_block1a2.init_file = "nco_nco_ii_0_sin.hex";
defparam ram_block1a2.init_file_layout = "port_a";
defparam ram_block1a2.logical_ram_name = "nco_nco_ii_0:nco_ii_0|asj_nco_as_m_cen:ux0120|altsyncram:altsyncram_component0|altsyncram_4u81:auto_generated|ALTSYNCRAM";
defparam ram_block1a2.operation_mode = "rom";
defparam ram_block1a2.port_a_address_clear = "none";
defparam ram_block1a2.port_a_address_width = 13;
defparam ram_block1a2.port_a_data_out_clear = "none";
defparam ram_block1a2.port_a_data_out_clock = "clock0";
defparam ram_block1a2.port_a_data_width = 1;
defparam ram_block1a2.port_a_first_address = 0;
defparam ram_block1a2.port_a_first_bit_number = 2;
defparam ram_block1a2.port_a_last_address = 8191;
defparam ram_block1a2.port_a_logical_ram_depth = 8192;
defparam ram_block1a2.port_a_logical_ram_width = 12;
defparam ram_block1a2.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a2.ram_block_type = "auto";
defparam ram_block1a2.mem_init3 = 2048'hC639CE739C6318C739CE718C631CE739C6318C739CE318C739CE318E739C631CE718C739C639CE31CE718E718C738C738C738C738C718E718E31CE39C738E71CE39C738E31C738E31C718E38C71C718E38E39C71C71C71C71C718E1C71C71C71C71C70E38E3871C70E38F1C70E3871C38F1C38F1C3871E3C78E1C3870E1E3C78F0E1E3C3878F0F1E1E1E3C3C3C3C3C3C3C3C3C3C3E1E1E0F0F0787C3E1F0F87C3E0F07C3E0F83E1F07C1F83E0F83F07C0F81F03F07E07E07E07E07E07F03F01FC0FE03F80FE01FC03F807F807F803FC01FF007FE00FFC00FFE003FF8007FF8003FFF0003FFF80003FFFF00000FFFFFE0000000FFFFFFFFFE0000000000000000;
defparam ram_block1a2.mem_init2 = 2048'h0000000000000000FFFFFFFFFE0000000FFFFFE00001FFFF80003FFF8001FFF8003FFC003FF800FFE007FE00FFC01FF007F803FC03FC03F807F00FE03F80FE07F01F81FC0FC0FC0FC0FC0FC1F81F03E07C1F83E0F83F07C1F0F83E0F87C1E0F87C3E1F0F87C3C1E1E0F0F0F878787878787878787878F0F0F1E1E3C3878F0E1E3C78F0E1C3870E3C78F1C3871E3871E3871C38E1C71E38E1C71C38E38E1C71C71C71C71C70E31C71C71C71C71C738E38E31C71C638E31C718E39C718E39C738E71CE39C738E718E31CE31C639C639C639C639C631CE31CE718E738C739C631CE718C739CE318E739C6318E739C6318C739CE718C631CE739C6318C739CE738C6;
defparam ram_block1a2.mem_init1 = 2048'h318C739CE718C6318E739CE318C639CE738C631CE738C631CE738C631CE718C739C631CE718E738C739C639C631CE31CE31CE31CE31C639C638C738E71CE39C738E71C638C71CE38E71C738E39C71C738E38E38C71C71C71C71C71C71C71C71C71C38E38E3C71C70E38F1C70E3871C38F1C78E1C38F1E3870E1C38F0E1C3870F1E3C3878F0F1E1E3C3C38787878787878787878787C3C3E1E1F0F0783C1E0F0783C1F0F83E0F07C1F07C1F07E0F83F07C0F81F83F03E07E07E07E07F03F01F80FE03F01FC03F80FF01FE01FE01FF00FF803FE00FFC00FFC00FFE003FFC003FFE000FFFC0003FFFC0001FFFFE000007FFFFFF000000001FFFFFFFFFFFFFFFFFFF;
defparam ram_block1a2.mem_init0 = 2048'hFFFFFFFFFFFFFFFFFFF000000001FFFFFFC00000FFFFF00007FFF80007FFE000FFF8007FF800FFE007FE007FE00FF803FE01FF00FF00FF01FE03F807F01F80FE03F01F81FC0FC0FC0FC0F81F83F03E07C1F83E0FC1F07C1F07C1E0F83E1F0783C1E0F0783C1E1F0F0F8787C3C3C3C3C3C3C3C3C3C3C387878F0F1E1E3C3878F1E1C3870E1E3870E1C38F1E3870E3C71E3871C38E1C71E38E1C71C78E38E3871C71C71C71C71C71C71C71C71C638E38E39C71C738E39C71CE38E71C638C71CE39C738E71CE39C638C738C718E718E718E718E718C738C739C639CE31CE718C739C631CE718C639CE718C639CE718C639CE738C6318E739CE318C631CE739C6318;

fiftyfivenm_ram_block ram_block1a3(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a3_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a3.clk0_core_clock_enable = "ena0";
defparam ram_block1a3.clk0_input_clock_enable = "ena0";
defparam ram_block1a3.clk0_output_clock_enable = "ena0";
defparam ram_block1a3.data_interleave_offset_in_bits = 1;
defparam ram_block1a3.data_interleave_width_in_bits = 1;
defparam ram_block1a3.init_file = "nco_nco_ii_0_sin.hex";
defparam ram_block1a3.init_file_layout = "port_a";
defparam ram_block1a3.logical_ram_name = "nco_nco_ii_0:nco_ii_0|asj_nco_as_m_cen:ux0120|altsyncram:altsyncram_component0|altsyncram_4u81:auto_generated|ALTSYNCRAM";
defparam ram_block1a3.operation_mode = "rom";
defparam ram_block1a3.port_a_address_clear = "none";
defparam ram_block1a3.port_a_address_width = 13;
defparam ram_block1a3.port_a_data_out_clear = "none";
defparam ram_block1a3.port_a_data_out_clock = "clock0";
defparam ram_block1a3.port_a_data_width = 1;
defparam ram_block1a3.port_a_first_address = 0;
defparam ram_block1a3.port_a_first_bit_number = 3;
defparam ram_block1a3.port_a_last_address = 8191;
defparam ram_block1a3.port_a_logical_ram_depth = 8192;
defparam ram_block1a3.port_a_logical_ram_width = 12;
defparam ram_block1a3.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a3.ram_block_type = "auto";
defparam ram_block1a3.mem_init3 = 2048'hF83E0F83E07C1F07C1F07E0F83E0F83E07C1F07C1F03E0F83E0FC1F07C1F83E0F81F07C1F83E0FC1F07E0F81F07C0F83F07C0F83F07E0F81F03E0FC1F83F07E0FC1F83F03E07C0FC1F81F03F07E07E0FC0FC1F81F81F81F81F81F01F81F81F81F81F80FC0FC07E07F03F01F80FC07E03F01FC0FE03F81FC07F01FC07F01FC07F00FE03FC07F00FE01FE03FC03FC03FC03FC03FC03FE01FF00FF807FC01FF007FC00FF803FF003FE007FE003FF003FF800FFE003FF8007FF8007FF8007FFC001FFF0003FFF0001FFFC0007FFF80003FFFE00007FFFF00000FFFFFC000007FFFFFC0000003FFFFFFFC000000000FFFFFFFFFFFFF00000000000000000000000000;
defparam ram_block1a3.mem_init2 = 2048'h00000000000000000000000001FFFFFFFFFFFFE0000000007FFFFFFF80000007FFFFFC000007FFFFE00001FFFFC0000FFFF80003FFFC0007FFF0001FFF8001FFF0007FFC003FFC003FFC003FF800FFE003FF801FF800FFC00FF801FF803FE007FC01FF007FC03FE01FF00FF807F807F807F807F807F80FF00FE01FC07F80FE01FC07F01FC07F01FC07F03F80FE07F01F80FC07E03F01F81FC0FC07E07E03F03F03F03F03F01F03F03F03F03F03F07E07E0FC0FC1F81F03F07E07C0F81F83F07E0FC1F83F07E0F81F03E0FC1F83E07C1F83E07C1F03E0FC1F07E0F83F07C1F03E0F83F07C1F07E0F83E0F81F07C1F07C0F83E0F83E0FC1F07C1F07C0F83E0F83E;
defparam ram_block1a3.mem_init1 = 2048'h0F83F07C1F07C1F07E0F83E0F83E07C1F07C1F03E0F83E0FC1F07C1F03E0F83F07C1F03E0F81F07C0F83E07C1F03E0FC1F03E0FC1F03E07C1F83F07E0FC1F83F07E0FC1F83F03E07E0FC0F81F83F03F07E07E07C0FC0FC0FC0FC0FC0FC0FC0FC0FC07E07E03F03F01F80FC0FE07F03F80FC07E03F80FE07F01FC07F01FC07F00FE03F807F00FE01FC03F807F807F807F807F807F803FC01FE00FF007FC01FF007FC00FF801FF003FF003FF001FF800FFC007FF800FFE001FFE001FFF000FFF8001FFF0003FFF8000FFFE0001FFFF00007FFFE00003FFFFC00001FFFFFC000001FFFFFFC00000003FFFFFFFFE000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF;
defparam ram_block1a3.mem_init0 = 2048'hFFFFFFFFFFFFFFFFFFFFFFFFFFFE000000000000FFFFFFFFF800000007FFFFFF0000007FFFFF000007FFFF80000FFFFC0001FFFF0000FFFE0003FFF8001FFF0003FFE001FFF000FFF000FFE003FFC007FE003FF001FF801FF801FF003FE007FC01FF007FC01FE00FF007F803FC03FC03FC03FC03FC03F807F00FE01FC03F80FE01FC07F01FC07F01FC0FE03F80FC07E03F81FC0FE07E03F01F81F80FC0FC07E07E07E07E07E07E07E07E07E07C0FC0FC1F81F83F03E07E0FC0F81F83F07E0FC1F83F07E0FC1F83F07C0F81F07E0F81F07E0F81F07C0F83E07C1F03E0F81F07C1F83E0F81F07C1F07E0F83E0F81F07C1F07C0F83E0F83E0FC1F07C1F07C1F83E0;

fiftyfivenm_ram_block ram_block1a4(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a4_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a4.clk0_core_clock_enable = "ena0";
defparam ram_block1a4.clk0_input_clock_enable = "ena0";
defparam ram_block1a4.clk0_output_clock_enable = "ena0";
defparam ram_block1a4.data_interleave_offset_in_bits = 1;
defparam ram_block1a4.data_interleave_width_in_bits = 1;
defparam ram_block1a4.init_file = "nco_nco_ii_0_sin.hex";
defparam ram_block1a4.init_file_layout = "port_a";
defparam ram_block1a4.logical_ram_name = "nco_nco_ii_0:nco_ii_0|asj_nco_as_m_cen:ux0120|altsyncram:altsyncram_component0|altsyncram_4u81:auto_generated|ALTSYNCRAM";
defparam ram_block1a4.operation_mode = "rom";
defparam ram_block1a4.port_a_address_clear = "none";
defparam ram_block1a4.port_a_address_width = 13;
defparam ram_block1a4.port_a_data_out_clear = "none";
defparam ram_block1a4.port_a_data_out_clock = "clock0";
defparam ram_block1a4.port_a_data_width = 1;
defparam ram_block1a4.port_a_first_address = 0;
defparam ram_block1a4.port_a_first_bit_number = 4;
defparam ram_block1a4.port_a_last_address = 8191;
defparam ram_block1a4.port_a_logical_ram_depth = 8192;
defparam ram_block1a4.port_a_logical_ram_width = 12;
defparam ram_block1a4.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a4.ram_block_type = "auto";
defparam ram_block1a4.mem_init3 = 2048'hFFC00FFC007FE007FE007FF003FF003FF801FF801FFC00FFC00FFE007FE003FF001FF801FFC00FFE007FF001FF800FFC007FF003FF800FFE003FF001FFC007FF001FFC003FF800FFE001FFC007FF800FFF001FFE001FFE001FFE001FFE001FFE001FFF000FFF8007FFC001FFF0007FFC001FFF0003FFE0007FFE0007FFE0007FFF0003FFF8000FFFE0003FFFC0003FFFC0003FFFC0001FFFF00007FFFE00007FFFF00003FFFFC00007FFFFC00003FFFFF000003FFFFF8000007FFFFF8000001FFFFFFC0000001FFFFFFF800000003FFFFFFFF8000000000FFFFFFFFFFF80000000000003FFFFFFFFFFFFFFFFF000000000000000000000000000000000000000;
defparam ram_block1a4.mem_init2 = 2048'h000000000000000000000000000000000000001FFFFFFFFFFFFFFFFF80000000000003FFFFFFFFFFE0000000003FFFFFFFF800000003FFFFFFF00000007FFFFFF0000003FFFFFC000003FFFFF800001FFFFF800007FFFFC00007FFFF80001FFFFC0000FFFFC0001FFFF00007FFF80007FFF80007FFF8000FFFE0003FFF8001FFFC000FFFC000FFFC000FFF8001FFF0007FFC001FFF0007FFC003FFE001FFF000FFF000FFF000FFF000FFF000FFF001FFE003FFC007FF000FFE003FF8007FF001FFC007FF001FF800FFE003FF801FFC007FE003FF001FFC00FFE007FF003FF001FF800FFC00FFE007FE007FF003FF003FF801FF801FFC00FFC00FFC007FE007FE;
defparam ram_block1a4.mem_init1 = 2048'h007FF003FF003FF001FF801FF801FFC00FFC00FFE007FE003FF003FF001FF800FFC00FFE007FF003FF801FFC00FFE003FF001FFC00FFE003FF800FFE003FF800FFE003FF800FFE001FFC007FF800FFF001FFE003FFC003FFC003FFC003FFC003FFC001FFE000FFF0007FFC001FFF0007FFC001FFF8001FFF0003FFF0003FFF0001FFF8000FFFE0003FFF80007FFF80007FFF80007FFFC0001FFFF00003FFFF00003FFFF80000FFFFF00000FFFFF800003FFFFF800001FFFFFE000000FFFFFF8000000FFFFFFF80000001FFFFFFFF000000001FFFFFFFFFC00000000003FFFFFFFFFFFFC00000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
defparam ram_block1a4.mem_init0 = 2048'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000007FFFFFFFFFFFF800000000007FFFFFFFFF000000001FFFFFFFF00000003FFFFFFE0000003FFFFFE000000FFFFFF000003FFFFF800003FFFFE00001FFFFE00003FFFF80001FFFF80001FFFF00007FFFC0003FFFC0003FFFC0003FFF8000FFFE0003FFF0001FFF8001FFF8001FFF0003FFF0007FFC001FFF0007FFC001FFE000FFF0007FF8007FF8007FF8007FF8007FF800FFF001FFE003FFC007FF000FFE003FF800FFE003FF800FFE003FF800FFE007FF001FF800FFE007FF003FF801FFC00FFE007FE003FF001FF801FF800FFC00FFE007FE007FF003FF003FF001FF801FF801FFC00;

fiftyfivenm_ram_block ram_block1a5(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a5_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a5.clk0_core_clock_enable = "ena0";
defparam ram_block1a5.clk0_input_clock_enable = "ena0";
defparam ram_block1a5.clk0_output_clock_enable = "ena0";
defparam ram_block1a5.data_interleave_offset_in_bits = 1;
defparam ram_block1a5.data_interleave_width_in_bits = 1;
defparam ram_block1a5.init_file = "nco_nco_ii_0_sin.hex";
defparam ram_block1a5.init_file_layout = "port_a";
defparam ram_block1a5.logical_ram_name = "nco_nco_ii_0:nco_ii_0|asj_nco_as_m_cen:ux0120|altsyncram:altsyncram_component0|altsyncram_4u81:auto_generated|ALTSYNCRAM";
defparam ram_block1a5.operation_mode = "rom";
defparam ram_block1a5.port_a_address_clear = "none";
defparam ram_block1a5.port_a_address_width = 13;
defparam ram_block1a5.port_a_data_out_clear = "none";
defparam ram_block1a5.port_a_data_out_clock = "clock0";
defparam ram_block1a5.port_a_data_width = 1;
defparam ram_block1a5.port_a_first_address = 0;
defparam ram_block1a5.port_a_first_bit_number = 5;
defparam ram_block1a5.port_a_last_address = 8191;
defparam ram_block1a5.port_a_logical_ram_depth = 8192;
defparam ram_block1a5.port_a_logical_ram_width = 12;
defparam ram_block1a5.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a5.ram_block_type = "auto";
defparam ram_block1a5.mem_init3 = 2048'hFFFFF000007FFFF800007FFFFC00003FFFFE00001FFFFF00000FFFFF800003FFFFE00001FFFFF000007FFFFE00000FFFFF800003FFFFF000003FFFFE000007FFFFE000003FFFFF000001FFFFF800000FFFFFE000001FFFFFE000001FFFFFE000001FFFFFF0000007FFFFFE0000007FFFFFE0000003FFFFFF80000007FFFFFF80000003FFFFFFF00000003FFFFFFFC00000003FFFFFFFE000000007FFFFFFFF8000000003FFFFFFFFF80000000003FFFFFFFFFFC000000000007FFFFFFFFFFFE00000000000001FFFFFFFFFFFFFFFC000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFC00000000000000000000000000000000000000000000000000000000;
defparam ram_block1a5.mem_init2 = 2048'h000000000000000000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFE0000000000000000007FFFFFFFFFFFFFFF00000000000000FFFFFFFFFFFFC000000000007FFFFFFFFFF80000000003FFFFFFFFF8000000003FFFFFFFFC00000000FFFFFFFF800000007FFFFFFF80000001FFFFFFF80000003FFFFFFC0000003FFFFFF8000000FFFFFFC000000FFFFFFC000001FFFFFF000000FFFFFF000000FFFFFF000000FFFFFE000003FFFFF000001FFFFF800000FFFFFC00000FFFFF800001FFFFF800003FFFFE00000FFFFFC00001FFFFF00000FFFFF800003FFFFE00001FFFFF00000FFFFF800007FFFFC00003FFFFC00001FFFFE;
defparam ram_block1a5.mem_init1 = 2048'h00000FFFFF00000FFFFF800007FFFFC00003FFFFE00001FFFFF00000FFFFF800003FFFFE00000FFFFF800003FFFFE00000FFFFFC00001FFFFF800001FFFFF800001FFFFF800001FFFFFC000007FFFFF000001FFFFFC000003FFFFFC000003FFFFFC000001FFFFFF0000003FFFFFF0000003FFFFFF8000000FFFFFFF0000000FFFFFFF80000001FFFFFFF800000007FFFFFFF800000003FFFFFFFF000000000FFFFFFFFF8000000000FFFFFFFFFF800000000007FFFFFFFFFFE0000000000007FFFFFFFFFFFFF8000000000000000FFFFFFFFFFFFFFFFFFC000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
defparam ram_block1a5.mem_init0 = 2048'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000000000000000000000007FFFFFFFFFFFFFFFFFE0000000000000003FFFFFFFFFFFFFC000000000000FFFFFFFFFFFC00000000003FFFFFFFFFE0000000003FFFFFFFFE000000001FFFFFFFF800000003FFFFFFFC00000003FFFFFFF00000003FFFFFFE0000001FFFFFFE0000003FFFFFF8000001FFFFFF8000001FFFFFF0000007FFFFF8000007FFFFF8000007FFFFF000001FFFFFC000007FFFFF000003FFFFF000003FFFFF000003FFFFF000007FFFFE00000FFFFF800003FFFFE00000FFFFF800003FFFFE00001FFFFF00000FFFFF800007FFFFC00003FFFFE00001FFFFE00000;

fiftyfivenm_ram_block ram_block1a6(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a6_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a6.clk0_core_clock_enable = "ena0";
defparam ram_block1a6.clk0_input_clock_enable = "ena0";
defparam ram_block1a6.clk0_output_clock_enable = "ena0";
defparam ram_block1a6.data_interleave_offset_in_bits = 1;
defparam ram_block1a6.data_interleave_width_in_bits = 1;
defparam ram_block1a6.init_file = "nco_nco_ii_0_sin.hex";
defparam ram_block1a6.init_file_layout = "port_a";
defparam ram_block1a6.logical_ram_name = "nco_nco_ii_0:nco_ii_0|asj_nco_as_m_cen:ux0120|altsyncram:altsyncram_component0|altsyncram_4u81:auto_generated|ALTSYNCRAM";
defparam ram_block1a6.operation_mode = "rom";
defparam ram_block1a6.port_a_address_clear = "none";
defparam ram_block1a6.port_a_address_width = 13;
defparam ram_block1a6.port_a_data_out_clear = "none";
defparam ram_block1a6.port_a_data_out_clock = "clock0";
defparam ram_block1a6.port_a_data_width = 1;
defparam ram_block1a6.port_a_first_address = 0;
defparam ram_block1a6.port_a_first_bit_number = 6;
defparam ram_block1a6.port_a_last_address = 8191;
defparam ram_block1a6.port_a_logical_ram_depth = 8192;
defparam ram_block1a6.port_a_logical_ram_width = 12;
defparam ram_block1a6.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a6.ram_block_type = "auto";
defparam ram_block1a6.mem_init3 = 2048'hFFFFFFFFFF80000000007FFFFFFFFFC0000000001FFFFFFFFFF00000000003FFFFFFFFFE00000000007FFFFFFFFFF00000000003FFFFFFFFFFC00000000007FFFFFFFFFFC00000000001FFFFFFFFFFF000000000001FFFFFFFFFFFE000000000001FFFFFFFFFFFF80000000000007FFFFFFFFFFFFC00000000000007FFFFFFFFFFFFFC000000000000003FFFFFFFFFFFFFFFC00000000000000007FFFFFFFFFFFFFFFFFC00000000000000000003FFFFFFFFFFFFFFFFFFFFFF800000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000000000000000000000000000000000000000000;
defparam ram_block1a6.mem_init2 = 2048'h000000000000000000000000000000000000000000000000000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFF800000000000000000007FFFFFFFFFFFFFFFFFC00000000000000007FFFFFFFFFFFFFFF8000000000000007FFFFFFFFFFFFFC00000000000007FFFFFFFFFFFFC0000000000003FFFFFFFFFFFF000000000000FFFFFFFFFFFF000000000001FFFFFFFFFFF000000000007FFFFFFFFFFC00000000007FFFFFFFFFF80000000001FFFFFFFFFFC0000000000FFFFFFFFFF80000000001FFFFFFFFFF00000000007FFFFFFFFFC0000000003FFFFFFFFFE;
defparam ram_block1a6.mem_init1 = 2048'h0000000000FFFFFFFFFF80000000003FFFFFFFFFE0000000000FFFFFFFFFF80000000001FFFFFFFFFF80000000001FFFFFFFFFFC00000000007FFFFFFFFFF800000000007FFFFFFFFFFC00000000000FFFFFFFFFFFC000000000003FFFFFFFFFFFC000000000000FFFFFFFFFFFFF00000000000007FFFFFFFFFFFFF000000000000007FFFFFFFFFFFFFF80000000000000007FFFFFFFFFFFFFFFF0000000000000000007FFFFFFFFFFFFFFFFFFF80000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFF80000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
defparam ram_block1a6.mem_init0 = 2048'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000003FFFFFFFFFFFFFFFFFFFC000000000000000001FFFFFFFFFFFFFFFFC0000000000000003FFFFFFFFFFFFFFC00000000000001FFFFFFFFFFFFFC0000000000001FFFFFFFFFFFFE0000000000007FFFFFFFFFFF8000000000007FFFFFFFFFFE000000000007FFFFFFFFFFC00000000003FFFFFFFFFFC00000000007FFFFFFFFFF00000000003FFFFFFFFFF00000000003FFFFFFFFFE0000000000FFFFFFFFFF80000000003FFFFFFFFFE0000000000;

fiftyfivenm_ram_block ram_block1a7(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a7_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a7.clk0_core_clock_enable = "ena0";
defparam ram_block1a7.clk0_input_clock_enable = "ena0";
defparam ram_block1a7.clk0_output_clock_enable = "ena0";
defparam ram_block1a7.data_interleave_offset_in_bits = 1;
defparam ram_block1a7.data_interleave_width_in_bits = 1;
defparam ram_block1a7.init_file = "nco_nco_ii_0_sin.hex";
defparam ram_block1a7.init_file_layout = "port_a";
defparam ram_block1a7.logical_ram_name = "nco_nco_ii_0:nco_ii_0|asj_nco_as_m_cen:ux0120|altsyncram:altsyncram_component0|altsyncram_4u81:auto_generated|ALTSYNCRAM";
defparam ram_block1a7.operation_mode = "rom";
defparam ram_block1a7.port_a_address_clear = "none";
defparam ram_block1a7.port_a_address_width = 13;
defparam ram_block1a7.port_a_data_out_clear = "none";
defparam ram_block1a7.port_a_data_out_clock = "clock0";
defparam ram_block1a7.port_a_data_width = 1;
defparam ram_block1a7.port_a_first_address = 0;
defparam ram_block1a7.port_a_first_bit_number = 7;
defparam ram_block1a7.port_a_last_address = 8191;
defparam ram_block1a7.port_a_logical_ram_depth = 8192;
defparam ram_block1a7.port_a_logical_ram_width = 12;
defparam ram_block1a7.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a7.ram_block_type = "auto";
defparam ram_block1a7.mem_init3 = 2048'hFFFFFFFFFFFFFFFFFFFF800000000000000000001FFFFFFFFFFFFFFFFFFFFC000000000000000000007FFFFFFFFFFFFFFFFFFFFC0000000000000000000007FFFFFFFFFFFFFFFFFFFFFE00000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFE00000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFF800000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
defparam ram_block1a7.mem_init2 = 2048'h0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFC0000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000FFFFFFFFFFFFFFFFFFFFFFC0000000000000000000007FFFFFFFFFFFFFFFFFFFFC000000000000000000007FFFFFFFFFFFFFFFFFFFF000000000000000000003FFFFFFFFFFFFFFFFFFFE;
defparam ram_block1a7.mem_init1 = 2048'h000000000000000000007FFFFFFFFFFFFFFFFFFFE000000000000000000007FFFFFFFFFFFFFFFFFFFF8000000000000000000003FFFFFFFFFFFFFFFFFFFFF80000000000000000000003FFFFFFFFFFFFFFFFFFFFFFC000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80000000000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
defparam ram_block1a7.mem_init0 = 2048'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFE000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFF8000000000000000000000007FFFFFFFFFFFFFFFFFFFFFF80000000000000000000003FFFFFFFFFFFFFFFFFFFFF8000000000000000000003FFFFFFFFFFFFFFFFFFFFC00000000000000000000FFFFFFFFFFFFFFFFFFFFC00000000000000000000;

fiftyfivenm_ram_block ram_block1a8(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a8_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a8.clk0_core_clock_enable = "ena0";
defparam ram_block1a8.clk0_input_clock_enable = "ena0";
defparam ram_block1a8.clk0_output_clock_enable = "ena0";
defparam ram_block1a8.data_interleave_offset_in_bits = 1;
defparam ram_block1a8.data_interleave_width_in_bits = 1;
defparam ram_block1a8.init_file = "nco_nco_ii_0_sin.hex";
defparam ram_block1a8.init_file_layout = "port_a";
defparam ram_block1a8.logical_ram_name = "nco_nco_ii_0:nco_ii_0|asj_nco_as_m_cen:ux0120|altsyncram:altsyncram_component0|altsyncram_4u81:auto_generated|ALTSYNCRAM";
defparam ram_block1a8.operation_mode = "rom";
defparam ram_block1a8.port_a_address_clear = "none";
defparam ram_block1a8.port_a_address_width = 13;
defparam ram_block1a8.port_a_data_out_clear = "none";
defparam ram_block1a8.port_a_data_out_clock = "clock0";
defparam ram_block1a8.port_a_data_width = 1;
defparam ram_block1a8.port_a_first_address = 0;
defparam ram_block1a8.port_a_first_bit_number = 8;
defparam ram_block1a8.port_a_last_address = 8191;
defparam ram_block1a8.port_a_logical_ram_depth = 8192;
defparam ram_block1a8.port_a_logical_ram_width = 12;
defparam ram_block1a8.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a8.ram_block_type = "auto";
defparam ram_block1a8.mem_init3 = 2048'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000000000000000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
defparam ram_block1a8.mem_init2 = 2048'h000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE;
defparam ram_block1a8.mem_init1 = 2048'h00000000000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000000000000000000000000000000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
defparam ram_block1a8.mem_init0 = 2048'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00000000000000000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00000000000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000;

fiftyfivenm_ram_block ram_block1a9(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a9_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a9.clk0_core_clock_enable = "ena0";
defparam ram_block1a9.clk0_input_clock_enable = "ena0";
defparam ram_block1a9.clk0_output_clock_enable = "ena0";
defparam ram_block1a9.data_interleave_offset_in_bits = 1;
defparam ram_block1a9.data_interleave_width_in_bits = 1;
defparam ram_block1a9.init_file = "nco_nco_ii_0_sin.hex";
defparam ram_block1a9.init_file_layout = "port_a";
defparam ram_block1a9.logical_ram_name = "nco_nco_ii_0:nco_ii_0|asj_nco_as_m_cen:ux0120|altsyncram:altsyncram_component0|altsyncram_4u81:auto_generated|ALTSYNCRAM";
defparam ram_block1a9.operation_mode = "rom";
defparam ram_block1a9.port_a_address_clear = "none";
defparam ram_block1a9.port_a_address_width = 13;
defparam ram_block1a9.port_a_data_out_clear = "none";
defparam ram_block1a9.port_a_data_out_clock = "clock0";
defparam ram_block1a9.port_a_data_width = 1;
defparam ram_block1a9.port_a_first_address = 0;
defparam ram_block1a9.port_a_first_bit_number = 9;
defparam ram_block1a9.port_a_last_address = 8191;
defparam ram_block1a9.port_a_logical_ram_depth = 8192;
defparam ram_block1a9.port_a_logical_ram_width = 12;
defparam ram_block1a9.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a9.ram_block_type = "auto";
defparam ram_block1a9.mem_init3 = 2048'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80000000000000000000000000000000000000000000000000000000000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
defparam ram_block1a9.mem_init2 = 2048'h00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE;
defparam ram_block1a9.mem_init1 = 2048'h00000000000000000000000000000000000000000000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
defparam ram_block1a9.mem_init0 = 2048'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000000000000000000000000000000000000000000000000000000000000000000000000000000000;

fiftyfivenm_ram_block ram_block1a10(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a10_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a10.clk0_core_clock_enable = "ena0";
defparam ram_block1a10.clk0_input_clock_enable = "ena0";
defparam ram_block1a10.clk0_output_clock_enable = "ena0";
defparam ram_block1a10.data_interleave_offset_in_bits = 1;
defparam ram_block1a10.data_interleave_width_in_bits = 1;
defparam ram_block1a10.init_file = "nco_nco_ii_0_sin.hex";
defparam ram_block1a10.init_file_layout = "port_a";
defparam ram_block1a10.logical_ram_name = "nco_nco_ii_0:nco_ii_0|asj_nco_as_m_cen:ux0120|altsyncram:altsyncram_component0|altsyncram_4u81:auto_generated|ALTSYNCRAM";
defparam ram_block1a10.operation_mode = "rom";
defparam ram_block1a10.port_a_address_clear = "none";
defparam ram_block1a10.port_a_address_width = 13;
defparam ram_block1a10.port_a_data_out_clear = "none";
defparam ram_block1a10.port_a_data_out_clock = "clock0";
defparam ram_block1a10.port_a_data_width = 1;
defparam ram_block1a10.port_a_first_address = 0;
defparam ram_block1a10.port_a_first_bit_number = 10;
defparam ram_block1a10.port_a_last_address = 8191;
defparam ram_block1a10.port_a_logical_ram_depth = 8192;
defparam ram_block1a10.port_a_logical_ram_width = 12;
defparam ram_block1a10.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a10.ram_block_type = "auto";
defparam ram_block1a10.mem_init3 = 2048'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
defparam ram_block1a10.mem_init2 = 2048'h00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE;
defparam ram_block1a10.mem_init1 = 2048'h000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
defparam ram_block1a10.mem_init0 = 2048'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;

fiftyfivenm_ram_block ram_block1a11(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a11_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a11.clk0_core_clock_enable = "ena0";
defparam ram_block1a11.clk0_input_clock_enable = "ena0";
defparam ram_block1a11.clk0_output_clock_enable = "ena0";
defparam ram_block1a11.data_interleave_offset_in_bits = 1;
defparam ram_block1a11.data_interleave_width_in_bits = 1;
defparam ram_block1a11.init_file = "nco_nco_ii_0_sin.hex";
defparam ram_block1a11.init_file_layout = "port_a";
defparam ram_block1a11.logical_ram_name = "nco_nco_ii_0:nco_ii_0|asj_nco_as_m_cen:ux0120|altsyncram:altsyncram_component0|altsyncram_4u81:auto_generated|ALTSYNCRAM";
defparam ram_block1a11.operation_mode = "rom";
defparam ram_block1a11.port_a_address_clear = "none";
defparam ram_block1a11.port_a_address_width = 13;
defparam ram_block1a11.port_a_data_out_clear = "none";
defparam ram_block1a11.port_a_data_out_clock = "clock0";
defparam ram_block1a11.port_a_data_width = 1;
defparam ram_block1a11.port_a_first_address = 0;
defparam ram_block1a11.port_a_first_bit_number = 11;
defparam ram_block1a11.port_a_last_address = 8191;
defparam ram_block1a11.port_a_logical_ram_depth = 8192;
defparam ram_block1a11.port_a_logical_ram_width = 12;
defparam ram_block1a11.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a11.ram_block_type = "auto";
defparam ram_block1a11.mem_init3 = 2048'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
defparam ram_block1a11.mem_init2 = 2048'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE;
defparam ram_block1a11.mem_init1 = 2048'h00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
defparam ram_block1a11.mem_init0 = 2048'h00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;

endmodule

module nco_asj_nco_as_m_cen_1 (
	q_a_0,
	q_a_1,
	q_a_2,
	q_a_3,
	q_a_4,
	q_a_5,
	q_a_6,
	q_a_7,
	q_a_8,
	q_a_9,
	q_a_10,
	q_a_11,
	rom_add_0,
	rom_add_1,
	rom_add_2,
	rom_add_3,
	rom_add_4,
	rom_add_5,
	rom_add_6,
	rom_add_7,
	rom_add_8,
	rom_add_9,
	rom_add_10,
	rom_add_11,
	rom_add_12,
	clk,
	clken)/* synthesis synthesis_greybox=1 */;
output 	q_a_0;
output 	q_a_1;
output 	q_a_2;
output 	q_a_3;
output 	q_a_4;
output 	q_a_5;
output 	q_a_6;
output 	q_a_7;
output 	q_a_8;
output 	q_a_9;
output 	q_a_10;
output 	q_a_11;
input 	rom_add_0;
input 	rom_add_1;
input 	rom_add_2;
input 	rom_add_3;
input 	rom_add_4;
input 	rom_add_5;
input 	rom_add_6;
input 	rom_add_7;
input 	rom_add_8;
input 	rom_add_9;
input 	rom_add_10;
input 	rom_add_11;
input 	rom_add_12;
input 	clk;
input 	clken;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



nco_altsyncram_2 altsyncram_component0(
	.q_a({q_a_11,q_a_10,q_a_9,q_a_8,q_a_7,q_a_6,q_a_5,q_a_4,q_a_3,q_a_2,q_a_1,q_a_0}),
	.address_a({rom_add_12,rom_add_11,rom_add_10,rom_add_9,rom_add_8,rom_add_7,rom_add_6,rom_add_5,rom_add_4,rom_add_3,rom_add_2,rom_add_1,rom_add_0}),
	.clock0(clk),
	.clocken0(clken));

endmodule

module nco_altsyncram_2 (
	q_a,
	address_a,
	clock0,
	clocken0)/* synthesis synthesis_greybox=1 */;
output 	[11:0] q_a;
input 	[12:0] address_a;
input 	clock0;
input 	clocken0;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



nco_altsyncram_vt81 auto_generated(
	.q_a({q_a[11],q_a[10],q_a[9],q_a[8],q_a[7],q_a[6],q_a[5],q_a[4],q_a[3],q_a[2],q_a[1],q_a[0]}),
	.address_a({address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.clock0(clock0),
	.clocken0(clocken0));

endmodule

module nco_altsyncram_vt81 (
	q_a,
	address_a,
	clock0,
	clocken0)/* synthesis synthesis_greybox=1 */;
output 	[11:0] q_a;
input 	[12:0] address_a;
input 	clock0;
input 	clocken0;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;


wire [143:0] ram_block1a0_PORTADATAOUT_bus;
wire [143:0] ram_block1a1_PORTADATAOUT_bus;
wire [143:0] ram_block1a2_PORTADATAOUT_bus;
wire [143:0] ram_block1a3_PORTADATAOUT_bus;
wire [143:0] ram_block1a4_PORTADATAOUT_bus;
wire [143:0] ram_block1a5_PORTADATAOUT_bus;
wire [143:0] ram_block1a6_PORTADATAOUT_bus;
wire [143:0] ram_block1a7_PORTADATAOUT_bus;
wire [143:0] ram_block1a8_PORTADATAOUT_bus;
wire [143:0] ram_block1a9_PORTADATAOUT_bus;
wire [143:0] ram_block1a10_PORTADATAOUT_bus;
wire [143:0] ram_block1a11_PORTADATAOUT_bus;

assign q_a[0] = ram_block1a0_PORTADATAOUT_bus[0];

assign q_a[1] = ram_block1a1_PORTADATAOUT_bus[0];

assign q_a[2] = ram_block1a2_PORTADATAOUT_bus[0];

assign q_a[3] = ram_block1a3_PORTADATAOUT_bus[0];

assign q_a[4] = ram_block1a4_PORTADATAOUT_bus[0];

assign q_a[5] = ram_block1a5_PORTADATAOUT_bus[0];

assign q_a[6] = ram_block1a6_PORTADATAOUT_bus[0];

assign q_a[7] = ram_block1a7_PORTADATAOUT_bus[0];

assign q_a[8] = ram_block1a8_PORTADATAOUT_bus[0];

assign q_a[9] = ram_block1a9_PORTADATAOUT_bus[0];

assign q_a[10] = ram_block1a10_PORTADATAOUT_bus[0];

assign q_a[11] = ram_block1a11_PORTADATAOUT_bus[0];

fiftyfivenm_ram_block ram_block1a0(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a0_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a0.clk0_core_clock_enable = "ena0";
defparam ram_block1a0.clk0_input_clock_enable = "ena0";
defparam ram_block1a0.clk0_output_clock_enable = "ena0";
defparam ram_block1a0.data_interleave_offset_in_bits = 1;
defparam ram_block1a0.data_interleave_width_in_bits = 1;
defparam ram_block1a0.init_file = "nco_nco_ii_0_cos.hex";
defparam ram_block1a0.init_file_layout = "port_a";
defparam ram_block1a0.logical_ram_name = "nco_nco_ii_0:nco_ii_0|asj_nco_as_m_cen:ux0121|altsyncram:altsyncram_component0|altsyncram_vt81:auto_generated|ALTSYNCRAM";
defparam ram_block1a0.operation_mode = "rom";
defparam ram_block1a0.port_a_address_clear = "none";
defparam ram_block1a0.port_a_address_width = 13;
defparam ram_block1a0.port_a_data_out_clear = "none";
defparam ram_block1a0.port_a_data_out_clock = "clock0";
defparam ram_block1a0.port_a_data_width = 1;
defparam ram_block1a0.port_a_first_address = 0;
defparam ram_block1a0.port_a_first_bit_number = 0;
defparam ram_block1a0.port_a_last_address = 8191;
defparam ram_block1a0.port_a_logical_ram_depth = 8192;
defparam ram_block1a0.port_a_logical_ram_width = 12;
defparam ram_block1a0.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a0.ram_block_type = "auto";
defparam ram_block1a0.mem_init3 = 2048'hFFFFFFF000007FFF000FFC01FE01FC07F03F07E0F83E0F078783C787870E1C78E3C71C71C638E718E739CE7319CC663339998CCCCCCCCC9999B33664C99366C9B26D926DB2492492492496DA4B692D25A5A5A52D294B5AD6B5295A95A952A55AB55AAD54AAD556AAAD55552AAAAAAAAAAAAAAAAAAAAB55555AAAB555AAB556AB55AA55AB54AD5A952B5A95AD6A5296B5AD29694B4B4B4B4B4B696D2DA4B6D24B6DA4924925B64924924DB6C936D926C93649B26C9B364D9B264C993266CD99B32664CCD999333326666664CCCCCCCCCCCCCCCCC66666667333339999CCCE666333999CCC6633399CCE673399CCE673198CE63319CC663398CE63399CC67319CC;
defparam ram_block1a0.mem_init2 = 2048'h67319CC673398CE63398CC673198CE63319CCE673399CCE6733998CC667333998CCCE667333399999CCCCCCCC666666666666666664CCCCCC999993336664CC99B3366CC993264C9B364D9B26C9B24D926C936D926DB64924924DB4924924B6DA496DA4B696D2DA5A5A5A5A5A52D296B5AD294AD6B52B5A952B56A55AB54AB55AAD55AAB555AAAB55555AAAAAAAAAAAAAAAAAAAAA955556AAAD556AA556AB55AB54A952B52B5295AD6B5A529694B4B4B49692DA4B6D249249249249B6C936C9B26CD93264CD99B33326666666663333998CC67319CE739CE31CE38C71C71C78E3C70E1C3C3C783C3C1E0F83E0FC1F81FC07F00FF007FE001FFFC00001FFFFFFF;
defparam ram_block1a0.mem_init1 = 2048'hFFFFFFF000007FFF000FFC01FE01FC07F03F07E0F83E0F078783C787870E1C78E3C71C71C638E718E739CE7319CC663339998CCCCCCCCC9999B33664C99366C9B26D926DB2492492492496DA4B692D25A5A5A52D294B5AD6B5295A95A952A55AB55AAD54AAD556AAAD55552AAAAAAAAAAAAAAAAAAAAB55555AAAB555AAB556AB55AA55AB54AD5A952B5A95AD6A5296B5AD29694B4B4B4B4B4B696D2DA4B6D24B6DA4924925B64924924DB6C936D926C93649B26C9B364D9B264C993266CD99B32664CCD999333326666664CCCCCCCCCCCCCCCCC66666667333339999CCCE666333999CCC6633399CCE673399CCE673198CE63319CC663398CE63399CC67319CC;
defparam ram_block1a0.mem_init0 = 2048'h67319CC673398CE63398CC673198CE63319CCE673399CCE6733998CC667333998CCCE667333399999CCCCCCCC666666666666666664CCCCCC999993336664CC99B3366CC993264C9B364D9B26C9B24D926C936D926DB64924924DB4924924B6DA496DA4B696D2DA5A5A5A5A5A52D296B5AD294AD6B52B5A952B56A55AB54AB55AAD55AAB555AAAB55555AAAAAAAAAAAAAAAAAAAAA955556AAAD556AA556AB55AB54A952B52B5295AD6B5A529694B4B4B49692DA4B6D249249249249B6C936C9B26CD93264CD99B33326666666663333998CC67319CE739CE31CE38C71C71C78E3C70E1C3C3C783C3C1E0F83E0FC1F81FC07F00FF007FE001FFFC00001FFFFFFF;

fiftyfivenm_ram_block ram_block1a1(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a1_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a1.clk0_core_clock_enable = "ena0";
defparam ram_block1a1.clk0_input_clock_enable = "ena0";
defparam ram_block1a1.clk0_output_clock_enable = "ena0";
defparam ram_block1a1.data_interleave_offset_in_bits = 1;
defparam ram_block1a1.data_interleave_width_in_bits = 1;
defparam ram_block1a1.init_file = "nco_nco_ii_0_cos.hex";
defparam ram_block1a1.init_file_layout = "port_a";
defparam ram_block1a1.logical_ram_name = "nco_nco_ii_0:nco_ii_0|asj_nco_as_m_cen:ux0121|altsyncram:altsyncram_component0|altsyncram_vt81:auto_generated|ALTSYNCRAM";
defparam ram_block1a1.operation_mode = "rom";
defparam ram_block1a1.port_a_address_clear = "none";
defparam ram_block1a1.port_a_address_width = 13;
defparam ram_block1a1.port_a_data_out_clear = "none";
defparam ram_block1a1.port_a_data_out_clock = "clock0";
defparam ram_block1a1.port_a_data_width = 1;
defparam ram_block1a1.port_a_first_address = 0;
defparam ram_block1a1.port_a_first_bit_number = 1;
defparam ram_block1a1.port_a_last_address = 8191;
defparam ram_block1a1.port_a_logical_ram_depth = 8192;
defparam ram_block1a1.port_a_logical_ram_width = 12;
defparam ram_block1a1.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a1.ram_block_type = "auto";
defparam ram_block1a1.mem_init3 = 2048'hFFFFFFFFFFFF8000000FFFFE0001FFF8003FF800FFC00FF807FC07F807F01F80FC07E07E07C0F81F07C1F07C1E0F87C3C1E1F0F0F0F0F0E1E1C3C7870E1C78F1C38E1C71C38E38E38E38E71C738E31C639C639CE318C6318C6319CE6319CC663399CCE67331998CCCE6666333333333333333333333266666CCCD999332664CD993366CD99366CD9B26CD9364C9B24D9364DB26D926D926D924DB64936DB64924936DB6DB6DB6DB6DB6924925B6DB4925B6D24B6D25B692DB496D25B4B692D25B4B69692D25A5A4B4B4B4969696969696969696B4B4B4B5A5A5AD2D29694B4B5A52D29694B5A52D694B5A52D694B5A52D6B4A5AD694B5AD294B5AD296B5A5296;
defparam ram_block1a1.mem_init2 = 2048'hB5A5296B5A52D6B4A52D694A5AD294B5A5296B4A5AD296B4A5AD2D694B5A5AD2D696B4B5A5A52D2D296969696B4B4B4B4B4B4B4B4B6969696D2D2DA5A4B49692D25A4B692DA4B692DA496D24B6D2496DB4925B6DB492492492496D924924924936DB6C924DB64936C936C936C9B64DB26C9B26C9B264D93264D9B366CD993266CC999332666CCCD99999333333333333333333333199998CCCE66733998CC663398CE6339CC6319CE739C6318E738C738E71CE38C71C71C71C71C71C70E38F1C38F1E3C78F1E1C3C3C787878787C3C3E1F0F87C1E0F83E0FC1F03F07E07E07F03F80FE03FC07FC03FE00FFC00FFE001FFF8000FFFF800001FFFFFFFFE0000000;
defparam ram_block1a1.mem_init1 = 2048'h0000000FFFFFFFFF000003FFFE0003FFF000FFE007FE00FF807FC07F80FE03F81FC0FC0FC1F81F07E0F83E0F07C3E1F0F8787C3C3C3C3C787870F1E3C78F1E3871E38E1C71C71C71C71C71C638E71CE39C639CE318C739CE7318C67398CE63398CC6633399CCCE666333331999999999999999999999333336666CCC99933266CC993366CD9B364C99364C9B26C9B26C9B64DB26D926D926D924DB64926DB6D924924924936D24924924925B6DB4925B6D2496DA496D24B692DA4B692DA4B49692D25A4B4B69696D2D2D2DA5A5A5A5A5A5A5A5AD2D2D2D2969694B4B5A5AD2D696B4B5A52D696B4A5AD296B4A5AD294B5A5296B4A52D694A5AD694B5AD294B5A;
defparam ram_block1a1.mem_init0 = 2048'hD294B5AD296B5A5296B5A52D6B4A5AD694B5A52D694B5A52D694B5A52D29694B5A5A52D29696B4B4B5A5A5A5AD2D2D2D2D2D2D2D2D25A5A5A4B4B49692D2DA5B49692DA5B496D25B692DB496DA496DB4925B6DB492492DB6DB6DB6DB6DB6D924924DB6D924DB64936C936C936C9B64D93649B264D9366C9B366CD93366CD9933664CC9993336666CCCCC9999999999999999999998CCCCE666333199CCE673398CC67318CE7318C6318C6318E738C738C718E39C71CE38E38E38E3871C70E3871E3C70E1C3C7870F0E1E1E1E1E1F0F0787C3E0F07C1F07C1F03E07C0FC0FC07E03F01FC03FC07FC03FE007FE003FF8003FFF0000FFFFE0000003FFFFFFFFFFFF;

fiftyfivenm_ram_block ram_block1a2(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a2_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a2.clk0_core_clock_enable = "ena0";
defparam ram_block1a2.clk0_input_clock_enable = "ena0";
defparam ram_block1a2.clk0_output_clock_enable = "ena0";
defparam ram_block1a2.data_interleave_offset_in_bits = 1;
defparam ram_block1a2.data_interleave_width_in_bits = 1;
defparam ram_block1a2.init_file = "nco_nco_ii_0_cos.hex";
defparam ram_block1a2.init_file_layout = "port_a";
defparam ram_block1a2.logical_ram_name = "nco_nco_ii_0:nco_ii_0|asj_nco_as_m_cen:ux0121|altsyncram:altsyncram_component0|altsyncram_vt81:auto_generated|ALTSYNCRAM";
defparam ram_block1a2.operation_mode = "rom";
defparam ram_block1a2.port_a_address_clear = "none";
defparam ram_block1a2.port_a_address_width = 13;
defparam ram_block1a2.port_a_data_out_clear = "none";
defparam ram_block1a2.port_a_data_out_clock = "clock0";
defparam ram_block1a2.port_a_data_width = 1;
defparam ram_block1a2.port_a_first_address = 0;
defparam ram_block1a2.port_a_first_bit_number = 2;
defparam ram_block1a2.port_a_last_address = 8191;
defparam ram_block1a2.port_a_logical_ram_depth = 8192;
defparam ram_block1a2.port_a_logical_ram_width = 12;
defparam ram_block1a2.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a2.ram_block_type = "auto";
defparam ram_block1a2.mem_init3 = 2048'hFFFFFFFFFFFFFFFFFFF000000001FFFFFFC00000FFFFF00007FFF80007FFE000FFF8007FF800FFE007FE007FE00FF803FE01FF00FF00FF01FE03F807F01F80FE03F01F81FC0FC0FC0FC0F81F83F03E07C1F83E0FC1F07C1F07C1E0F83E1F0783C1E0F0783C1E1F0F0F8787C3C3C3C3C3C3C3C3C3C3C387878F0F1E1E3C3878F1E1C3870E1E3870E1C38F1E3870E3C71E3871C38E1C71E38E1C71C78E38E3871C71C71C71C71C71C71C71C71C638E38E39C71C738E39C71CE38E71C638C71CE39C738E71CE39C638C738C718E718E718E718E718C738C739C639CE31CE718C739C631CE718C639CE718C639CE718C639CE738C6318E739CE318C631CE739C6318;
defparam ram_block1a2.mem_init2 = 2048'hC639CE739C6318C739CE718C631CE739C6318C739CE318C739CE318E739C631CE718C739C639CE31CE718E718C738C738C738C738C718E718E31CE39C738E71CE39C738E31C738E31C718E38C71C718E38E39C71C71C71C71C718E1C71C71C71C71C70E38E3871C70E38F1C70E3871C38F1C38F1C3871E3C78E1C3870E1E3C78F0E1E3C3878F0F1E1E1E3C3C3C3C3C3C3C3C3C3C3E1E1E0F0F0787C3E1F0F87C3E0F07C3E0F83E1F07C1F83E0F83F07C0F81F03F07E07E07E07E07E07F03F01FC0FE03F80FE01FC03F807F807F803FC01FF007FE00FFC00FFE003FF8007FF8003FFF0003FFF80003FFFF00000FFFFFE0000000FFFFFFFFFE0000000000000000;
defparam ram_block1a2.mem_init1 = 2048'h0000000000000000FFFFFFFFFE0000000FFFFFE00001FFFF80003FFF8001FFF8003FFC003FF800FFE007FE00FFC01FF007F803FC03FC03F807F00FE03F80FE07F01F81FC0FC0FC0FC0FC0FC1F81F03E07C1F83E0F83F07C1F0F83E0F87C1E0F87C3E1F0F87C3C1E1E0F0F0F878787878787878787878F0F0F1E1E3C3878F0E1E3C78F0E1C3870E3C78F1C3871E3871E3871C38E1C71E38E1C71C38E38E1C71C71C71C71C70E31C71C71C71C71C738E38E31C71C638E31C718E39C718E39C738E71CE39C738E718E31CE31C639C639C639C639C631CE31CE718E738C739C631CE718C739CE318E739C6318E739C6318C739CE718C631CE739C6318C739CE738C6;
defparam ram_block1a2.mem_init0 = 2048'h318C739CE718C6318E739CE318C639CE738C631CE738C631CE738C631CE718C739C631CE718E738C739C639C631CE31CE31CE31CE31C639C638C738E71CE39C738E71C638C71CE38E71C738E39C71C738E38E38C71C71C71C71C71C71C71C71C71C38E38E3C71C70E38F1C70E3871C38F1C78E1C38F1E3870E1C38F0E1C3870F1E3C3878F0F1E1E3C3C38787878787878787878787C3C3E1E1F0F0783C1E0F0783C1F0F83E0F07C1F07C1F07E0F83F07C0F81F83F03E07E07E07E07F03F01F80FE03F01FC03F80FF01FE01FE01FF00FF803FE00FFC00FFC00FFE003FFC003FFE000FFFC0003FFFC0001FFFFE000007FFFFFF000000001FFFFFFFFFFFFFFFFFFF;

fiftyfivenm_ram_block ram_block1a3(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a3_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a3.clk0_core_clock_enable = "ena0";
defparam ram_block1a3.clk0_input_clock_enable = "ena0";
defparam ram_block1a3.clk0_output_clock_enable = "ena0";
defparam ram_block1a3.data_interleave_offset_in_bits = 1;
defparam ram_block1a3.data_interleave_width_in_bits = 1;
defparam ram_block1a3.init_file = "nco_nco_ii_0_cos.hex";
defparam ram_block1a3.init_file_layout = "port_a";
defparam ram_block1a3.logical_ram_name = "nco_nco_ii_0:nco_ii_0|asj_nco_as_m_cen:ux0121|altsyncram:altsyncram_component0|altsyncram_vt81:auto_generated|ALTSYNCRAM";
defparam ram_block1a3.operation_mode = "rom";
defparam ram_block1a3.port_a_address_clear = "none";
defparam ram_block1a3.port_a_address_width = 13;
defparam ram_block1a3.port_a_data_out_clear = "none";
defparam ram_block1a3.port_a_data_out_clock = "clock0";
defparam ram_block1a3.port_a_data_width = 1;
defparam ram_block1a3.port_a_first_address = 0;
defparam ram_block1a3.port_a_first_bit_number = 3;
defparam ram_block1a3.port_a_last_address = 8191;
defparam ram_block1a3.port_a_logical_ram_depth = 8192;
defparam ram_block1a3.port_a_logical_ram_width = 12;
defparam ram_block1a3.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a3.ram_block_type = "auto";
defparam ram_block1a3.mem_init3 = 2048'hFFFFFFFFFFFFFFFFFFFFFFFFFFFE000000000000FFFFFFFFF800000007FFFFFF0000007FFFFF000007FFFF80000FFFFC0001FFFF0000FFFE0003FFF8001FFF0003FFE001FFF000FFF000FFE003FFC007FE003FF001FF801FF801FF003FE007FC01FF007FC01FE00FF007F803FC03FC03FC03FC03FC03F807F00FE01FC03F80FE01FC07F01FC07F01FC0FE03F80FC07E03F81FC0FE07E03F01F81F80FC0FC07E07E07E07E07E07E07E07E07E07C0FC0FC1F81F83F03E07E0FC0F81F83F07E0FC1F83F07E0FC1F83F07C0F81F07E0F81F07E0F81F07C0F83E07C1F03E0F81F07C1F83E0F81F07C1F07E0F83E0F81F07C1F07C0F83E0F83E0FC1F07C1F07C1F83E0;
defparam ram_block1a3.mem_init2 = 2048'hF83E0F83E07C1F07C1F07E0F83E0F83E07C1F07C1F03E0F83E0FC1F07C1F83E0F81F07C1F83E0FC1F07E0F81F07C0F83F07C0F83F07E0F81F03E0FC1F83F07E0FC1F83F03E07C0FC1F81F03F07E07E0FC0FC1F81F81F81F81F81F01F81F81F81F81F80FC0FC07E07F03F01F80FC07E03F01FC0FE03F81FC07F01FC07F01FC07F00FE03FC07F00FE01FE03FC03FC03FC03FC03FC03FE01FF00FF807FC01FF007FC00FF803FF003FE007FE003FF003FF800FFE003FF8007FF8007FF8007FFC001FFF0003FFF0001FFFC0007FFF80003FFFE00007FFFF00000FFFFFC000007FFFFFC0000003FFFFFFFC000000000FFFFFFFFFFFFF00000000000000000000000000;
defparam ram_block1a3.mem_init1 = 2048'h00000000000000000000000001FFFFFFFFFFFFE0000000007FFFFFFF80000007FFFFFC000007FFFFE00001FFFFC0000FFFF80003FFFC0007FFF0001FFF8001FFF0007FFC003FFC003FFC003FF800FFE003FF801FF800FFC00FF801FF803FE007FC01FF007FC03FE01FF00FF807F807F807F807F807F80FF00FE01FC07F80FE01FC07F01FC07F01FC07F03F80FE07F01F80FC07E03F01F81FC0FC07E07E03F03F03F03F03F01F03F03F03F03F03F07E07E0FC0FC1F81F03F07E07C0F81F83F07E0FC1F83F07E0F81F03E0FC1F83E07C1F83E07C1F03E0FC1F07E0F83F07C1F03E0F83F07C1F07E0F83E0F81F07C1F07C0F83E0F83E0FC1F07C1F07C0F83E0F83E;
defparam ram_block1a3.mem_init0 = 2048'h0F83F07C1F07C1F07E0F83E0F83E07C1F07C1F03E0F83E0FC1F07C1F03E0F83F07C1F03E0F81F07C0F83E07C1F03E0FC1F03E0FC1F03E07C1F83F07E0FC1F83F07E0FC1F83F03E07E0FC0F81F83F03F07E07E07C0FC0FC0FC0FC0FC0FC0FC0FC0FC07E07E03F03F01F80FC0FE07F03F80FC07E03F80FE07F01FC07F01FC07F00FE03F807F00FE01FC03F807F807F807F807F807F803FC01FE00FF007FC01FF007FC00FF801FF003FF003FF001FF800FFC007FF800FFE001FFE001FFF000FFF8001FFF0003FFF8000FFFE0001FFFF00007FFFE00003FFFFC00001FFFFFC000001FFFFFFC00000003FFFFFFFFE000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF;

fiftyfivenm_ram_block ram_block1a4(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a4_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a4.clk0_core_clock_enable = "ena0";
defparam ram_block1a4.clk0_input_clock_enable = "ena0";
defparam ram_block1a4.clk0_output_clock_enable = "ena0";
defparam ram_block1a4.data_interleave_offset_in_bits = 1;
defparam ram_block1a4.data_interleave_width_in_bits = 1;
defparam ram_block1a4.init_file = "nco_nco_ii_0_cos.hex";
defparam ram_block1a4.init_file_layout = "port_a";
defparam ram_block1a4.logical_ram_name = "nco_nco_ii_0:nco_ii_0|asj_nco_as_m_cen:ux0121|altsyncram:altsyncram_component0|altsyncram_vt81:auto_generated|ALTSYNCRAM";
defparam ram_block1a4.operation_mode = "rom";
defparam ram_block1a4.port_a_address_clear = "none";
defparam ram_block1a4.port_a_address_width = 13;
defparam ram_block1a4.port_a_data_out_clear = "none";
defparam ram_block1a4.port_a_data_out_clock = "clock0";
defparam ram_block1a4.port_a_data_width = 1;
defparam ram_block1a4.port_a_first_address = 0;
defparam ram_block1a4.port_a_first_bit_number = 4;
defparam ram_block1a4.port_a_last_address = 8191;
defparam ram_block1a4.port_a_logical_ram_depth = 8192;
defparam ram_block1a4.port_a_logical_ram_width = 12;
defparam ram_block1a4.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a4.ram_block_type = "auto";
defparam ram_block1a4.mem_init3 = 2048'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000007FFFFFFFFFFFF800000000007FFFFFFFFF000000001FFFFFFFF00000003FFFFFFE0000003FFFFFE000000FFFFFF000003FFFFF800003FFFFE00001FFFFE00003FFFF80001FFFF80001FFFF00007FFFC0003FFFC0003FFFC0003FFF8000FFFE0003FFF0001FFF8001FFF8001FFF0003FFF0007FFC001FFF0007FFC001FFE000FFF0007FF8007FF8007FF8007FF8007FF800FFF001FFE003FFC007FF000FFE003FF800FFE003FF800FFE003FF800FFE007FF001FF800FFE007FF003FF801FFC00FFE007FE003FF001FF801FF800FFC00FFE007FE007FF003FF003FF001FF801FF801FFC00;
defparam ram_block1a4.mem_init2 = 2048'hFFC00FFC007FE007FE007FF003FF003FF801FF801FFC00FFC00FFE007FE003FF001FF801FFC00FFE007FF001FF800FFC007FF003FF800FFE003FF001FFC007FF001FFC003FF800FFE001FFC007FF800FFF001FFE001FFE001FFE001FFE001FFE001FFF000FFF8007FFC001FFF0007FFC001FFF0003FFE0007FFE0007FFE0007FFF0003FFF8000FFFE0003FFFC0003FFFC0003FFFC0001FFFF00007FFFE00007FFFF00003FFFFC00007FFFFC00003FFFFF000003FFFFF8000007FFFFF8000001FFFFFFC0000001FFFFFFF800000003FFFFFFFF8000000000FFFFFFFFFFF80000000000003FFFFFFFFFFFFFFFFF000000000000000000000000000000000000000;
defparam ram_block1a4.mem_init1 = 2048'h000000000000000000000000000000000000001FFFFFFFFFFFFFFFFF80000000000003FFFFFFFFFFE0000000003FFFFFFFF800000003FFFFFFF00000007FFFFFF0000003FFFFFC000003FFFFF800001FFFFF800007FFFFC00007FFFF80001FFFFC0000FFFFC0001FFFF00007FFF80007FFF80007FFF8000FFFE0003FFF8001FFFC000FFFC000FFFC000FFF8001FFF0007FFC001FFF0007FFC003FFE001FFF000FFF000FFF000FFF000FFF000FFF001FFE003FFC007FF000FFE003FF8007FF001FFC007FF001FF800FFE003FF801FFC007FE003FF001FFC00FFE007FF003FF001FF800FFC00FFE007FE007FF003FF003FF801FF801FFC00FFC00FFC007FE007FE;
defparam ram_block1a4.mem_init0 = 2048'h007FF003FF003FF001FF801FF801FFC00FFC00FFE007FE003FF003FF001FF800FFC00FFE007FF003FF801FFC00FFE003FF001FFC00FFE003FF800FFE003FF800FFE003FF800FFE001FFC007FF800FFF001FFE003FFC003FFC003FFC003FFC003FFC001FFE000FFF0007FFC001FFF0007FFC001FFF8001FFF0003FFF0003FFF0001FFF8000FFFE0003FFF80007FFF80007FFF80007FFFC0001FFFF00003FFFF00003FFFF80000FFFFF00000FFFFF800003FFFFF800001FFFFFE000000FFFFFF8000000FFFFFFF80000001FFFFFFFF000000001FFFFFFFFFC00000000003FFFFFFFFFFFFC00000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;

fiftyfivenm_ram_block ram_block1a5(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a5_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a5.clk0_core_clock_enable = "ena0";
defparam ram_block1a5.clk0_input_clock_enable = "ena0";
defparam ram_block1a5.clk0_output_clock_enable = "ena0";
defparam ram_block1a5.data_interleave_offset_in_bits = 1;
defparam ram_block1a5.data_interleave_width_in_bits = 1;
defparam ram_block1a5.init_file = "nco_nco_ii_0_cos.hex";
defparam ram_block1a5.init_file_layout = "port_a";
defparam ram_block1a5.logical_ram_name = "nco_nco_ii_0:nco_ii_0|asj_nco_as_m_cen:ux0121|altsyncram:altsyncram_component0|altsyncram_vt81:auto_generated|ALTSYNCRAM";
defparam ram_block1a5.operation_mode = "rom";
defparam ram_block1a5.port_a_address_clear = "none";
defparam ram_block1a5.port_a_address_width = 13;
defparam ram_block1a5.port_a_data_out_clear = "none";
defparam ram_block1a5.port_a_data_out_clock = "clock0";
defparam ram_block1a5.port_a_data_width = 1;
defparam ram_block1a5.port_a_first_address = 0;
defparam ram_block1a5.port_a_first_bit_number = 5;
defparam ram_block1a5.port_a_last_address = 8191;
defparam ram_block1a5.port_a_logical_ram_depth = 8192;
defparam ram_block1a5.port_a_logical_ram_width = 12;
defparam ram_block1a5.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a5.ram_block_type = "auto";
defparam ram_block1a5.mem_init3 = 2048'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000000000000000000000007FFFFFFFFFFFFFFFFFE0000000000000003FFFFFFFFFFFFFC000000000000FFFFFFFFFFFC00000000003FFFFFFFFFE0000000003FFFFFFFFE000000001FFFFFFFF800000003FFFFFFFC00000003FFFFFFF00000003FFFFFFE0000001FFFFFFE0000003FFFFFF8000001FFFFFF8000001FFFFFF0000007FFFFF8000007FFFFF8000007FFFFF000001FFFFFC000007FFFFF000003FFFFF000003FFFFF000003FFFFF000007FFFFE00000FFFFF800003FFFFE00000FFFFF800003FFFFE00001FFFFF00000FFFFF800007FFFFC00003FFFFE00001FFFFE00000;
defparam ram_block1a5.mem_init2 = 2048'hFFFFF000007FFFF800007FFFFC00003FFFFE00001FFFFF00000FFFFF800003FFFFE00001FFFFF000007FFFFE00000FFFFF800003FFFFF000003FFFFE000007FFFFE000003FFFFF000001FFFFF800000FFFFFE000001FFFFFE000001FFFFFE000001FFFFFF0000007FFFFFE0000007FFFFFE0000003FFFFFF80000007FFFFFF80000003FFFFFFF00000003FFFFFFFC00000003FFFFFFFE000000007FFFFFFFF8000000003FFFFFFFFF80000000003FFFFFFFFFFC000000000007FFFFFFFFFFFE00000000000001FFFFFFFFFFFFFFFC000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFC00000000000000000000000000000000000000000000000000000000;
defparam ram_block1a5.mem_init1 = 2048'h000000000000000000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFE0000000000000000007FFFFFFFFFFFFFFF00000000000000FFFFFFFFFFFFC000000000007FFFFFFFFFF80000000003FFFFFFFFF8000000003FFFFFFFFC00000000FFFFFFFF800000007FFFFFFF80000001FFFFFFF80000003FFFFFFC0000003FFFFFF8000000FFFFFFC000000FFFFFFC000001FFFFFF000000FFFFFF000000FFFFFF000000FFFFFE000003FFFFF000001FFFFF800000FFFFFC00000FFFFF800001FFFFF800003FFFFE00000FFFFFC00001FFFFF00000FFFFF800003FFFFE00001FFFFF00000FFFFF800007FFFFC00003FFFFC00001FFFFE;
defparam ram_block1a5.mem_init0 = 2048'h00000FFFFF00000FFFFF800007FFFFC00003FFFFE00001FFFFF00000FFFFF800003FFFFE00000FFFFF800003FFFFE00000FFFFFC00001FFFFF800001FFFFF800001FFFFF800001FFFFFC000007FFFFF000001FFFFFC000003FFFFFC000003FFFFFC000001FFFFFF0000003FFFFFF0000003FFFFFF8000000FFFFFFF0000000FFFFFFF80000001FFFFFFF800000007FFFFFFF800000003FFFFFFFF000000000FFFFFFFFF8000000000FFFFFFFFFF800000000007FFFFFFFFFFE0000000000007FFFFFFFFFFFFF8000000000000000FFFFFFFFFFFFFFFFFFC000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;

fiftyfivenm_ram_block ram_block1a6(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a6_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a6.clk0_core_clock_enable = "ena0";
defparam ram_block1a6.clk0_input_clock_enable = "ena0";
defparam ram_block1a6.clk0_output_clock_enable = "ena0";
defparam ram_block1a6.data_interleave_offset_in_bits = 1;
defparam ram_block1a6.data_interleave_width_in_bits = 1;
defparam ram_block1a6.init_file = "nco_nco_ii_0_cos.hex";
defparam ram_block1a6.init_file_layout = "port_a";
defparam ram_block1a6.logical_ram_name = "nco_nco_ii_0:nco_ii_0|asj_nco_as_m_cen:ux0121|altsyncram:altsyncram_component0|altsyncram_vt81:auto_generated|ALTSYNCRAM";
defparam ram_block1a6.operation_mode = "rom";
defparam ram_block1a6.port_a_address_clear = "none";
defparam ram_block1a6.port_a_address_width = 13;
defparam ram_block1a6.port_a_data_out_clear = "none";
defparam ram_block1a6.port_a_data_out_clock = "clock0";
defparam ram_block1a6.port_a_data_width = 1;
defparam ram_block1a6.port_a_first_address = 0;
defparam ram_block1a6.port_a_first_bit_number = 6;
defparam ram_block1a6.port_a_last_address = 8191;
defparam ram_block1a6.port_a_logical_ram_depth = 8192;
defparam ram_block1a6.port_a_logical_ram_width = 12;
defparam ram_block1a6.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a6.ram_block_type = "auto";
defparam ram_block1a6.mem_init3 = 2048'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000003FFFFFFFFFFFFFFFFFFFC000000000000000001FFFFFFFFFFFFFFFFC0000000000000003FFFFFFFFFFFFFFC00000000000001FFFFFFFFFFFFFC0000000000001FFFFFFFFFFFFE0000000000007FFFFFFFFFFF8000000000007FFFFFFFFFFE000000000007FFFFFFFFFFC00000000003FFFFFFFFFFC00000000007FFFFFFFFFF00000000003FFFFFFFFFF00000000003FFFFFFFFFE0000000000FFFFFFFFFF80000000003FFFFFFFFFE0000000000;
defparam ram_block1a6.mem_init2 = 2048'hFFFFFFFFFF80000000007FFFFFFFFFC0000000001FFFFFFFFFF00000000003FFFFFFFFFE00000000007FFFFFFFFFF00000000003FFFFFFFFFFC00000000007FFFFFFFFFFC00000000001FFFFFFFFFFF000000000001FFFFFFFFFFFE000000000001FFFFFFFFFFFF80000000000007FFFFFFFFFFFFC00000000000007FFFFFFFFFFFFFC000000000000003FFFFFFFFFFFFFFFC00000000000000007FFFFFFFFFFFFFFFFFC00000000000000000003FFFFFFFFFFFFFFFFFFFFFF800000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000000000000000000000000000000000000000000;
defparam ram_block1a6.mem_init1 = 2048'h000000000000000000000000000000000000000000000000000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFF800000000000000000007FFFFFFFFFFFFFFFFFC00000000000000007FFFFFFFFFFFFFFF8000000000000007FFFFFFFFFFFFFC00000000000007FFFFFFFFFFFFC0000000000003FFFFFFFFFFFF000000000000FFFFFFFFFFFF000000000001FFFFFFFFFFF000000000007FFFFFFFFFFC00000000007FFFFFFFFFF80000000001FFFFFFFFFFC0000000000FFFFFFFFFF80000000001FFFFFFFFFF00000000007FFFFFFFFFC0000000003FFFFFFFFFE;
defparam ram_block1a6.mem_init0 = 2048'h0000000000FFFFFFFFFF80000000003FFFFFFFFFE0000000000FFFFFFFFFF80000000001FFFFFFFFFF80000000001FFFFFFFFFFC00000000007FFFFFFFFFF800000000007FFFFFFFFFFC00000000000FFFFFFFFFFFC000000000003FFFFFFFFFFFC000000000000FFFFFFFFFFFFF00000000000007FFFFFFFFFFFFF000000000000007FFFFFFFFFFFFFF80000000000000007FFFFFFFFFFFFFFFF0000000000000000007FFFFFFFFFFFFFFFFFFF80000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFF80000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;

fiftyfivenm_ram_block ram_block1a7(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a7_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a7.clk0_core_clock_enable = "ena0";
defparam ram_block1a7.clk0_input_clock_enable = "ena0";
defparam ram_block1a7.clk0_output_clock_enable = "ena0";
defparam ram_block1a7.data_interleave_offset_in_bits = 1;
defparam ram_block1a7.data_interleave_width_in_bits = 1;
defparam ram_block1a7.init_file = "nco_nco_ii_0_cos.hex";
defparam ram_block1a7.init_file_layout = "port_a";
defparam ram_block1a7.logical_ram_name = "nco_nco_ii_0:nco_ii_0|asj_nco_as_m_cen:ux0121|altsyncram:altsyncram_component0|altsyncram_vt81:auto_generated|ALTSYNCRAM";
defparam ram_block1a7.operation_mode = "rom";
defparam ram_block1a7.port_a_address_clear = "none";
defparam ram_block1a7.port_a_address_width = 13;
defparam ram_block1a7.port_a_data_out_clear = "none";
defparam ram_block1a7.port_a_data_out_clock = "clock0";
defparam ram_block1a7.port_a_data_width = 1;
defparam ram_block1a7.port_a_first_address = 0;
defparam ram_block1a7.port_a_first_bit_number = 7;
defparam ram_block1a7.port_a_last_address = 8191;
defparam ram_block1a7.port_a_logical_ram_depth = 8192;
defparam ram_block1a7.port_a_logical_ram_width = 12;
defparam ram_block1a7.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a7.ram_block_type = "auto";
defparam ram_block1a7.mem_init3 = 2048'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFE000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFF8000000000000000000000007FFFFFFFFFFFFFFFFFFFFFF80000000000000000000003FFFFFFFFFFFFFFFFFFFFF8000000000000000000003FFFFFFFFFFFFFFFFFFFFC00000000000000000000FFFFFFFFFFFFFFFFFFFFC00000000000000000000;
defparam ram_block1a7.mem_init2 = 2048'hFFFFFFFFFFFFFFFFFFFF800000000000000000001FFFFFFFFFFFFFFFFFFFFC000000000000000000007FFFFFFFFFFFFFFFFFFFFC0000000000000000000007FFFFFFFFFFFFFFFFFFFFFE00000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFE00000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFF800000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
defparam ram_block1a7.mem_init1 = 2048'h0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFC0000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000FFFFFFFFFFFFFFFFFFFFFFC0000000000000000000007FFFFFFFFFFFFFFFFFFFFC000000000000000000007FFFFFFFFFFFFFFFFFFFF000000000000000000003FFFFFFFFFFFFFFFFFFFE;
defparam ram_block1a7.mem_init0 = 2048'h000000000000000000007FFFFFFFFFFFFFFFFFFFE000000000000000000007FFFFFFFFFFFFFFFFFFFF8000000000000000000003FFFFFFFFFFFFFFFFFFFFF80000000000000000000003FFFFFFFFFFFFFFFFFFFFFFC000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80000000000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;

fiftyfivenm_ram_block ram_block1a8(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a8_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a8.clk0_core_clock_enable = "ena0";
defparam ram_block1a8.clk0_input_clock_enable = "ena0";
defparam ram_block1a8.clk0_output_clock_enable = "ena0";
defparam ram_block1a8.data_interleave_offset_in_bits = 1;
defparam ram_block1a8.data_interleave_width_in_bits = 1;
defparam ram_block1a8.init_file = "nco_nco_ii_0_cos.hex";
defparam ram_block1a8.init_file_layout = "port_a";
defparam ram_block1a8.logical_ram_name = "nco_nco_ii_0:nco_ii_0|asj_nco_as_m_cen:ux0121|altsyncram:altsyncram_component0|altsyncram_vt81:auto_generated|ALTSYNCRAM";
defparam ram_block1a8.operation_mode = "rom";
defparam ram_block1a8.port_a_address_clear = "none";
defparam ram_block1a8.port_a_address_width = 13;
defparam ram_block1a8.port_a_data_out_clear = "none";
defparam ram_block1a8.port_a_data_out_clock = "clock0";
defparam ram_block1a8.port_a_data_width = 1;
defparam ram_block1a8.port_a_first_address = 0;
defparam ram_block1a8.port_a_first_bit_number = 8;
defparam ram_block1a8.port_a_last_address = 8191;
defparam ram_block1a8.port_a_logical_ram_depth = 8192;
defparam ram_block1a8.port_a_logical_ram_width = 12;
defparam ram_block1a8.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a8.ram_block_type = "auto";
defparam ram_block1a8.mem_init3 = 2048'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00000000000000000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00000000000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000;
defparam ram_block1a8.mem_init2 = 2048'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000000000000000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
defparam ram_block1a8.mem_init1 = 2048'h000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE;
defparam ram_block1a8.mem_init0 = 2048'h00000000000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000000000000000000000000000000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;

fiftyfivenm_ram_block ram_block1a9(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a9_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a9.clk0_core_clock_enable = "ena0";
defparam ram_block1a9.clk0_input_clock_enable = "ena0";
defparam ram_block1a9.clk0_output_clock_enable = "ena0";
defparam ram_block1a9.data_interleave_offset_in_bits = 1;
defparam ram_block1a9.data_interleave_width_in_bits = 1;
defparam ram_block1a9.init_file = "nco_nco_ii_0_cos.hex";
defparam ram_block1a9.init_file_layout = "port_a";
defparam ram_block1a9.logical_ram_name = "nco_nco_ii_0:nco_ii_0|asj_nco_as_m_cen:ux0121|altsyncram:altsyncram_component0|altsyncram_vt81:auto_generated|ALTSYNCRAM";
defparam ram_block1a9.operation_mode = "rom";
defparam ram_block1a9.port_a_address_clear = "none";
defparam ram_block1a9.port_a_address_width = 13;
defparam ram_block1a9.port_a_data_out_clear = "none";
defparam ram_block1a9.port_a_data_out_clock = "clock0";
defparam ram_block1a9.port_a_data_width = 1;
defparam ram_block1a9.port_a_first_address = 0;
defparam ram_block1a9.port_a_first_bit_number = 9;
defparam ram_block1a9.port_a_last_address = 8191;
defparam ram_block1a9.port_a_logical_ram_depth = 8192;
defparam ram_block1a9.port_a_logical_ram_width = 12;
defparam ram_block1a9.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a9.ram_block_type = "auto";
defparam ram_block1a9.mem_init3 = 2048'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000000000000000000000000000000000000000000000000000000000000000000000000000000000;
defparam ram_block1a9.mem_init2 = 2048'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80000000000000000000000000000000000000000000000000000000000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
defparam ram_block1a9.mem_init1 = 2048'h00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE;
defparam ram_block1a9.mem_init0 = 2048'h00000000000000000000000000000000000000000000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;

fiftyfivenm_ram_block ram_block1a10(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a10_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a10.clk0_core_clock_enable = "ena0";
defparam ram_block1a10.clk0_input_clock_enable = "ena0";
defparam ram_block1a10.clk0_output_clock_enable = "ena0";
defparam ram_block1a10.data_interleave_offset_in_bits = 1;
defparam ram_block1a10.data_interleave_width_in_bits = 1;
defparam ram_block1a10.init_file = "nco_nco_ii_0_cos.hex";
defparam ram_block1a10.init_file_layout = "port_a";
defparam ram_block1a10.logical_ram_name = "nco_nco_ii_0:nco_ii_0|asj_nco_as_m_cen:ux0121|altsyncram:altsyncram_component0|altsyncram_vt81:auto_generated|ALTSYNCRAM";
defparam ram_block1a10.operation_mode = "rom";
defparam ram_block1a10.port_a_address_clear = "none";
defparam ram_block1a10.port_a_address_width = 13;
defparam ram_block1a10.port_a_data_out_clear = "none";
defparam ram_block1a10.port_a_data_out_clock = "clock0";
defparam ram_block1a10.port_a_data_width = 1;
defparam ram_block1a10.port_a_first_address = 0;
defparam ram_block1a10.port_a_first_bit_number = 10;
defparam ram_block1a10.port_a_last_address = 8191;
defparam ram_block1a10.port_a_logical_ram_depth = 8192;
defparam ram_block1a10.port_a_logical_ram_width = 12;
defparam ram_block1a10.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a10.ram_block_type = "auto";
defparam ram_block1a10.mem_init3 = 2048'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
defparam ram_block1a10.mem_init2 = 2048'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
defparam ram_block1a10.mem_init1 = 2048'h00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE;
defparam ram_block1a10.mem_init0 = 2048'h000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;

fiftyfivenm_ram_block ram_block1a11(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(clocken0),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,address_a[12],address_a[11],address_a[10],address_a[9],address_a[8],address_a[7],address_a[6],address_a[5],address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a11_PORTADATAOUT_bus),
	.portbdataout());
defparam ram_block1a11.clk0_core_clock_enable = "ena0";
defparam ram_block1a11.clk0_input_clock_enable = "ena0";
defparam ram_block1a11.clk0_output_clock_enable = "ena0";
defparam ram_block1a11.data_interleave_offset_in_bits = 1;
defparam ram_block1a11.data_interleave_width_in_bits = 1;
defparam ram_block1a11.init_file = "nco_nco_ii_0_cos.hex";
defparam ram_block1a11.init_file_layout = "port_a";
defparam ram_block1a11.logical_ram_name = "nco_nco_ii_0:nco_ii_0|asj_nco_as_m_cen:ux0121|altsyncram:altsyncram_component0|altsyncram_vt81:auto_generated|ALTSYNCRAM";
defparam ram_block1a11.operation_mode = "rom";
defparam ram_block1a11.port_a_address_clear = "none";
defparam ram_block1a11.port_a_address_width = 13;
defparam ram_block1a11.port_a_data_out_clear = "none";
defparam ram_block1a11.port_a_data_out_clock = "clock0";
defparam ram_block1a11.port_a_data_width = 1;
defparam ram_block1a11.port_a_first_address = 0;
defparam ram_block1a11.port_a_first_bit_number = 11;
defparam ram_block1a11.port_a_last_address = 8191;
defparam ram_block1a11.port_a_logical_ram_depth = 8192;
defparam ram_block1a11.port_a_logical_ram_width = 12;
defparam ram_block1a11.port_a_read_during_write_mode = "new_data_with_nbe_read";
defparam ram_block1a11.ram_block_type = "auto";
defparam ram_block1a11.mem_init3 = 2048'h00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
defparam ram_block1a11.mem_init2 = 2048'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
defparam ram_block1a11.mem_init1 = 2048'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE;
defparam ram_block1a11.mem_init0 = 2048'h00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;

endmodule

module nco_asj_nco_isdr (
	data_ready1,
	GND_port,
	reset_n,
	clk,
	clken)/* synthesis synthesis_greybox=1 */;
output 	data_ready1;
input 	GND_port;
input 	reset_n;
input 	clk;
input 	clken;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \lpm_counter_component|auto_generated|counter_reg_bit[2]~q ;
wire \lpm_counter_component|auto_generated|counter_reg_bit[1]~q ;
wire \lpm_counter_component|auto_generated|counter_reg_bit[0]~q ;
wire \always0~0_combout ;
wire \data_ready~0_combout ;


nco_lpm_counter_1 lpm_counter_component(
	.counter_reg_bit_2(\lpm_counter_component|auto_generated|counter_reg_bit[2]~q ),
	.counter_reg_bit_1(\lpm_counter_component|auto_generated|counter_reg_bit[1]~q ),
	.counter_reg_bit_0(\lpm_counter_component|auto_generated|counter_reg_bit[0]~q ),
	.GND_port(GND_port),
	.reset_n(reset_n),
	.clock(clk),
	.clken(clken));

dffeas data_ready(
	.clk(clk),
	.d(\data_ready~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n),
	.sload(gnd),
	.ena(vcc),
	.q(data_ready1),
	.prn(vcc));
defparam data_ready.is_wysiwyg = "true";
defparam data_ready.power_up = "low";

fiftyfivenm_lcell_comb \always0~0 (
	.dataa(clken),
	.datab(\lpm_counter_component|auto_generated|counter_reg_bit[2]~q ),
	.datac(\lpm_counter_component|auto_generated|counter_reg_bit[1]~q ),
	.datad(\lpm_counter_component|auto_generated|counter_reg_bit[0]~q ),
	.cin(gnd),
	.combout(\always0~0_combout ),
	.cout());
defparam \always0~0 .lut_mask = 16'hFFFE;
defparam \always0~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \data_ready~0 (
	.dataa(data_ready1),
	.datab(\always0~0_combout ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\data_ready~0_combout ),
	.cout());
defparam \data_ready~0 .lut_mask = 16'hEEEE;
defparam \data_ready~0 .sum_lutc_input = "datac";

endmodule

module nco_lpm_counter_1 (
	counter_reg_bit_2,
	counter_reg_bit_1,
	counter_reg_bit_0,
	GND_port,
	reset_n,
	clock,
	clken)/* synthesis synthesis_greybox=1 */;
output 	counter_reg_bit_2;
output 	counter_reg_bit_1;
output 	counter_reg_bit_0;
input 	GND_port;
input 	reset_n;
input 	clock;
input 	clken;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



nco_cntr_v6i auto_generated(
	.counter_reg_bit_2(counter_reg_bit_2),
	.counter_reg_bit_1(counter_reg_bit_1),
	.counter_reg_bit_0(counter_reg_bit_0),
	.GND_port(GND_port),
	.reset_n(reset_n),
	.clock(clock),
	.clken(clken));

endmodule

module nco_cntr_v6i (
	counter_reg_bit_2,
	counter_reg_bit_1,
	counter_reg_bit_0,
	GND_port,
	reset_n,
	clock,
	clken)/* synthesis synthesis_greybox=1 */;
output 	counter_reg_bit_2;
output 	counter_reg_bit_1;
output 	counter_reg_bit_0;
input 	GND_port;
input 	reset_n;
input 	clock;
input 	clken;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \counter_comb_bita0~COUT ;
wire \counter_comb_bita1~COUT ;
wire \counter_comb_bita2~combout ;
wire \counter_comb_bita1~combout ;
wire \counter_comb_bita0~combout ;


dffeas \counter_reg_bit[2] (
	.clk(clock),
	.d(\counter_comb_bita2~combout ),
	.asdata(GND_port),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(!reset_n),
	.ena(clken),
	.q(counter_reg_bit_2),
	.prn(vcc));
defparam \counter_reg_bit[2] .is_wysiwyg = "true";
defparam \counter_reg_bit[2] .power_up = "low";

dffeas \counter_reg_bit[1] (
	.clk(clock),
	.d(\counter_comb_bita1~combout ),
	.asdata(GND_port),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(!reset_n),
	.ena(clken),
	.q(counter_reg_bit_1),
	.prn(vcc));
defparam \counter_reg_bit[1] .is_wysiwyg = "true";
defparam \counter_reg_bit[1] .power_up = "low";

dffeas \counter_reg_bit[0] (
	.clk(clock),
	.d(\counter_comb_bita0~combout ),
	.asdata(GND_port),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(!reset_n),
	.ena(clken),
	.q(counter_reg_bit_0),
	.prn(vcc));
defparam \counter_reg_bit[0] .is_wysiwyg = "true";
defparam \counter_reg_bit[0] .power_up = "low";

fiftyfivenm_lcell_comb counter_comb_bita0(
	.dataa(counter_reg_bit_0),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(\counter_comb_bita0~combout ),
	.cout(\counter_comb_bita0~COUT ));
defparam counter_comb_bita0.lut_mask = 16'h55AA;
defparam counter_comb_bita0.sum_lutc_input = "cin";

fiftyfivenm_lcell_comb counter_comb_bita1(
	.dataa(counter_reg_bit_1),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\counter_comb_bita0~COUT ),
	.combout(\counter_comb_bita1~combout ),
	.cout(\counter_comb_bita1~COUT ));
defparam counter_comb_bita1.lut_mask = 16'h5A5F;
defparam counter_comb_bita1.sum_lutc_input = "cin";

fiftyfivenm_lcell_comb counter_comb_bita2(
	.dataa(counter_reg_bit_2),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.cin(\counter_comb_bita1~COUT ),
	.combout(\counter_comb_bita2~combout ),
	.cout());
defparam counter_comb_bita2.lut_mask = 16'h5A5A;
defparam counter_comb_bita2.sum_lutc_input = "cin";

endmodule

module nco_asj_nco_mob_rw (
	q_a_0,
	q_a_1,
	q_a_2,
	q_a_3,
	q_a_4,
	q_a_5,
	q_a_6,
	q_a_7,
	q_a_8,
	q_a_9,
	q_a_10,
	q_a_11,
	data_out_0,
	data_out_1,
	data_out_2,
	data_out_3,
	data_out_4,
	data_out_5,
	data_out_6,
	data_out_7,
	data_out_8,
	data_out_9,
	data_out_10,
	data_out_11,
	data_out_01,
	reset_n,
	clk,
	clken)/* synthesis synthesis_greybox=1 */;
input 	q_a_0;
input 	q_a_1;
input 	q_a_2;
input 	q_a_3;
input 	q_a_4;
input 	q_a_5;
input 	q_a_6;
input 	q_a_7;
input 	q_a_8;
input 	q_a_9;
input 	q_a_10;
input 	q_a_11;
output 	data_out_0;
output 	data_out_1;
output 	data_out_2;
output 	data_out_3;
output 	data_out_4;
output 	data_out_5;
output 	data_out_6;
output 	data_out_7;
output 	data_out_8;
output 	data_out_9;
output 	data_out_10;
output 	data_out_11;
output 	data_out_01;
input 	reset_n;
input 	clk;
input 	clken;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \data_out~0_combout ;
wire \data_out~2_combout ;
wire \data_out~3_combout ;
wire \data_out~4_combout ;
wire \data_out~5_combout ;
wire \data_out~6_combout ;
wire \data_out~7_combout ;
wire \data_out~8_combout ;
wire \data_out~9_combout ;
wire \data_out~10_combout ;
wire \data_out~11_combout ;
wire \data_out~12_combout ;


dffeas \data_out[0] (
	.clk(clk),
	.d(\data_out~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_01),
	.q(data_out_0),
	.prn(vcc));
defparam \data_out[0] .is_wysiwyg = "true";
defparam \data_out[0] .power_up = "low";

dffeas \data_out[1] (
	.clk(clk),
	.d(\data_out~2_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_01),
	.q(data_out_1),
	.prn(vcc));
defparam \data_out[1] .is_wysiwyg = "true";
defparam \data_out[1] .power_up = "low";

dffeas \data_out[2] (
	.clk(clk),
	.d(\data_out~3_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_01),
	.q(data_out_2),
	.prn(vcc));
defparam \data_out[2] .is_wysiwyg = "true";
defparam \data_out[2] .power_up = "low";

dffeas \data_out[3] (
	.clk(clk),
	.d(\data_out~4_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_01),
	.q(data_out_3),
	.prn(vcc));
defparam \data_out[3] .is_wysiwyg = "true";
defparam \data_out[3] .power_up = "low";

dffeas \data_out[4] (
	.clk(clk),
	.d(\data_out~5_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_01),
	.q(data_out_4),
	.prn(vcc));
defparam \data_out[4] .is_wysiwyg = "true";
defparam \data_out[4] .power_up = "low";

dffeas \data_out[5] (
	.clk(clk),
	.d(\data_out~6_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_01),
	.q(data_out_5),
	.prn(vcc));
defparam \data_out[5] .is_wysiwyg = "true";
defparam \data_out[5] .power_up = "low";

dffeas \data_out[6] (
	.clk(clk),
	.d(\data_out~7_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_01),
	.q(data_out_6),
	.prn(vcc));
defparam \data_out[6] .is_wysiwyg = "true";
defparam \data_out[6] .power_up = "low";

dffeas \data_out[7] (
	.clk(clk),
	.d(\data_out~8_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_01),
	.q(data_out_7),
	.prn(vcc));
defparam \data_out[7] .is_wysiwyg = "true";
defparam \data_out[7] .power_up = "low";

dffeas \data_out[8] (
	.clk(clk),
	.d(\data_out~9_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_01),
	.q(data_out_8),
	.prn(vcc));
defparam \data_out[8] .is_wysiwyg = "true";
defparam \data_out[8] .power_up = "low";

dffeas \data_out[9] (
	.clk(clk),
	.d(\data_out~10_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_01),
	.q(data_out_9),
	.prn(vcc));
defparam \data_out[9] .is_wysiwyg = "true";
defparam \data_out[9] .power_up = "low";

dffeas \data_out[10] (
	.clk(clk),
	.d(\data_out~11_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_01),
	.q(data_out_10),
	.prn(vcc));
defparam \data_out[10] .is_wysiwyg = "true";
defparam \data_out[10] .power_up = "low";

dffeas \data_out[11] (
	.clk(clk),
	.d(\data_out~12_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_01),
	.q(data_out_11),
	.prn(vcc));
defparam \data_out[11] .is_wysiwyg = "true";
defparam \data_out[11] .power_up = "low";

fiftyfivenm_lcell_comb \data_out[0]~1 (
	.dataa(clken),
	.datab(gnd),
	.datac(gnd),
	.datad(reset_n),
	.cin(gnd),
	.combout(data_out_01),
	.cout());
defparam \data_out[0]~1 .lut_mask = 16'hAAFF;
defparam \data_out[0]~1 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \data_out~0 (
	.dataa(reset_n),
	.datab(q_a_0),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\data_out~0_combout ),
	.cout());
defparam \data_out~0 .lut_mask = 16'hEEEE;
defparam \data_out~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \data_out~2 (
	.dataa(reset_n),
	.datab(q_a_1),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\data_out~2_combout ),
	.cout());
defparam \data_out~2 .lut_mask = 16'hEEEE;
defparam \data_out~2 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \data_out~3 (
	.dataa(reset_n),
	.datab(q_a_2),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\data_out~3_combout ),
	.cout());
defparam \data_out~3 .lut_mask = 16'hEEEE;
defparam \data_out~3 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \data_out~4 (
	.dataa(reset_n),
	.datab(q_a_3),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\data_out~4_combout ),
	.cout());
defparam \data_out~4 .lut_mask = 16'hEEEE;
defparam \data_out~4 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \data_out~5 (
	.dataa(reset_n),
	.datab(q_a_4),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\data_out~5_combout ),
	.cout());
defparam \data_out~5 .lut_mask = 16'hEEEE;
defparam \data_out~5 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \data_out~6 (
	.dataa(reset_n),
	.datab(q_a_5),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\data_out~6_combout ),
	.cout());
defparam \data_out~6 .lut_mask = 16'hEEEE;
defparam \data_out~6 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \data_out~7 (
	.dataa(reset_n),
	.datab(q_a_6),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\data_out~7_combout ),
	.cout());
defparam \data_out~7 .lut_mask = 16'hEEEE;
defparam \data_out~7 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \data_out~8 (
	.dataa(reset_n),
	.datab(q_a_7),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\data_out~8_combout ),
	.cout());
defparam \data_out~8 .lut_mask = 16'hEEEE;
defparam \data_out~8 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \data_out~9 (
	.dataa(reset_n),
	.datab(q_a_8),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\data_out~9_combout ),
	.cout());
defparam \data_out~9 .lut_mask = 16'hEEEE;
defparam \data_out~9 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \data_out~10 (
	.dataa(reset_n),
	.datab(q_a_9),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\data_out~10_combout ),
	.cout());
defparam \data_out~10 .lut_mask = 16'hEEEE;
defparam \data_out~10 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \data_out~11 (
	.dataa(reset_n),
	.datab(q_a_10),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\data_out~11_combout ),
	.cout());
defparam \data_out~11 .lut_mask = 16'hEEEE;
defparam \data_out~11 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \data_out~12 (
	.dataa(reset_n),
	.datab(q_a_11),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\data_out~12_combout ),
	.cout());
defparam \data_out~12 .lut_mask = 16'hEEEE;
defparam \data_out~12 .sum_lutc_input = "datac";

endmodule

module nco_asj_nco_mob_rw_1 (
	q_a_0,
	q_a_1,
	q_a_2,
	q_a_3,
	q_a_4,
	q_a_5,
	q_a_6,
	q_a_7,
	q_a_8,
	q_a_9,
	q_a_10,
	q_a_11,
	data_out_0,
	data_out_1,
	data_out_2,
	data_out_3,
	data_out_4,
	data_out_5,
	data_out_6,
	data_out_7,
	data_out_8,
	data_out_9,
	data_out_10,
	data_out_11,
	data_out_01,
	reset_n,
	clk)/* synthesis synthesis_greybox=1 */;
input 	q_a_0;
input 	q_a_1;
input 	q_a_2;
input 	q_a_3;
input 	q_a_4;
input 	q_a_5;
input 	q_a_6;
input 	q_a_7;
input 	q_a_8;
input 	q_a_9;
input 	q_a_10;
input 	q_a_11;
output 	data_out_0;
output 	data_out_1;
output 	data_out_2;
output 	data_out_3;
output 	data_out_4;
output 	data_out_5;
output 	data_out_6;
output 	data_out_7;
output 	data_out_8;
output 	data_out_9;
output 	data_out_10;
output 	data_out_11;
input 	data_out_01;
input 	reset_n;
input 	clk;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \data_out~0_combout ;
wire \data_out~1_combout ;
wire \data_out~2_combout ;
wire \data_out~3_combout ;
wire \data_out~4_combout ;
wire \data_out~5_combout ;
wire \data_out~6_combout ;
wire \data_out~7_combout ;
wire \data_out~8_combout ;
wire \data_out~9_combout ;
wire \data_out~10_combout ;
wire \data_out~11_combout ;


dffeas \data_out[0] (
	.clk(clk),
	.d(\data_out~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_01),
	.q(data_out_0),
	.prn(vcc));
defparam \data_out[0] .is_wysiwyg = "true";
defparam \data_out[0] .power_up = "low";

dffeas \data_out[1] (
	.clk(clk),
	.d(\data_out~1_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_01),
	.q(data_out_1),
	.prn(vcc));
defparam \data_out[1] .is_wysiwyg = "true";
defparam \data_out[1] .power_up = "low";

dffeas \data_out[2] (
	.clk(clk),
	.d(\data_out~2_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_01),
	.q(data_out_2),
	.prn(vcc));
defparam \data_out[2] .is_wysiwyg = "true";
defparam \data_out[2] .power_up = "low";

dffeas \data_out[3] (
	.clk(clk),
	.d(\data_out~3_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_01),
	.q(data_out_3),
	.prn(vcc));
defparam \data_out[3] .is_wysiwyg = "true";
defparam \data_out[3] .power_up = "low";

dffeas \data_out[4] (
	.clk(clk),
	.d(\data_out~4_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_01),
	.q(data_out_4),
	.prn(vcc));
defparam \data_out[4] .is_wysiwyg = "true";
defparam \data_out[4] .power_up = "low";

dffeas \data_out[5] (
	.clk(clk),
	.d(\data_out~5_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_01),
	.q(data_out_5),
	.prn(vcc));
defparam \data_out[5] .is_wysiwyg = "true";
defparam \data_out[5] .power_up = "low";

dffeas \data_out[6] (
	.clk(clk),
	.d(\data_out~6_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_01),
	.q(data_out_6),
	.prn(vcc));
defparam \data_out[6] .is_wysiwyg = "true";
defparam \data_out[6] .power_up = "low";

dffeas \data_out[7] (
	.clk(clk),
	.d(\data_out~7_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_01),
	.q(data_out_7),
	.prn(vcc));
defparam \data_out[7] .is_wysiwyg = "true";
defparam \data_out[7] .power_up = "low";

dffeas \data_out[8] (
	.clk(clk),
	.d(\data_out~8_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_01),
	.q(data_out_8),
	.prn(vcc));
defparam \data_out[8] .is_wysiwyg = "true";
defparam \data_out[8] .power_up = "low";

dffeas \data_out[9] (
	.clk(clk),
	.d(\data_out~9_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_01),
	.q(data_out_9),
	.prn(vcc));
defparam \data_out[9] .is_wysiwyg = "true";
defparam \data_out[9] .power_up = "low";

dffeas \data_out[10] (
	.clk(clk),
	.d(\data_out~10_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_01),
	.q(data_out_10),
	.prn(vcc));
defparam \data_out[10] .is_wysiwyg = "true";
defparam \data_out[10] .power_up = "low";

dffeas \data_out[11] (
	.clk(clk),
	.d(\data_out~11_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_01),
	.q(data_out_11),
	.prn(vcc));
defparam \data_out[11] .is_wysiwyg = "true";
defparam \data_out[11] .power_up = "low";

fiftyfivenm_lcell_comb \data_out~0 (
	.dataa(reset_n),
	.datab(q_a_0),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\data_out~0_combout ),
	.cout());
defparam \data_out~0 .lut_mask = 16'hEEEE;
defparam \data_out~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \data_out~1 (
	.dataa(reset_n),
	.datab(q_a_1),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\data_out~1_combout ),
	.cout());
defparam \data_out~1 .lut_mask = 16'hEEEE;
defparam \data_out~1 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \data_out~2 (
	.dataa(reset_n),
	.datab(q_a_2),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\data_out~2_combout ),
	.cout());
defparam \data_out~2 .lut_mask = 16'hEEEE;
defparam \data_out~2 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \data_out~3 (
	.dataa(reset_n),
	.datab(q_a_3),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\data_out~3_combout ),
	.cout());
defparam \data_out~3 .lut_mask = 16'hEEEE;
defparam \data_out~3 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \data_out~4 (
	.dataa(reset_n),
	.datab(q_a_4),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\data_out~4_combout ),
	.cout());
defparam \data_out~4 .lut_mask = 16'hEEEE;
defparam \data_out~4 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \data_out~5 (
	.dataa(reset_n),
	.datab(q_a_5),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\data_out~5_combout ),
	.cout());
defparam \data_out~5 .lut_mask = 16'hEEEE;
defparam \data_out~5 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \data_out~6 (
	.dataa(reset_n),
	.datab(q_a_6),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\data_out~6_combout ),
	.cout());
defparam \data_out~6 .lut_mask = 16'hEEEE;
defparam \data_out~6 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \data_out~7 (
	.dataa(reset_n),
	.datab(q_a_7),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\data_out~7_combout ),
	.cout());
defparam \data_out~7 .lut_mask = 16'hEEEE;
defparam \data_out~7 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \data_out~8 (
	.dataa(reset_n),
	.datab(q_a_8),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\data_out~8_combout ),
	.cout());
defparam \data_out~8 .lut_mask = 16'hEEEE;
defparam \data_out~8 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \data_out~9 (
	.dataa(reset_n),
	.datab(q_a_9),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\data_out~9_combout ),
	.cout());
defparam \data_out~9 .lut_mask = 16'hEEEE;
defparam \data_out~9 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \data_out~10 (
	.dataa(reset_n),
	.datab(q_a_10),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\data_out~10_combout ),
	.cout());
defparam \data_out~10 .lut_mask = 16'hEEEE;
defparam \data_out~10 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \data_out~11 (
	.dataa(reset_n),
	.datab(q_a_11),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\data_out~11_combout ),
	.cout());
defparam \data_out~11 .lut_mask = 16'hEEEE;
defparam \data_out~11 .sum_lutc_input = "datac";

endmodule

module nco_asj_nco_pxx (
	pipeline_dffe_1,
	pipeline_dffe_2,
	pipeline_dffe_3,
	pipeline_dffe_4,
	pipeline_dffe_5,
	pipeline_dffe_6,
	pipeline_dffe_7,
	pipeline_dffe_8,
	pipeline_dffe_9,
	pipeline_dffe_10,
	pipeline_dffe_11,
	pipeline_dffe_12,
	pipeline_dffe_13,
	data_out_0,
	dxxpdo_5,
	dxxpdo_4,
	dxxpdo_6,
	dxxpdo_7,
	dxxpdo_8,
	dxxpdo_9,
	dxxpdo_10,
	dxxpdo_11,
	dxxpdo_12,
	dxxpdo_13,
	dxxpdo_14,
	dxxpdo_15,
	dxxpdo_16,
	dxxpdo_17,
	reset_n,
	clk,
	clken,
	phase_mod_i_1,
	phase_mod_i_0,
	phase_mod_i_2,
	phase_mod_i_3,
	phase_mod_i_4,
	phase_mod_i_5,
	phase_mod_i_6,
	phase_mod_i_7,
	phase_mod_i_8,
	phase_mod_i_9,
	phase_mod_i_10,
	phase_mod_i_11,
	phase_mod_i_12,
	phase_mod_i_13)/* synthesis synthesis_greybox=1 */;
output 	pipeline_dffe_1;
output 	pipeline_dffe_2;
output 	pipeline_dffe_3;
output 	pipeline_dffe_4;
output 	pipeline_dffe_5;
output 	pipeline_dffe_6;
output 	pipeline_dffe_7;
output 	pipeline_dffe_8;
output 	pipeline_dffe_9;
output 	pipeline_dffe_10;
output 	pipeline_dffe_11;
output 	pipeline_dffe_12;
output 	pipeline_dffe_13;
input 	data_out_0;
input 	dxxpdo_5;
input 	dxxpdo_4;
input 	dxxpdo_6;
input 	dxxpdo_7;
input 	dxxpdo_8;
input 	dxxpdo_9;
input 	dxxpdo_10;
input 	dxxpdo_11;
input 	dxxpdo_12;
input 	dxxpdo_13;
input 	dxxpdo_14;
input 	dxxpdo_15;
input 	dxxpdo_16;
input 	dxxpdo_17;
input 	reset_n;
input 	clk;
input 	clken;
input 	phase_mod_i_1;
input 	phase_mod_i_0;
input 	phase_mod_i_2;
input 	phase_mod_i_3;
input 	phase_mod_i_4;
input 	phase_mod_i_5;
input 	phase_mod_i_6;
input 	phase_mod_i_7;
input 	phase_mod_i_8;
input 	phase_mod_i_9;
input 	phase_mod_i_10;
input 	phase_mod_i_11;
input 	phase_mod_i_12;
input 	phase_mod_i_13;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \phi_mod_int_reg[2][1]~q ;
wire \phi_mod_int_reg[2][0]~q ;
wire \phi_mod_int_reg[2][2]~q ;
wire \phi_mod_int_reg[2][3]~q ;
wire \phi_mod_int_reg[2][4]~q ;
wire \phi_mod_int_reg[2][5]~q ;
wire \phi_mod_int_reg[2][6]~q ;
wire \phi_mod_int_reg[2][7]~q ;
wire \phi_mod_int_reg[2][8]~q ;
wire \phi_mod_int_reg[2][9]~q ;
wire \phi_mod_int_reg[2][10]~q ;
wire \phi_mod_int_reg[2][11]~q ;
wire \phi_mod_int_reg[2][12]~q ;
wire \phi_mod_int_reg[2][13]~q ;
wire \phi_mod_int_reg[1][1]~q ;
wire \phi_mod_int_reg~0_combout ;
wire \phi_mod_int_reg[1][0]~q ;
wire \phi_mod_int_reg~1_combout ;
wire \phi_mod_int_reg[1][2]~q ;
wire \phi_mod_int_reg~2_combout ;
wire \phi_mod_int_reg[1][3]~q ;
wire \phi_mod_int_reg~3_combout ;
wire \phi_mod_int_reg[1][4]~q ;
wire \phi_mod_int_reg~4_combout ;
wire \phi_mod_int_reg[1][5]~q ;
wire \phi_mod_int_reg~5_combout ;
wire \phi_mod_int_reg[1][6]~q ;
wire \phi_mod_int_reg~6_combout ;
wire \phi_mod_int_reg[1][7]~q ;
wire \phi_mod_int_reg~7_combout ;
wire \phi_mod_int_reg[1][8]~q ;
wire \phi_mod_int_reg~8_combout ;
wire \phi_mod_int_reg[1][9]~q ;
wire \phi_mod_int_reg~9_combout ;
wire \phi_mod_int_reg[1][10]~q ;
wire \phi_mod_int_reg~10_combout ;
wire \phi_mod_int_reg[1][11]~q ;
wire \phi_mod_int_reg~11_combout ;
wire \phi_mod_int_reg[1][12]~q ;
wire \phi_mod_int_reg~12_combout ;
wire \phi_mod_int_reg[1][13]~q ;
wire \phi_mod_int_reg~13_combout ;
wire \phi_mod_int_reg[0][1]~q ;
wire \phi_mod_int_reg~14_combout ;
wire \phi_mod_int_reg[0][0]~q ;
wire \phi_mod_int_reg~15_combout ;
wire \phi_mod_int_reg[0][2]~q ;
wire \phi_mod_int_reg~16_combout ;
wire \phi_mod_int_reg[0][3]~q ;
wire \phi_mod_int_reg~17_combout ;
wire \phi_mod_int_reg[0][4]~q ;
wire \phi_mod_int_reg~18_combout ;
wire \phi_mod_int_reg[0][5]~q ;
wire \phi_mod_int_reg~19_combout ;
wire \phi_mod_int_reg[0][6]~q ;
wire \phi_mod_int_reg~20_combout ;
wire \phi_mod_int_reg[0][7]~q ;
wire \phi_mod_int_reg~21_combout ;
wire \phi_mod_int_reg[0][8]~q ;
wire \phi_mod_int_reg~22_combout ;
wire \phi_mod_int_reg[0][9]~q ;
wire \phi_mod_int_reg~23_combout ;
wire \phi_mod_int_reg[0][10]~q ;
wire \phi_mod_int_reg~24_combout ;
wire \phi_mod_int_reg[0][11]~q ;
wire \phi_mod_int_reg~25_combout ;
wire \phi_mod_int_reg[0][12]~q ;
wire \phi_mod_int_reg~26_combout ;
wire \phi_mod_int_reg[0][13]~q ;
wire \phi_mod_int_reg~27_combout ;
wire \phi_mod_int_reg~28_combout ;
wire \phi_mod_int_reg~29_combout ;
wire \phi_mod_int_reg~30_combout ;
wire \phi_mod_int_reg~31_combout ;
wire \phi_mod_int_reg~32_combout ;
wire \phi_mod_int_reg~33_combout ;
wire \phi_mod_int_reg~34_combout ;
wire \phi_mod_int_reg~35_combout ;
wire \phi_mod_int_reg~36_combout ;
wire \phi_mod_int_reg~37_combout ;
wire \phi_mod_int_reg~38_combout ;
wire \phi_mod_int_reg~39_combout ;
wire \phi_mod_int_reg~40_combout ;
wire \phi_mod_int_reg~41_combout ;


nco_lpm_add_sub_2 acc(
	.pipeline_dffe_1(pipeline_dffe_1),
	.pipeline_dffe_2(pipeline_dffe_2),
	.pipeline_dffe_3(pipeline_dffe_3),
	.pipeline_dffe_4(pipeline_dffe_4),
	.pipeline_dffe_5(pipeline_dffe_5),
	.pipeline_dffe_6(pipeline_dffe_6),
	.pipeline_dffe_7(pipeline_dffe_7),
	.pipeline_dffe_8(pipeline_dffe_8),
	.pipeline_dffe_9(pipeline_dffe_9),
	.pipeline_dffe_10(pipeline_dffe_10),
	.pipeline_dffe_11(pipeline_dffe_11),
	.pipeline_dffe_12(pipeline_dffe_12),
	.pipeline_dffe_13(pipeline_dffe_13),
	.phi_mod_int_reg_1_2(\phi_mod_int_reg[2][1]~q ),
	.dxxpdo_5(dxxpdo_5),
	.phi_mod_int_reg_0_2(\phi_mod_int_reg[2][0]~q ),
	.dxxpdo_4(dxxpdo_4),
	.phi_mod_int_reg_2_2(\phi_mod_int_reg[2][2]~q ),
	.dxxpdo_6(dxxpdo_6),
	.phi_mod_int_reg_3_2(\phi_mod_int_reg[2][3]~q ),
	.dxxpdo_7(dxxpdo_7),
	.phi_mod_int_reg_4_2(\phi_mod_int_reg[2][4]~q ),
	.dxxpdo_8(dxxpdo_8),
	.phi_mod_int_reg_5_2(\phi_mod_int_reg[2][5]~q ),
	.dxxpdo_9(dxxpdo_9),
	.phi_mod_int_reg_6_2(\phi_mod_int_reg[2][6]~q ),
	.dxxpdo_10(dxxpdo_10),
	.phi_mod_int_reg_7_2(\phi_mod_int_reg[2][7]~q ),
	.dxxpdo_11(dxxpdo_11),
	.phi_mod_int_reg_8_2(\phi_mod_int_reg[2][8]~q ),
	.dxxpdo_12(dxxpdo_12),
	.phi_mod_int_reg_9_2(\phi_mod_int_reg[2][9]~q ),
	.dxxpdo_13(dxxpdo_13),
	.phi_mod_int_reg_10_2(\phi_mod_int_reg[2][10]~q ),
	.dxxpdo_14(dxxpdo_14),
	.phi_mod_int_reg_11_2(\phi_mod_int_reg[2][11]~q ),
	.dxxpdo_15(dxxpdo_15),
	.phi_mod_int_reg_12_2(\phi_mod_int_reg[2][12]~q ),
	.dxxpdo_16(dxxpdo_16),
	.phi_mod_int_reg_13_2(\phi_mod_int_reg[2][13]~q ),
	.dxxpdo_17(dxxpdo_17),
	.reset_n(reset_n),
	.clock(clk),
	.clken(clken));

dffeas \phi_mod_int_reg[2][1] (
	.clk(clk),
	.d(\phi_mod_int_reg~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_mod_int_reg[2][1]~q ),
	.prn(vcc));
defparam \phi_mod_int_reg[2][1] .is_wysiwyg = "true";
defparam \phi_mod_int_reg[2][1] .power_up = "low";

dffeas \phi_mod_int_reg[2][0] (
	.clk(clk),
	.d(\phi_mod_int_reg~1_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_mod_int_reg[2][0]~q ),
	.prn(vcc));
defparam \phi_mod_int_reg[2][0] .is_wysiwyg = "true";
defparam \phi_mod_int_reg[2][0] .power_up = "low";

dffeas \phi_mod_int_reg[2][2] (
	.clk(clk),
	.d(\phi_mod_int_reg~2_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_mod_int_reg[2][2]~q ),
	.prn(vcc));
defparam \phi_mod_int_reg[2][2] .is_wysiwyg = "true";
defparam \phi_mod_int_reg[2][2] .power_up = "low";

dffeas \phi_mod_int_reg[2][3] (
	.clk(clk),
	.d(\phi_mod_int_reg~3_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_mod_int_reg[2][3]~q ),
	.prn(vcc));
defparam \phi_mod_int_reg[2][3] .is_wysiwyg = "true";
defparam \phi_mod_int_reg[2][3] .power_up = "low";

dffeas \phi_mod_int_reg[2][4] (
	.clk(clk),
	.d(\phi_mod_int_reg~4_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_mod_int_reg[2][4]~q ),
	.prn(vcc));
defparam \phi_mod_int_reg[2][4] .is_wysiwyg = "true";
defparam \phi_mod_int_reg[2][4] .power_up = "low";

dffeas \phi_mod_int_reg[2][5] (
	.clk(clk),
	.d(\phi_mod_int_reg~5_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_mod_int_reg[2][5]~q ),
	.prn(vcc));
defparam \phi_mod_int_reg[2][5] .is_wysiwyg = "true";
defparam \phi_mod_int_reg[2][5] .power_up = "low";

dffeas \phi_mod_int_reg[2][6] (
	.clk(clk),
	.d(\phi_mod_int_reg~6_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_mod_int_reg[2][6]~q ),
	.prn(vcc));
defparam \phi_mod_int_reg[2][6] .is_wysiwyg = "true";
defparam \phi_mod_int_reg[2][6] .power_up = "low";

dffeas \phi_mod_int_reg[2][7] (
	.clk(clk),
	.d(\phi_mod_int_reg~7_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_mod_int_reg[2][7]~q ),
	.prn(vcc));
defparam \phi_mod_int_reg[2][7] .is_wysiwyg = "true";
defparam \phi_mod_int_reg[2][7] .power_up = "low";

dffeas \phi_mod_int_reg[2][8] (
	.clk(clk),
	.d(\phi_mod_int_reg~8_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_mod_int_reg[2][8]~q ),
	.prn(vcc));
defparam \phi_mod_int_reg[2][8] .is_wysiwyg = "true";
defparam \phi_mod_int_reg[2][8] .power_up = "low";

dffeas \phi_mod_int_reg[2][9] (
	.clk(clk),
	.d(\phi_mod_int_reg~9_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_mod_int_reg[2][9]~q ),
	.prn(vcc));
defparam \phi_mod_int_reg[2][9] .is_wysiwyg = "true";
defparam \phi_mod_int_reg[2][9] .power_up = "low";

dffeas \phi_mod_int_reg[2][10] (
	.clk(clk),
	.d(\phi_mod_int_reg~10_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_mod_int_reg[2][10]~q ),
	.prn(vcc));
defparam \phi_mod_int_reg[2][10] .is_wysiwyg = "true";
defparam \phi_mod_int_reg[2][10] .power_up = "low";

dffeas \phi_mod_int_reg[2][11] (
	.clk(clk),
	.d(\phi_mod_int_reg~11_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_mod_int_reg[2][11]~q ),
	.prn(vcc));
defparam \phi_mod_int_reg[2][11] .is_wysiwyg = "true";
defparam \phi_mod_int_reg[2][11] .power_up = "low";

dffeas \phi_mod_int_reg[2][12] (
	.clk(clk),
	.d(\phi_mod_int_reg~12_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_mod_int_reg[2][12]~q ),
	.prn(vcc));
defparam \phi_mod_int_reg[2][12] .is_wysiwyg = "true";
defparam \phi_mod_int_reg[2][12] .power_up = "low";

dffeas \phi_mod_int_reg[2][13] (
	.clk(clk),
	.d(\phi_mod_int_reg~13_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_mod_int_reg[2][13]~q ),
	.prn(vcc));
defparam \phi_mod_int_reg[2][13] .is_wysiwyg = "true";
defparam \phi_mod_int_reg[2][13] .power_up = "low";

dffeas \phi_mod_int_reg[1][1] (
	.clk(clk),
	.d(\phi_mod_int_reg~14_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_mod_int_reg[1][1]~q ),
	.prn(vcc));
defparam \phi_mod_int_reg[1][1] .is_wysiwyg = "true";
defparam \phi_mod_int_reg[1][1] .power_up = "low";

fiftyfivenm_lcell_comb \phi_mod_int_reg~0 (
	.dataa(reset_n),
	.datab(\phi_mod_int_reg[1][1]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_mod_int_reg~0_combout ),
	.cout());
defparam \phi_mod_int_reg~0 .lut_mask = 16'hEEEE;
defparam \phi_mod_int_reg~0 .sum_lutc_input = "datac";

dffeas \phi_mod_int_reg[1][0] (
	.clk(clk),
	.d(\phi_mod_int_reg~15_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_mod_int_reg[1][0]~q ),
	.prn(vcc));
defparam \phi_mod_int_reg[1][0] .is_wysiwyg = "true";
defparam \phi_mod_int_reg[1][0] .power_up = "low";

fiftyfivenm_lcell_comb \phi_mod_int_reg~1 (
	.dataa(reset_n),
	.datab(\phi_mod_int_reg[1][0]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_mod_int_reg~1_combout ),
	.cout());
defparam \phi_mod_int_reg~1 .lut_mask = 16'hEEEE;
defparam \phi_mod_int_reg~1 .sum_lutc_input = "datac";

dffeas \phi_mod_int_reg[1][2] (
	.clk(clk),
	.d(\phi_mod_int_reg~16_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_mod_int_reg[1][2]~q ),
	.prn(vcc));
defparam \phi_mod_int_reg[1][2] .is_wysiwyg = "true";
defparam \phi_mod_int_reg[1][2] .power_up = "low";

fiftyfivenm_lcell_comb \phi_mod_int_reg~2 (
	.dataa(reset_n),
	.datab(\phi_mod_int_reg[1][2]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_mod_int_reg~2_combout ),
	.cout());
defparam \phi_mod_int_reg~2 .lut_mask = 16'hEEEE;
defparam \phi_mod_int_reg~2 .sum_lutc_input = "datac";

dffeas \phi_mod_int_reg[1][3] (
	.clk(clk),
	.d(\phi_mod_int_reg~17_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_mod_int_reg[1][3]~q ),
	.prn(vcc));
defparam \phi_mod_int_reg[1][3] .is_wysiwyg = "true";
defparam \phi_mod_int_reg[1][3] .power_up = "low";

fiftyfivenm_lcell_comb \phi_mod_int_reg~3 (
	.dataa(reset_n),
	.datab(\phi_mod_int_reg[1][3]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_mod_int_reg~3_combout ),
	.cout());
defparam \phi_mod_int_reg~3 .lut_mask = 16'hEEEE;
defparam \phi_mod_int_reg~3 .sum_lutc_input = "datac";

dffeas \phi_mod_int_reg[1][4] (
	.clk(clk),
	.d(\phi_mod_int_reg~18_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_mod_int_reg[1][4]~q ),
	.prn(vcc));
defparam \phi_mod_int_reg[1][4] .is_wysiwyg = "true";
defparam \phi_mod_int_reg[1][4] .power_up = "low";

fiftyfivenm_lcell_comb \phi_mod_int_reg~4 (
	.dataa(reset_n),
	.datab(\phi_mod_int_reg[1][4]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_mod_int_reg~4_combout ),
	.cout());
defparam \phi_mod_int_reg~4 .lut_mask = 16'hEEEE;
defparam \phi_mod_int_reg~4 .sum_lutc_input = "datac";

dffeas \phi_mod_int_reg[1][5] (
	.clk(clk),
	.d(\phi_mod_int_reg~19_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_mod_int_reg[1][5]~q ),
	.prn(vcc));
defparam \phi_mod_int_reg[1][5] .is_wysiwyg = "true";
defparam \phi_mod_int_reg[1][5] .power_up = "low";

fiftyfivenm_lcell_comb \phi_mod_int_reg~5 (
	.dataa(reset_n),
	.datab(\phi_mod_int_reg[1][5]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_mod_int_reg~5_combout ),
	.cout());
defparam \phi_mod_int_reg~5 .lut_mask = 16'hEEEE;
defparam \phi_mod_int_reg~5 .sum_lutc_input = "datac";

dffeas \phi_mod_int_reg[1][6] (
	.clk(clk),
	.d(\phi_mod_int_reg~20_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_mod_int_reg[1][6]~q ),
	.prn(vcc));
defparam \phi_mod_int_reg[1][6] .is_wysiwyg = "true";
defparam \phi_mod_int_reg[1][6] .power_up = "low";

fiftyfivenm_lcell_comb \phi_mod_int_reg~6 (
	.dataa(reset_n),
	.datab(\phi_mod_int_reg[1][6]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_mod_int_reg~6_combout ),
	.cout());
defparam \phi_mod_int_reg~6 .lut_mask = 16'hEEEE;
defparam \phi_mod_int_reg~6 .sum_lutc_input = "datac";

dffeas \phi_mod_int_reg[1][7] (
	.clk(clk),
	.d(\phi_mod_int_reg~21_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_mod_int_reg[1][7]~q ),
	.prn(vcc));
defparam \phi_mod_int_reg[1][7] .is_wysiwyg = "true";
defparam \phi_mod_int_reg[1][7] .power_up = "low";

fiftyfivenm_lcell_comb \phi_mod_int_reg~7 (
	.dataa(reset_n),
	.datab(\phi_mod_int_reg[1][7]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_mod_int_reg~7_combout ),
	.cout());
defparam \phi_mod_int_reg~7 .lut_mask = 16'hEEEE;
defparam \phi_mod_int_reg~7 .sum_lutc_input = "datac";

dffeas \phi_mod_int_reg[1][8] (
	.clk(clk),
	.d(\phi_mod_int_reg~22_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_mod_int_reg[1][8]~q ),
	.prn(vcc));
defparam \phi_mod_int_reg[1][8] .is_wysiwyg = "true";
defparam \phi_mod_int_reg[1][8] .power_up = "low";

fiftyfivenm_lcell_comb \phi_mod_int_reg~8 (
	.dataa(reset_n),
	.datab(\phi_mod_int_reg[1][8]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_mod_int_reg~8_combout ),
	.cout());
defparam \phi_mod_int_reg~8 .lut_mask = 16'hEEEE;
defparam \phi_mod_int_reg~8 .sum_lutc_input = "datac";

dffeas \phi_mod_int_reg[1][9] (
	.clk(clk),
	.d(\phi_mod_int_reg~23_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_mod_int_reg[1][9]~q ),
	.prn(vcc));
defparam \phi_mod_int_reg[1][9] .is_wysiwyg = "true";
defparam \phi_mod_int_reg[1][9] .power_up = "low";

fiftyfivenm_lcell_comb \phi_mod_int_reg~9 (
	.dataa(reset_n),
	.datab(\phi_mod_int_reg[1][9]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_mod_int_reg~9_combout ),
	.cout());
defparam \phi_mod_int_reg~9 .lut_mask = 16'hEEEE;
defparam \phi_mod_int_reg~9 .sum_lutc_input = "datac";

dffeas \phi_mod_int_reg[1][10] (
	.clk(clk),
	.d(\phi_mod_int_reg~24_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_mod_int_reg[1][10]~q ),
	.prn(vcc));
defparam \phi_mod_int_reg[1][10] .is_wysiwyg = "true";
defparam \phi_mod_int_reg[1][10] .power_up = "low";

fiftyfivenm_lcell_comb \phi_mod_int_reg~10 (
	.dataa(reset_n),
	.datab(\phi_mod_int_reg[1][10]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_mod_int_reg~10_combout ),
	.cout());
defparam \phi_mod_int_reg~10 .lut_mask = 16'hEEEE;
defparam \phi_mod_int_reg~10 .sum_lutc_input = "datac";

dffeas \phi_mod_int_reg[1][11] (
	.clk(clk),
	.d(\phi_mod_int_reg~25_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_mod_int_reg[1][11]~q ),
	.prn(vcc));
defparam \phi_mod_int_reg[1][11] .is_wysiwyg = "true";
defparam \phi_mod_int_reg[1][11] .power_up = "low";

fiftyfivenm_lcell_comb \phi_mod_int_reg~11 (
	.dataa(reset_n),
	.datab(\phi_mod_int_reg[1][11]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_mod_int_reg~11_combout ),
	.cout());
defparam \phi_mod_int_reg~11 .lut_mask = 16'hEEEE;
defparam \phi_mod_int_reg~11 .sum_lutc_input = "datac";

dffeas \phi_mod_int_reg[1][12] (
	.clk(clk),
	.d(\phi_mod_int_reg~26_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_mod_int_reg[1][12]~q ),
	.prn(vcc));
defparam \phi_mod_int_reg[1][12] .is_wysiwyg = "true";
defparam \phi_mod_int_reg[1][12] .power_up = "low";

fiftyfivenm_lcell_comb \phi_mod_int_reg~12 (
	.dataa(reset_n),
	.datab(\phi_mod_int_reg[1][12]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_mod_int_reg~12_combout ),
	.cout());
defparam \phi_mod_int_reg~12 .lut_mask = 16'hEEEE;
defparam \phi_mod_int_reg~12 .sum_lutc_input = "datac";

dffeas \phi_mod_int_reg[1][13] (
	.clk(clk),
	.d(\phi_mod_int_reg~27_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_mod_int_reg[1][13]~q ),
	.prn(vcc));
defparam \phi_mod_int_reg[1][13] .is_wysiwyg = "true";
defparam \phi_mod_int_reg[1][13] .power_up = "low";

fiftyfivenm_lcell_comb \phi_mod_int_reg~13 (
	.dataa(reset_n),
	.datab(\phi_mod_int_reg[1][13]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_mod_int_reg~13_combout ),
	.cout());
defparam \phi_mod_int_reg~13 .lut_mask = 16'hEEEE;
defparam \phi_mod_int_reg~13 .sum_lutc_input = "datac";

dffeas \phi_mod_int_reg[0][1] (
	.clk(clk),
	.d(\phi_mod_int_reg~28_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_mod_int_reg[0][1]~q ),
	.prn(vcc));
defparam \phi_mod_int_reg[0][1] .is_wysiwyg = "true";
defparam \phi_mod_int_reg[0][1] .power_up = "low";

fiftyfivenm_lcell_comb \phi_mod_int_reg~14 (
	.dataa(reset_n),
	.datab(\phi_mod_int_reg[0][1]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_mod_int_reg~14_combout ),
	.cout());
defparam \phi_mod_int_reg~14 .lut_mask = 16'hEEEE;
defparam \phi_mod_int_reg~14 .sum_lutc_input = "datac";

dffeas \phi_mod_int_reg[0][0] (
	.clk(clk),
	.d(\phi_mod_int_reg~29_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_mod_int_reg[0][0]~q ),
	.prn(vcc));
defparam \phi_mod_int_reg[0][0] .is_wysiwyg = "true";
defparam \phi_mod_int_reg[0][0] .power_up = "low";

fiftyfivenm_lcell_comb \phi_mod_int_reg~15 (
	.dataa(reset_n),
	.datab(\phi_mod_int_reg[0][0]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_mod_int_reg~15_combout ),
	.cout());
defparam \phi_mod_int_reg~15 .lut_mask = 16'hEEEE;
defparam \phi_mod_int_reg~15 .sum_lutc_input = "datac";

dffeas \phi_mod_int_reg[0][2] (
	.clk(clk),
	.d(\phi_mod_int_reg~30_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_mod_int_reg[0][2]~q ),
	.prn(vcc));
defparam \phi_mod_int_reg[0][2] .is_wysiwyg = "true";
defparam \phi_mod_int_reg[0][2] .power_up = "low";

fiftyfivenm_lcell_comb \phi_mod_int_reg~16 (
	.dataa(reset_n),
	.datab(\phi_mod_int_reg[0][2]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_mod_int_reg~16_combout ),
	.cout());
defparam \phi_mod_int_reg~16 .lut_mask = 16'hEEEE;
defparam \phi_mod_int_reg~16 .sum_lutc_input = "datac";

dffeas \phi_mod_int_reg[0][3] (
	.clk(clk),
	.d(\phi_mod_int_reg~31_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_mod_int_reg[0][3]~q ),
	.prn(vcc));
defparam \phi_mod_int_reg[0][3] .is_wysiwyg = "true";
defparam \phi_mod_int_reg[0][3] .power_up = "low";

fiftyfivenm_lcell_comb \phi_mod_int_reg~17 (
	.dataa(reset_n),
	.datab(\phi_mod_int_reg[0][3]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_mod_int_reg~17_combout ),
	.cout());
defparam \phi_mod_int_reg~17 .lut_mask = 16'hEEEE;
defparam \phi_mod_int_reg~17 .sum_lutc_input = "datac";

dffeas \phi_mod_int_reg[0][4] (
	.clk(clk),
	.d(\phi_mod_int_reg~32_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_mod_int_reg[0][4]~q ),
	.prn(vcc));
defparam \phi_mod_int_reg[0][4] .is_wysiwyg = "true";
defparam \phi_mod_int_reg[0][4] .power_up = "low";

fiftyfivenm_lcell_comb \phi_mod_int_reg~18 (
	.dataa(reset_n),
	.datab(\phi_mod_int_reg[0][4]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_mod_int_reg~18_combout ),
	.cout());
defparam \phi_mod_int_reg~18 .lut_mask = 16'hEEEE;
defparam \phi_mod_int_reg~18 .sum_lutc_input = "datac";

dffeas \phi_mod_int_reg[0][5] (
	.clk(clk),
	.d(\phi_mod_int_reg~33_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_mod_int_reg[0][5]~q ),
	.prn(vcc));
defparam \phi_mod_int_reg[0][5] .is_wysiwyg = "true";
defparam \phi_mod_int_reg[0][5] .power_up = "low";

fiftyfivenm_lcell_comb \phi_mod_int_reg~19 (
	.dataa(reset_n),
	.datab(\phi_mod_int_reg[0][5]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_mod_int_reg~19_combout ),
	.cout());
defparam \phi_mod_int_reg~19 .lut_mask = 16'hEEEE;
defparam \phi_mod_int_reg~19 .sum_lutc_input = "datac";

dffeas \phi_mod_int_reg[0][6] (
	.clk(clk),
	.d(\phi_mod_int_reg~34_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_mod_int_reg[0][6]~q ),
	.prn(vcc));
defparam \phi_mod_int_reg[0][6] .is_wysiwyg = "true";
defparam \phi_mod_int_reg[0][6] .power_up = "low";

fiftyfivenm_lcell_comb \phi_mod_int_reg~20 (
	.dataa(reset_n),
	.datab(\phi_mod_int_reg[0][6]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_mod_int_reg~20_combout ),
	.cout());
defparam \phi_mod_int_reg~20 .lut_mask = 16'hEEEE;
defparam \phi_mod_int_reg~20 .sum_lutc_input = "datac";

dffeas \phi_mod_int_reg[0][7] (
	.clk(clk),
	.d(\phi_mod_int_reg~35_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_mod_int_reg[0][7]~q ),
	.prn(vcc));
defparam \phi_mod_int_reg[0][7] .is_wysiwyg = "true";
defparam \phi_mod_int_reg[0][7] .power_up = "low";

fiftyfivenm_lcell_comb \phi_mod_int_reg~21 (
	.dataa(reset_n),
	.datab(\phi_mod_int_reg[0][7]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_mod_int_reg~21_combout ),
	.cout());
defparam \phi_mod_int_reg~21 .lut_mask = 16'hEEEE;
defparam \phi_mod_int_reg~21 .sum_lutc_input = "datac";

dffeas \phi_mod_int_reg[0][8] (
	.clk(clk),
	.d(\phi_mod_int_reg~36_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_mod_int_reg[0][8]~q ),
	.prn(vcc));
defparam \phi_mod_int_reg[0][8] .is_wysiwyg = "true";
defparam \phi_mod_int_reg[0][8] .power_up = "low";

fiftyfivenm_lcell_comb \phi_mod_int_reg~22 (
	.dataa(reset_n),
	.datab(\phi_mod_int_reg[0][8]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_mod_int_reg~22_combout ),
	.cout());
defparam \phi_mod_int_reg~22 .lut_mask = 16'hEEEE;
defparam \phi_mod_int_reg~22 .sum_lutc_input = "datac";

dffeas \phi_mod_int_reg[0][9] (
	.clk(clk),
	.d(\phi_mod_int_reg~37_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_mod_int_reg[0][9]~q ),
	.prn(vcc));
defparam \phi_mod_int_reg[0][9] .is_wysiwyg = "true";
defparam \phi_mod_int_reg[0][9] .power_up = "low";

fiftyfivenm_lcell_comb \phi_mod_int_reg~23 (
	.dataa(reset_n),
	.datab(\phi_mod_int_reg[0][9]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_mod_int_reg~23_combout ),
	.cout());
defparam \phi_mod_int_reg~23 .lut_mask = 16'hEEEE;
defparam \phi_mod_int_reg~23 .sum_lutc_input = "datac";

dffeas \phi_mod_int_reg[0][10] (
	.clk(clk),
	.d(\phi_mod_int_reg~38_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_mod_int_reg[0][10]~q ),
	.prn(vcc));
defparam \phi_mod_int_reg[0][10] .is_wysiwyg = "true";
defparam \phi_mod_int_reg[0][10] .power_up = "low";

fiftyfivenm_lcell_comb \phi_mod_int_reg~24 (
	.dataa(reset_n),
	.datab(\phi_mod_int_reg[0][10]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_mod_int_reg~24_combout ),
	.cout());
defparam \phi_mod_int_reg~24 .lut_mask = 16'hEEEE;
defparam \phi_mod_int_reg~24 .sum_lutc_input = "datac";

dffeas \phi_mod_int_reg[0][11] (
	.clk(clk),
	.d(\phi_mod_int_reg~39_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_mod_int_reg[0][11]~q ),
	.prn(vcc));
defparam \phi_mod_int_reg[0][11] .is_wysiwyg = "true";
defparam \phi_mod_int_reg[0][11] .power_up = "low";

fiftyfivenm_lcell_comb \phi_mod_int_reg~25 (
	.dataa(reset_n),
	.datab(\phi_mod_int_reg[0][11]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_mod_int_reg~25_combout ),
	.cout());
defparam \phi_mod_int_reg~25 .lut_mask = 16'hEEEE;
defparam \phi_mod_int_reg~25 .sum_lutc_input = "datac";

dffeas \phi_mod_int_reg[0][12] (
	.clk(clk),
	.d(\phi_mod_int_reg~40_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_mod_int_reg[0][12]~q ),
	.prn(vcc));
defparam \phi_mod_int_reg[0][12] .is_wysiwyg = "true";
defparam \phi_mod_int_reg[0][12] .power_up = "low";

fiftyfivenm_lcell_comb \phi_mod_int_reg~26 (
	.dataa(reset_n),
	.datab(\phi_mod_int_reg[0][12]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_mod_int_reg~26_combout ),
	.cout());
defparam \phi_mod_int_reg~26 .lut_mask = 16'hEEEE;
defparam \phi_mod_int_reg~26 .sum_lutc_input = "datac";

dffeas \phi_mod_int_reg[0][13] (
	.clk(clk),
	.d(\phi_mod_int_reg~41_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(data_out_0),
	.q(\phi_mod_int_reg[0][13]~q ),
	.prn(vcc));
defparam \phi_mod_int_reg[0][13] .is_wysiwyg = "true";
defparam \phi_mod_int_reg[0][13] .power_up = "low";

fiftyfivenm_lcell_comb \phi_mod_int_reg~27 (
	.dataa(reset_n),
	.datab(\phi_mod_int_reg[0][13]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_mod_int_reg~27_combout ),
	.cout());
defparam \phi_mod_int_reg~27 .lut_mask = 16'hEEEE;
defparam \phi_mod_int_reg~27 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \phi_mod_int_reg~28 (
	.dataa(reset_n),
	.datab(phase_mod_i_1),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_mod_int_reg~28_combout ),
	.cout());
defparam \phi_mod_int_reg~28 .lut_mask = 16'hEEEE;
defparam \phi_mod_int_reg~28 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \phi_mod_int_reg~29 (
	.dataa(reset_n),
	.datab(phase_mod_i_0),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_mod_int_reg~29_combout ),
	.cout());
defparam \phi_mod_int_reg~29 .lut_mask = 16'hEEEE;
defparam \phi_mod_int_reg~29 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \phi_mod_int_reg~30 (
	.dataa(reset_n),
	.datab(phase_mod_i_2),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_mod_int_reg~30_combout ),
	.cout());
defparam \phi_mod_int_reg~30 .lut_mask = 16'hEEEE;
defparam \phi_mod_int_reg~30 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \phi_mod_int_reg~31 (
	.dataa(reset_n),
	.datab(phase_mod_i_3),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_mod_int_reg~31_combout ),
	.cout());
defparam \phi_mod_int_reg~31 .lut_mask = 16'hEEEE;
defparam \phi_mod_int_reg~31 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \phi_mod_int_reg~32 (
	.dataa(reset_n),
	.datab(phase_mod_i_4),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_mod_int_reg~32_combout ),
	.cout());
defparam \phi_mod_int_reg~32 .lut_mask = 16'hEEEE;
defparam \phi_mod_int_reg~32 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \phi_mod_int_reg~33 (
	.dataa(reset_n),
	.datab(phase_mod_i_5),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_mod_int_reg~33_combout ),
	.cout());
defparam \phi_mod_int_reg~33 .lut_mask = 16'hEEEE;
defparam \phi_mod_int_reg~33 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \phi_mod_int_reg~34 (
	.dataa(reset_n),
	.datab(phase_mod_i_6),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_mod_int_reg~34_combout ),
	.cout());
defparam \phi_mod_int_reg~34 .lut_mask = 16'hEEEE;
defparam \phi_mod_int_reg~34 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \phi_mod_int_reg~35 (
	.dataa(reset_n),
	.datab(phase_mod_i_7),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_mod_int_reg~35_combout ),
	.cout());
defparam \phi_mod_int_reg~35 .lut_mask = 16'hEEEE;
defparam \phi_mod_int_reg~35 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \phi_mod_int_reg~36 (
	.dataa(reset_n),
	.datab(phase_mod_i_8),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_mod_int_reg~36_combout ),
	.cout());
defparam \phi_mod_int_reg~36 .lut_mask = 16'hEEEE;
defparam \phi_mod_int_reg~36 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \phi_mod_int_reg~37 (
	.dataa(reset_n),
	.datab(phase_mod_i_9),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_mod_int_reg~37_combout ),
	.cout());
defparam \phi_mod_int_reg~37 .lut_mask = 16'hEEEE;
defparam \phi_mod_int_reg~37 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \phi_mod_int_reg~38 (
	.dataa(reset_n),
	.datab(phase_mod_i_10),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_mod_int_reg~38_combout ),
	.cout());
defparam \phi_mod_int_reg~38 .lut_mask = 16'hEEEE;
defparam \phi_mod_int_reg~38 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \phi_mod_int_reg~39 (
	.dataa(reset_n),
	.datab(phase_mod_i_11),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_mod_int_reg~39_combout ),
	.cout());
defparam \phi_mod_int_reg~39 .lut_mask = 16'hEEEE;
defparam \phi_mod_int_reg~39 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \phi_mod_int_reg~40 (
	.dataa(reset_n),
	.datab(phase_mod_i_12),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_mod_int_reg~40_combout ),
	.cout());
defparam \phi_mod_int_reg~40 .lut_mask = 16'hEEEE;
defparam \phi_mod_int_reg~40 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \phi_mod_int_reg~41 (
	.dataa(reset_n),
	.datab(phase_mod_i_13),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\phi_mod_int_reg~41_combout ),
	.cout());
defparam \phi_mod_int_reg~41 .lut_mask = 16'hEEEE;
defparam \phi_mod_int_reg~41 .sum_lutc_input = "datac";

endmodule

module nco_lpm_add_sub_2 (
	pipeline_dffe_1,
	pipeline_dffe_2,
	pipeline_dffe_3,
	pipeline_dffe_4,
	pipeline_dffe_5,
	pipeline_dffe_6,
	pipeline_dffe_7,
	pipeline_dffe_8,
	pipeline_dffe_9,
	pipeline_dffe_10,
	pipeline_dffe_11,
	pipeline_dffe_12,
	pipeline_dffe_13,
	phi_mod_int_reg_1_2,
	dxxpdo_5,
	phi_mod_int_reg_0_2,
	dxxpdo_4,
	phi_mod_int_reg_2_2,
	dxxpdo_6,
	phi_mod_int_reg_3_2,
	dxxpdo_7,
	phi_mod_int_reg_4_2,
	dxxpdo_8,
	phi_mod_int_reg_5_2,
	dxxpdo_9,
	phi_mod_int_reg_6_2,
	dxxpdo_10,
	phi_mod_int_reg_7_2,
	dxxpdo_11,
	phi_mod_int_reg_8_2,
	dxxpdo_12,
	phi_mod_int_reg_9_2,
	dxxpdo_13,
	phi_mod_int_reg_10_2,
	dxxpdo_14,
	phi_mod_int_reg_11_2,
	dxxpdo_15,
	phi_mod_int_reg_12_2,
	dxxpdo_16,
	phi_mod_int_reg_13_2,
	dxxpdo_17,
	reset_n,
	clock,
	clken)/* synthesis synthesis_greybox=1 */;
output 	pipeline_dffe_1;
output 	pipeline_dffe_2;
output 	pipeline_dffe_3;
output 	pipeline_dffe_4;
output 	pipeline_dffe_5;
output 	pipeline_dffe_6;
output 	pipeline_dffe_7;
output 	pipeline_dffe_8;
output 	pipeline_dffe_9;
output 	pipeline_dffe_10;
output 	pipeline_dffe_11;
output 	pipeline_dffe_12;
output 	pipeline_dffe_13;
input 	phi_mod_int_reg_1_2;
input 	dxxpdo_5;
input 	phi_mod_int_reg_0_2;
input 	dxxpdo_4;
input 	phi_mod_int_reg_2_2;
input 	dxxpdo_6;
input 	phi_mod_int_reg_3_2;
input 	dxxpdo_7;
input 	phi_mod_int_reg_4_2;
input 	dxxpdo_8;
input 	phi_mod_int_reg_5_2;
input 	dxxpdo_9;
input 	phi_mod_int_reg_6_2;
input 	dxxpdo_10;
input 	phi_mod_int_reg_7_2;
input 	dxxpdo_11;
input 	phi_mod_int_reg_8_2;
input 	dxxpdo_12;
input 	phi_mod_int_reg_9_2;
input 	dxxpdo_13;
input 	phi_mod_int_reg_10_2;
input 	dxxpdo_14;
input 	phi_mod_int_reg_11_2;
input 	dxxpdo_15;
input 	phi_mod_int_reg_12_2;
input 	dxxpdo_16;
input 	phi_mod_int_reg_13_2;
input 	dxxpdo_17;
input 	reset_n;
input 	clock;
input 	clken;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



nco_add_sub_uig auto_generated(
	.pipeline_dffe_1(pipeline_dffe_1),
	.pipeline_dffe_2(pipeline_dffe_2),
	.pipeline_dffe_3(pipeline_dffe_3),
	.pipeline_dffe_4(pipeline_dffe_4),
	.pipeline_dffe_5(pipeline_dffe_5),
	.pipeline_dffe_6(pipeline_dffe_6),
	.pipeline_dffe_7(pipeline_dffe_7),
	.pipeline_dffe_8(pipeline_dffe_8),
	.pipeline_dffe_9(pipeline_dffe_9),
	.pipeline_dffe_10(pipeline_dffe_10),
	.pipeline_dffe_11(pipeline_dffe_11),
	.pipeline_dffe_12(pipeline_dffe_12),
	.pipeline_dffe_13(pipeline_dffe_13),
	.phi_mod_int_reg_1_2(phi_mod_int_reg_1_2),
	.dxxpdo_5(dxxpdo_5),
	.phi_mod_int_reg_0_2(phi_mod_int_reg_0_2),
	.dxxpdo_4(dxxpdo_4),
	.phi_mod_int_reg_2_2(phi_mod_int_reg_2_2),
	.dxxpdo_6(dxxpdo_6),
	.phi_mod_int_reg_3_2(phi_mod_int_reg_3_2),
	.dxxpdo_7(dxxpdo_7),
	.phi_mod_int_reg_4_2(phi_mod_int_reg_4_2),
	.dxxpdo_8(dxxpdo_8),
	.phi_mod_int_reg_5_2(phi_mod_int_reg_5_2),
	.dxxpdo_9(dxxpdo_9),
	.phi_mod_int_reg_6_2(phi_mod_int_reg_6_2),
	.dxxpdo_10(dxxpdo_10),
	.phi_mod_int_reg_7_2(phi_mod_int_reg_7_2),
	.dxxpdo_11(dxxpdo_11),
	.phi_mod_int_reg_8_2(phi_mod_int_reg_8_2),
	.dxxpdo_12(dxxpdo_12),
	.phi_mod_int_reg_9_2(phi_mod_int_reg_9_2),
	.dxxpdo_13(dxxpdo_13),
	.phi_mod_int_reg_10_2(phi_mod_int_reg_10_2),
	.dxxpdo_14(dxxpdo_14),
	.phi_mod_int_reg_11_2(phi_mod_int_reg_11_2),
	.dxxpdo_15(dxxpdo_15),
	.phi_mod_int_reg_12_2(phi_mod_int_reg_12_2),
	.dxxpdo_16(dxxpdo_16),
	.phi_mod_int_reg_13_2(phi_mod_int_reg_13_2),
	.dxxpdo_17(dxxpdo_17),
	.reset_n(reset_n),
	.clock(clock),
	.clken(clken));

endmodule

module nco_add_sub_uig (
	pipeline_dffe_1,
	pipeline_dffe_2,
	pipeline_dffe_3,
	pipeline_dffe_4,
	pipeline_dffe_5,
	pipeline_dffe_6,
	pipeline_dffe_7,
	pipeline_dffe_8,
	pipeline_dffe_9,
	pipeline_dffe_10,
	pipeline_dffe_11,
	pipeline_dffe_12,
	pipeline_dffe_13,
	phi_mod_int_reg_1_2,
	dxxpdo_5,
	phi_mod_int_reg_0_2,
	dxxpdo_4,
	phi_mod_int_reg_2_2,
	dxxpdo_6,
	phi_mod_int_reg_3_2,
	dxxpdo_7,
	phi_mod_int_reg_4_2,
	dxxpdo_8,
	phi_mod_int_reg_5_2,
	dxxpdo_9,
	phi_mod_int_reg_6_2,
	dxxpdo_10,
	phi_mod_int_reg_7_2,
	dxxpdo_11,
	phi_mod_int_reg_8_2,
	dxxpdo_12,
	phi_mod_int_reg_9_2,
	dxxpdo_13,
	phi_mod_int_reg_10_2,
	dxxpdo_14,
	phi_mod_int_reg_11_2,
	dxxpdo_15,
	phi_mod_int_reg_12_2,
	dxxpdo_16,
	phi_mod_int_reg_13_2,
	dxxpdo_17,
	reset_n,
	clock,
	clken)/* synthesis synthesis_greybox=1 */;
output 	pipeline_dffe_1;
output 	pipeline_dffe_2;
output 	pipeline_dffe_3;
output 	pipeline_dffe_4;
output 	pipeline_dffe_5;
output 	pipeline_dffe_6;
output 	pipeline_dffe_7;
output 	pipeline_dffe_8;
output 	pipeline_dffe_9;
output 	pipeline_dffe_10;
output 	pipeline_dffe_11;
output 	pipeline_dffe_12;
output 	pipeline_dffe_13;
input 	phi_mod_int_reg_1_2;
input 	dxxpdo_5;
input 	phi_mod_int_reg_0_2;
input 	dxxpdo_4;
input 	phi_mod_int_reg_2_2;
input 	dxxpdo_6;
input 	phi_mod_int_reg_3_2;
input 	dxxpdo_7;
input 	phi_mod_int_reg_4_2;
input 	dxxpdo_8;
input 	phi_mod_int_reg_5_2;
input 	dxxpdo_9;
input 	phi_mod_int_reg_6_2;
input 	dxxpdo_10;
input 	phi_mod_int_reg_7_2;
input 	dxxpdo_11;
input 	phi_mod_int_reg_8_2;
input 	dxxpdo_12;
input 	phi_mod_int_reg_9_2;
input 	dxxpdo_13;
input 	phi_mod_int_reg_10_2;
input 	dxxpdo_14;
input 	phi_mod_int_reg_11_2;
input 	dxxpdo_15;
input 	phi_mod_int_reg_12_2;
input 	dxxpdo_16;
input 	phi_mod_int_reg_13_2;
input 	dxxpdo_17;
input 	reset_n;
input 	clock;
input 	clken;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \pipeline_dffe[1]~14_cout ;
wire \pipeline_dffe[1]~15_combout ;
wire \pipeline_dffe[1]~16 ;
wire \pipeline_dffe[2]~17_combout ;
wire \pipeline_dffe[2]~18 ;
wire \pipeline_dffe[3]~19_combout ;
wire \pipeline_dffe[3]~20 ;
wire \pipeline_dffe[4]~21_combout ;
wire \pipeline_dffe[4]~22 ;
wire \pipeline_dffe[5]~23_combout ;
wire \pipeline_dffe[5]~24 ;
wire \pipeline_dffe[6]~25_combout ;
wire \pipeline_dffe[6]~26 ;
wire \pipeline_dffe[7]~27_combout ;
wire \pipeline_dffe[7]~28 ;
wire \pipeline_dffe[8]~29_combout ;
wire \pipeline_dffe[8]~30 ;
wire \pipeline_dffe[9]~31_combout ;
wire \pipeline_dffe[9]~32 ;
wire \pipeline_dffe[10]~33_combout ;
wire \pipeline_dffe[10]~34 ;
wire \pipeline_dffe[11]~35_combout ;
wire \pipeline_dffe[11]~36 ;
wire \pipeline_dffe[12]~37_combout ;
wire \pipeline_dffe[12]~38 ;
wire \pipeline_dffe[13]~39_combout ;


dffeas \pipeline_dffe[1] (
	.clk(clock),
	.d(\pipeline_dffe[1]~15_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_1),
	.prn(vcc));
defparam \pipeline_dffe[1] .is_wysiwyg = "true";
defparam \pipeline_dffe[1] .power_up = "low";

dffeas \pipeline_dffe[2] (
	.clk(clock),
	.d(\pipeline_dffe[2]~17_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_2),
	.prn(vcc));
defparam \pipeline_dffe[2] .is_wysiwyg = "true";
defparam \pipeline_dffe[2] .power_up = "low";

dffeas \pipeline_dffe[3] (
	.clk(clock),
	.d(\pipeline_dffe[3]~19_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_3),
	.prn(vcc));
defparam \pipeline_dffe[3] .is_wysiwyg = "true";
defparam \pipeline_dffe[3] .power_up = "low";

dffeas \pipeline_dffe[4] (
	.clk(clock),
	.d(\pipeline_dffe[4]~21_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_4),
	.prn(vcc));
defparam \pipeline_dffe[4] .is_wysiwyg = "true";
defparam \pipeline_dffe[4] .power_up = "low";

dffeas \pipeline_dffe[5] (
	.clk(clock),
	.d(\pipeline_dffe[5]~23_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_5),
	.prn(vcc));
defparam \pipeline_dffe[5] .is_wysiwyg = "true";
defparam \pipeline_dffe[5] .power_up = "low";

dffeas \pipeline_dffe[6] (
	.clk(clock),
	.d(\pipeline_dffe[6]~25_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_6),
	.prn(vcc));
defparam \pipeline_dffe[6] .is_wysiwyg = "true";
defparam \pipeline_dffe[6] .power_up = "low";

dffeas \pipeline_dffe[7] (
	.clk(clock),
	.d(\pipeline_dffe[7]~27_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_7),
	.prn(vcc));
defparam \pipeline_dffe[7] .is_wysiwyg = "true";
defparam \pipeline_dffe[7] .power_up = "low";

dffeas \pipeline_dffe[8] (
	.clk(clock),
	.d(\pipeline_dffe[8]~29_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_8),
	.prn(vcc));
defparam \pipeline_dffe[8] .is_wysiwyg = "true";
defparam \pipeline_dffe[8] .power_up = "low";

dffeas \pipeline_dffe[9] (
	.clk(clock),
	.d(\pipeline_dffe[9]~31_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_9),
	.prn(vcc));
defparam \pipeline_dffe[9] .is_wysiwyg = "true";
defparam \pipeline_dffe[9] .power_up = "low";

dffeas \pipeline_dffe[10] (
	.clk(clock),
	.d(\pipeline_dffe[10]~33_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_10),
	.prn(vcc));
defparam \pipeline_dffe[10] .is_wysiwyg = "true";
defparam \pipeline_dffe[10] .power_up = "low";

dffeas \pipeline_dffe[11] (
	.clk(clock),
	.d(\pipeline_dffe[11]~35_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_11),
	.prn(vcc));
defparam \pipeline_dffe[11] .is_wysiwyg = "true";
defparam \pipeline_dffe[11] .power_up = "low";

dffeas \pipeline_dffe[12] (
	.clk(clock),
	.d(\pipeline_dffe[12]~37_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_12),
	.prn(vcc));
defparam \pipeline_dffe[12] .is_wysiwyg = "true";
defparam \pipeline_dffe[12] .power_up = "low";

dffeas \pipeline_dffe[13] (
	.clk(clock),
	.d(\pipeline_dffe[13]~39_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(clken),
	.q(pipeline_dffe_13),
	.prn(vcc));
defparam \pipeline_dffe[13] .is_wysiwyg = "true";
defparam \pipeline_dffe[13] .power_up = "low";

fiftyfivenm_lcell_comb \pipeline_dffe[1]~14 (
	.dataa(phi_mod_int_reg_0_2),
	.datab(dxxpdo_4),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(\pipeline_dffe[1]~14_cout ));
defparam \pipeline_dffe[1]~14 .lut_mask = 16'h00EE;
defparam \pipeline_dffe[1]~14 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \pipeline_dffe[1]~15 (
	.dataa(phi_mod_int_reg_1_2),
	.datab(dxxpdo_5),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[1]~14_cout ),
	.combout(\pipeline_dffe[1]~15_combout ),
	.cout(\pipeline_dffe[1]~16 ));
defparam \pipeline_dffe[1]~15 .lut_mask = 16'h967F;
defparam \pipeline_dffe[1]~15 .sum_lutc_input = "cin";

fiftyfivenm_lcell_comb \pipeline_dffe[2]~17 (
	.dataa(phi_mod_int_reg_2_2),
	.datab(dxxpdo_6),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[1]~16 ),
	.combout(\pipeline_dffe[2]~17_combout ),
	.cout(\pipeline_dffe[2]~18 ));
defparam \pipeline_dffe[2]~17 .lut_mask = 16'h96EF;
defparam \pipeline_dffe[2]~17 .sum_lutc_input = "cin";

fiftyfivenm_lcell_comb \pipeline_dffe[3]~19 (
	.dataa(phi_mod_int_reg_3_2),
	.datab(dxxpdo_7),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[2]~18 ),
	.combout(\pipeline_dffe[3]~19_combout ),
	.cout(\pipeline_dffe[3]~20 ));
defparam \pipeline_dffe[3]~19 .lut_mask = 16'h967F;
defparam \pipeline_dffe[3]~19 .sum_lutc_input = "cin";

fiftyfivenm_lcell_comb \pipeline_dffe[4]~21 (
	.dataa(phi_mod_int_reg_4_2),
	.datab(dxxpdo_8),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[3]~20 ),
	.combout(\pipeline_dffe[4]~21_combout ),
	.cout(\pipeline_dffe[4]~22 ));
defparam \pipeline_dffe[4]~21 .lut_mask = 16'h96EF;
defparam \pipeline_dffe[4]~21 .sum_lutc_input = "cin";

fiftyfivenm_lcell_comb \pipeline_dffe[5]~23 (
	.dataa(phi_mod_int_reg_5_2),
	.datab(dxxpdo_9),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[4]~22 ),
	.combout(\pipeline_dffe[5]~23_combout ),
	.cout(\pipeline_dffe[5]~24 ));
defparam \pipeline_dffe[5]~23 .lut_mask = 16'h967F;
defparam \pipeline_dffe[5]~23 .sum_lutc_input = "cin";

fiftyfivenm_lcell_comb \pipeline_dffe[6]~25 (
	.dataa(phi_mod_int_reg_6_2),
	.datab(dxxpdo_10),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[5]~24 ),
	.combout(\pipeline_dffe[6]~25_combout ),
	.cout(\pipeline_dffe[6]~26 ));
defparam \pipeline_dffe[6]~25 .lut_mask = 16'h96EF;
defparam \pipeline_dffe[6]~25 .sum_lutc_input = "cin";

fiftyfivenm_lcell_comb \pipeline_dffe[7]~27 (
	.dataa(phi_mod_int_reg_7_2),
	.datab(dxxpdo_11),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[6]~26 ),
	.combout(\pipeline_dffe[7]~27_combout ),
	.cout(\pipeline_dffe[7]~28 ));
defparam \pipeline_dffe[7]~27 .lut_mask = 16'h967F;
defparam \pipeline_dffe[7]~27 .sum_lutc_input = "cin";

fiftyfivenm_lcell_comb \pipeline_dffe[8]~29 (
	.dataa(phi_mod_int_reg_8_2),
	.datab(dxxpdo_12),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[7]~28 ),
	.combout(\pipeline_dffe[8]~29_combout ),
	.cout(\pipeline_dffe[8]~30 ));
defparam \pipeline_dffe[8]~29 .lut_mask = 16'h96EF;
defparam \pipeline_dffe[8]~29 .sum_lutc_input = "cin";

fiftyfivenm_lcell_comb \pipeline_dffe[9]~31 (
	.dataa(phi_mod_int_reg_9_2),
	.datab(dxxpdo_13),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[8]~30 ),
	.combout(\pipeline_dffe[9]~31_combout ),
	.cout(\pipeline_dffe[9]~32 ));
defparam \pipeline_dffe[9]~31 .lut_mask = 16'h967F;
defparam \pipeline_dffe[9]~31 .sum_lutc_input = "cin";

fiftyfivenm_lcell_comb \pipeline_dffe[10]~33 (
	.dataa(phi_mod_int_reg_10_2),
	.datab(dxxpdo_14),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[9]~32 ),
	.combout(\pipeline_dffe[10]~33_combout ),
	.cout(\pipeline_dffe[10]~34 ));
defparam \pipeline_dffe[10]~33 .lut_mask = 16'h96EF;
defparam \pipeline_dffe[10]~33 .sum_lutc_input = "cin";

fiftyfivenm_lcell_comb \pipeline_dffe[11]~35 (
	.dataa(phi_mod_int_reg_11_2),
	.datab(dxxpdo_15),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[10]~34 ),
	.combout(\pipeline_dffe[11]~35_combout ),
	.cout(\pipeline_dffe[11]~36 ));
defparam \pipeline_dffe[11]~35 .lut_mask = 16'h967F;
defparam \pipeline_dffe[11]~35 .sum_lutc_input = "cin";

fiftyfivenm_lcell_comb \pipeline_dffe[12]~37 (
	.dataa(phi_mod_int_reg_12_2),
	.datab(dxxpdo_16),
	.datac(gnd),
	.datad(vcc),
	.cin(\pipeline_dffe[11]~36 ),
	.combout(\pipeline_dffe[12]~37_combout ),
	.cout(\pipeline_dffe[12]~38 ));
defparam \pipeline_dffe[12]~37 .lut_mask = 16'h96EF;
defparam \pipeline_dffe[12]~37 .sum_lutc_input = "cin";

fiftyfivenm_lcell_comb \pipeline_dffe[13]~39 (
	.dataa(phi_mod_int_reg_13_2),
	.datab(dxxpdo_17),
	.datac(gnd),
	.datad(gnd),
	.cin(\pipeline_dffe[12]~38 ),
	.combout(\pipeline_dffe[13]~39_combout ),
	.cout());
defparam \pipeline_dffe[13]~39 .lut_mask = 16'h9696;
defparam \pipeline_dffe[13]~39 .sum_lutc_input = "cin";

endmodule
