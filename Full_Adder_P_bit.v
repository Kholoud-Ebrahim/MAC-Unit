module Full_Adder_P_bit #(parameter P=4)(A, B, Cin, Sum, Cout);
input  Cin;
input  [P-1:0]A, B;
output [P-1:0]Sum;
output Cout;
wire   [P:0]C_internal;
// Structural model of P-bit full adder
genvar i;
generate
for (i=0; i< P ; i = i+1) begin : generate_P_bit_FA
	Full_Adder_1_bit DUT0(.A(A[i]), .B(B[i]), .Cin(C_internal[i]), 
						  .Sum(Sum[i]), .Cout(C_internal[i+1]));
end
endgenerate

assign C_internal[0] = Cin;
assign Cout = C_internal[P];
endmodule
