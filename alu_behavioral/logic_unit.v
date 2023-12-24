module logic_unit(
  input wire[7:0] A,
  input wire [7:0] B,
  output wire [7:0] Fand,
  output wire [7:0] For,
  output wire [7:0] Fxor,
  output wire [7:0] Fnot
);

  assign Fand = A & B;
  assign For = A | B;
  assign Fxor = A ^ B;
  assign Fnot = ~B;

endmodule
