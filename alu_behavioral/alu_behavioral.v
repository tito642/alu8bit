module alu_behavioral(
    input wire [7:0] A,
    input wire [7:0] B,
    input wire [3:0] s,
    input wire clk,
    //input wire reset,
    output reg [7:0] alu_out
);

always @(posedge clk) begin
    case (s)
        4'b0000: alu_out <= A + B;  // Add
        4'b0001: alu_out <= A - B;  // Subtract
        4'b0011: alu_out <= ~B + 1;  // 2's Complement
        4'b1000: alu_out <= A & B;  // AND
        4'b1001: alu_out <= A ^ B;  // XOR
        4'b1010: alu_out <= A | B;  // OR
        4'b1011: alu_out <= ~B;     // 1's Complement
        4'b1100: alu_out <= {A[0], A[7:1]};  // Right Rotate
        4'b1101: alu_out <= {A[6:0], A[7]};   // Left Rotate
        4'b1110: alu_out <= A >> 1;  // Right Shift
        4'b1111: alu_out <= A << 1;  // Left Shift
    endcase
end

endmodule
