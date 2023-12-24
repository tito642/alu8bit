module register(
input clk,
input [7:0]data,
output reg [7:0]F
);


//Reg2 dut5(.data(result_reg2));

always@(posedge clk) 
begin

     F<=data;
  
end
endmodule