`timescale 1ns/1ps

module tb_alu;

reg	s2;
reg	S1;
reg	CLK;
reg	[7:0] A;
reg	[7:0] B;
reg	[1:0] S2_S3;
wire	A_bigger;
wire	B_bigger;
wire	A_equal_B;
wire	flag_zero;
wire	carry_out;
wire	over_flow;
wire	[7:0] F;
//wire  [7:0] result_reg2;

ALU_STURCTURE ee(
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
	
	//result_reg2
     );
    initial begin
    
	   s2=0;S1=0; CLK=0;A=8'HFF;B=8'HAA;S2_S3=2'b00;
		#10;
		s2=0;S1=0; CLK=1;A=8'HFF;B=8'HAA;S2_S3=2'b00;
		#10;
		
		s2=0;S1=0; CLK=0;A=8'hFF;B=8'HFF;S2_S3=2'b01;
		#10;	
		s2=0;S1=0; CLK=1;A=8'hFF;B=8'HFF;S2_S3=2'b01;
		#10;
		
		
		s2=1;S1=0; CLK=1;A=8'HFF;B=8'HBB;S2_S3=2'b01;
		#10;
		s2=1;S1=0; CLK=0;A=8'HFF;B=8'HBB;S2_S3=2'b01;
		#10;

	   s2=1;S1=0; CLK=1;A=8'HFF;B=8'HBB;S2_S3=2'b01;
		#10;
		s2=1;S1=0; CLK=0;A=8'HFF;B=8'HBB;S2_S3=2'b01;
		#10;
		
		
	   s2=1;S1=1; CLK=1;A=8'H55;B=8'HCC;S2_S3=2'b11;	
		#10;
		s2=1;S1=1; CLK=0;A=8'H55;B=8'HCC;S2_S3=2'b11;	
		#10;
		
	   s2=1;S1=1; CLK=1;A=8'H55;B=8'H99;S2_S3=2'b00;
      #10;
		s2=1;S1=1; CLK=0;A=8'H55;B=8'H99;S2_S3=2'b00;
      #10;
		
		
	   s2=1;S1=1; CLK=1;A=8'H55;B=8'HCC;S2_S3=2'b01;	
		#10;
		s2=1;S1=1; CLK=0;A=8'H55;B=8'HCC;S2_S3=2'b01;	
		#10;
		
	   s2=1;S1=1; CLK=1;A=8'H55;B=8'H99;S2_S3=2'b10;
      #10;
		s2=1;S1=1; CLK=0;A=8'H55;B=8'H99;S2_S3=2'b10;
      #10;
		
	   s2=1;S1=1; CLK=1;A=8'H55;B=8'HCC;S2_S3=2'b11;		
	   #10;
		
	   s2=1;S1=1; CLK=0;A=8'H55;B=8'HCC;S2_S3=2'b11;	
	
     end
endmodule