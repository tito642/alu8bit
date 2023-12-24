module shifter_unit(

input [7:0]A,B,
input [1:0]S2_S3,
//inout S1,S2,
output reg [7:0]result_shift
);

always@(*) begin
  case(S2_S3)
  00:result_shift={A[0],A[3:1]};
  01:result_shift={A[2:0],A[3]};
  10:result_shift=A>>1;
  11:result_shift=A<<1;
  default:result_shift=A<<1;
  endcase

end
endmodule