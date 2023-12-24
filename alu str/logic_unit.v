module logic_unit(
input [7:0]A,B,
input [1:0]S2_S3,
//inout S1,S2,
output reg [7:0]result_logic);


always@(*) begin
  case(S2_S3)
  00:result_logic=A&B;
  01:result_logic=A^B;
  10:result_logic=A|B;
  11:result_logic=~B;
  default:result_logic=~B;
  endcase
end
endmodule