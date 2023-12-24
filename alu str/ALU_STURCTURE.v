/*
module ALU_STURCTURE(

input [7:0]A,B,
input [1:0]S2_S3,
input S1,S2,
input clk,
output reg A_bigger,B_bigger,A_equal_B ,flag_zero,carry_out,over_flow,
//output reg [7:0]result_arith,result_logic,result_shift,
output reg [7:0]result_reg1,result_reg2,F


);
Arithematic_unit  uut1(.A(A),.B(B).S2_S3(S2_S3));
//shifter_unit   uut2(.A(A),.B(B).S2_S3(S2_S3));
//logic_unit    uut3(.A(A),.B(B).S2_S3(S2_S3));

Reg1  uut4(.S1(S1));
Reg2  uut5(.S2(S2));

register uut6(.F(F));



//Reg2 DUT9 (.result_reg2(result_reg2));



endmodule
*/

module ALU_STURCTURE(

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
