

module mux2 (
input [7:0]result_arith,result_reg1,
input S2,
output reg [7:0]result_reg2
);

//Reg1 dut3(.result_reg2(result_reg2));

//Arithematic_unit dut4(.result_arith(result_arith));
//ALU_STURCTURE dut5(.result_reg2(result_reg2));

always@(*) begin
  case(S2)
  0:result_reg2=result_arith;
  1:result_reg2=result_reg1;
  endcase
end
endmodule