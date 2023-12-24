module alu_behavioral_tb;

reg clk;
reg [7:0] A, B;
reg [3:0] s;
wire [7:0] alu_out;

initial begin
    clk = 0;
    #1000; // Allow signals to settle

    // Test all arithmetic operations
    s = 4'b0000; // Add
    A = 8'd10;
    B = 8'd5;
    #10 $display("A=%d, B=%d, ALU_out=%d (expected: %d)", A, B, alu_out, A + B);

    s = 4'b0001; // Subtract
    A = 8'd15;
    B = 8'd8;
    #10 $display("A=%d, B=%d, ALU_out=%d (expected: %d)", A, B, alu_out, A - B);

    // Test logical operations
    s = 4'b1000; // AND
    A = 8'b11010011;
    B = 8'b01101100;
    #10 $display("A=%b, B=%b, ALU_out=%b (expected: %b)", A, B, alu_out, A & B);

    s = 4'b1001; // XOR
    #10 $display("A=%b, B=%b, ALU_out=%b (expected: %b)", A, B, alu_out, A ^ B);

    s = 4'b1010; // OR
    #10 $display("A=%b, B=%b, ALU_out=%b (expected: %b)", A, B, alu_out, A | B);

    // Test complement and shift operations
    s = 4'b0011; // 2's complement
    A = 8'd5;
    #10 $display("A=%d, ALU_out=%d (expected: -A-1)", A, alu_out);

    s = 4'b1011; // 1's complement
    #10 $display("A=%d, ALU_out=%d (expected: -A)", A, alu_out);

    s = 4'b1100; // Right rotate
    A = 8'b10110011;
    #10 $display("A=%b, ALU_out=%b (expected: rotate A right once)", A, alu_out);

    s = 4'b1101; // Left rotate
    #10 $display("A=%b, ALU_out=%b (expected: rotate A left once)", A, alu_out);

    s = 4'b1110; // Right shift
    #10 $display("A=%b, ALU_out=%b (expected: A >> 1)", A, alu_out);

    s = 4'b1111; // Left shift
    #10 $display("A=%b, ALU_out=%b (expected: A << 1)", A, alu_out);

    $finish; // End simulation
end

always #5 clk = ~clk; // Generate clock

alu_behavioral dut(
    .clk(clk),
    .A(A),
    .B(B),
    .s(s),
    .alu_out(alu_out)
);

endmodule
