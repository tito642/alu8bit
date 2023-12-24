`timescale 1ns/1ps
module logic_unit_tb;

  reg [7:0] A_tb, B_tb;
  wire [7:0] Fand_tb, For_tb, Fxor_tb, Fnot_tb;

  // Instantiate the logic_unit module
  logic_unit DUT(
    .A(A_tb),
    .B(B_tb),
    .Fand(Fand_tb),
    .For(For_tb),
    .Fxor(Fxor_tb),
    .Fnot(Fnot_tb)
  );

  // Clock generation
  reg clk_tb = 0;
  always #5 clk_tb = ~clk_tb;

  // Test vectors
  initial begin
    $monitor("Time=%0t A=%b B=%b Fand=%b For=%b Fxor=%b Fnot=%b",
             $time, A_tb, B_tb, Fand_tb, For_tb, Fxor_tb, Fnot_tb);

    // Test case 1
    A_tb = 8'b10101010;
    B_tb = 8'b01010101;
    #10;

    // Test case 2
    A_tb = 8'b11110000;
    B_tb = 8'b00001111;
    #10;

    // Test case 3
    A_tb = 8'b01010101;
    B_tb = 8'b10101010;
    #10;

    // Add more test cases as needed

    // End simulation
    $stop;
  end

  // Clock driver
  always #1 clk_tb = ~clk_tb;

endmodule
