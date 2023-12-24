module mux1 (
input [7:0]result_logic,result_shift,
input S1,
output reg [7:0]result_reg1
);

//logic_unit dut1(.result_logic(result_logic));

//shifter_unit dut2(.result_shift(result_shift));


always@(*) begin
  case(S1)
  0:result_reg1=result_logic;
  1:result_reg1=result_shift;
  endcase
end
endmodule