`timescale 1ns/1ps

module full_adder_behavioral_tb;

reg [7:0] A, B;
reg cin;
wire [7:0] sum;
wire cout;

// Instantiate the behavioral full adder
full_adder_behavioral uut(
    .A(A),
    .B(B),
    .cin(cin),
    .sum(sum),
    .cout(cout)
);

// Stimulus
initial begin
    $display("Test Case 1: Addition");
    A = 8'b01111001;
    B = 8'b00001111;
    cin = 0;
    #10;
    $display("A = %b, B = %b, cin = %b, sum = %b, cout = %b", A, B, cin, sum, cout);

    $display("\nTest Case 2: Subtraction");
    A = 8'b01111001;
    B = 8'b00001111;
    cin = 1;
    #10;
    $display("A = %b, B = %b, cin = %b, sum = %b, cout = %b", A, B, cin, sum, cout);

    // Add more test cases as needed

    // End simulation
    $stop;
end

endmodule
