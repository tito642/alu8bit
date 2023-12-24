module Arithematic_unit (
input [7:0]A,B,
input [1:0]S2_S3,
output reg A_bigger,B_bigger,A_equal_B ,flag_zero,carry_out,over_flow,
output reg [7:0]result_arith
);



always@(*)  
begin
  case(S2_S3)
  00:{carry_out,result_arith}=A+B;
  01:{carry_out,result_arith}=A-B;
  11:{carry_out,result_arith}=(!B)+1;
  default:{carry_out,result_arith}=8'b00;
  endcase
   
if(A>B) begin
A_bigger=1;
B_bigger=0;
A_equal_B=0;
over_flow=0;
end	
else if (A<B) begin
B_bigger=1;
A_bigger=0;
A_equal_B=0;
over_flow=0;
end	
else if (A==B) begin
A_bigger=0;
B_bigger=0;
A_equal_B=1;
flag_zero=1;
over_flow=0;
end
else if (A>0&&B>0&&result_arith<0) begin
over_flow=1;
end
else if (A<0&&B<0&&result_arith>0) begin
over_flow=1;
end

end
endmodule