module shift_reg_behavioral(
    input wire [7:0] A,
    input wire s3, s2,
    output reg [7:0] reg_out
);

always @(*) begin
    reg [7:0] Sl, Sr, Rl, Rr;  // Declare as reg inside the always block

    Sl = A << 1; // Left shift
    Sr = A >> 1; // Right shift
    Rl = {A[6:0], A[7]}; // Left rotate
    Rr = {A[0], A[7:1]}; // Right rotate

    case (s3)
        1'b0: begin
            case (s2)
                1'b0: reg_out = Sl;
                1'b1: reg_out = Sr;
            endcase
        end
        1'b1: begin
            case (s2)
                1'b0: reg_out = Rl;
                1'b1: reg_out = Rr;
            endcase
        end
    endcase
end

endmodule
