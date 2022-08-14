module Multiplier_M_N_bits #(parameter M=4, N=3)(num1, num2, Result);
input  [M-1:0]num1; 	
input  [N-1:0]num2; 	
output reg [M+N-1:0]Result; 
reg    [M+N-1:0]Mul_stage;
reg    [M+N-1:0]Mul_Register[N-1:0];
integer i;
// behavioral model of M-bit by N-bit Multiplier
always @(*) begin
Result =0;
	for (i=0; i< N ; i = i+1) begin :Multiplier_Register
		Mul_stage = num1 & {M{num2[i]}}; 
		Mul_stage = Mul_stage << i;
		Mul_Register[i]= Mul_stage;
		Result= Mul_Register[i]+Result;
	end
end 
endmodule
