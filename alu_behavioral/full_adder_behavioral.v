module full_adder_behavioral(
    input [7:0] A,
    input [7:0] B,
    input wire cin,
    output reg [7:0] sum,
    output reg cout
);

reg [7:0] temp_sum;
reg temp_cout;
integer i;
reg [7:0] inverted_number;
reg [7:0] twos_complement_number;
always @*
begin
    inverted_number = 8'b0;
    twos_complement_number = 8'b0;

	 if (cin == 1) begin
        inverted_number = ~B;
        twos_complement_number = inverted_number + 1'b1;
	 end
    // Addition
    if (cin == 0) begin
        temp_sum[0] = A[0] ^ B[0] ^ cin;
        temp_cout = (A[0] & B[0]) | ((A[0] ^ B[0]) & cin);
    end
    // Subtraction
    if (cin == 1) begin
        temp_sum[0] = (A[0] ^ twos_complement_number[0] ^ 0);
        temp_cout = (A[0] & twos_complement_number[0]) | ((A[0] ^ twos_complement_number[0]) & 0);
    end

    for (i = 1; i < 8; i = i + 1) begin
        // Addition
        if (cin == 0) begin
            temp_sum[i] = A[i] ^ B[i] ^ temp_cout;
            temp_cout = (A[i] & B[i]) | ((A[i] ^ B[i]) & temp_cout);
        end
        // Subtraction
        if (cin == 1) begin
            temp_sum[i] = (A[i] ^ twos_complement_number[i]) ^ temp_cout;
            temp_cout = (A[i] & twos_complement_number[i]) | ((A[i] ^ twos_complement_number[i]) & temp_cout);
        end
    end

    // Assign the final sum and carry-out
    sum = temp_sum;
    cout = temp_cout;
end

endmodule
