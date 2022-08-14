module Full_Adder_1_bit (A, B, Cin, Sum, Cout);
input A, B, Cin;
output reg Sum, Cout;
// behavioral model of a single bit full adder
always @(*) begin
		Sum  = A ^ B ^ Cin;
		Cout =(A & B)|(B & Cin)|(A & Cin);
end
endmodule
