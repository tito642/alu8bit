// Copyright (C) 2022  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and any partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details, at
// https://fpgasoftware.intel.com/eula.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 22.1std.0 Build 915 10/25/2022 SC Lite Edition"
// CREATED		"Thu Dec 14 09:33:56 2023"
/*

module ALU(
	s2,
	S1,
	CLK,
	A,
	B,
	S2_S3,
	A_bigger,
	B_bigger,
	A_equal_B,
	flag_zero,
	carry_out,
	over_flow,
	F
);


input wire	s2;
input wire	S1;
input wire	CLK;
input wire	[7:0] A;
input wire	[7:0] B;
input wire	[1:0] S2_S3;
output wire	A_bigger;
output wire	B_bigger;
output wire	A_equal_B;
output wire	flag_zero;
output wire	carry_out;
output wire	over_flow;
output wire	[7:0] F;

wire	[7:0] SYNTHESIZED_WIRE_0;
wire	[7:0] SYNTHESIZED_WIRE_1;
wire	[7:0] SYNTHESIZED_WIRE_2;
wire	[7:0] SYNTHESIZED_WIRE_3;
wire	[7:0] SYNTHESIZED_WIRE_4;





Arithematic_unit	b2v_inst(
	.A(A),
	.B(B),
	.S2_S3(S2_S3),
	.A_bigger(A_bigger),
	.B_bigger(B_bigger),
	.A_equal_B(A_equal_B),
	.flag_zero(flag_zero),
	.carry_out(carry_out),
	.over_flow(over_flow),
	.result_arith(SYNTHESIZED_WIRE_2));


logic_unit	b2v_inst1(
	.A(A),
	.B(B),
	.S2_S3(S2_S3),
	.result_logic(SYNTHESIZED_WIRE_0));


shifter_unit	b2v_inst2(
	.A(A),
	.B(B),
	.S2_S3(S2_S3),
	.result_shift(SYNTHESIZED_WIRE_1));


mux1	b2v_inst3(
	.S1(S1),
	.result_logic(SYNTHESIZED_WIRE_0),
	.result_shift(SYNTHESIZED_WIRE_1),
	.result_reg1(SYNTHESIZED_WIRE_3));


mux2	b2v_inst4(
	.S2(s2),
	.result_arith(SYNTHESIZED_WIRE_2),
	.result_reg1(SYNTHESIZED_WIRE_3),
	.result_reg2(SYNTHESIZED_WIRE_4));


register	b2v_inst5(
	.clk(CLK),
	.data(SYNTHESIZED_WIRE_4),
	.F(F));


endmodule
