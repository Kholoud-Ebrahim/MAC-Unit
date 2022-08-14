`timescale 100ps/1ps
module Test_Full_Adder_P_bit;
reg Cin;
parameter P = 4;
reg  [P-1:0]A, B;
wire [P-1:0]Sum;
wire Cout;
// Testing of Structural model of P-bit full adder
Full_Adder_P_bit #(.P(P)) DUT(A, B, Cin, Sum, Cout);

initial begin
	Cin= 0;
	A= 3; B= 1;
	#1
	A= 1; B= 2;
	#1
	A= 3; B= 3;
	#1
	A= 2; B= 1;
	#1
	A= 0; B= 3;
end

initial begin 
$monitor ("time: %2d   A: %b   B: %b   Sum: %b   Cout: %b", 
		  $time		 , A    ,  B    ,  Sum    ,  Cout     );
end 
endmodule
