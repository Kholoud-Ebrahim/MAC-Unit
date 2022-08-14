`timescale 100ps/1ps
module Test_Multiplier_M_N_bits;
parameter M= 6,N= 4;
reg  [M-1:0]num1; 	
reg  [N-1:0]num2; 	
wire [M+N-1:0]Result; 

Multiplier_M_N_bits #(.M(M), .N(N)) DUT(num1, num2, Result);

initial begin
	num1 = 63; num2 = 15;
	#1
	num1 =  0; num2 =  3;
	#1
	num1 = 27; num2 =  9;
	#1
	num1 = 12; num2 = 31;
	#1
	num1 = 20; num2 = 0;
	#1
	num1 = 32; num2 = 7;
end

initial begin
	$monitor("time: %2d   num1: (%d)%b   num2: (%d)%b   Result: (%d)%b",
			 $time       ,num1, num1    ,num2, num2    ,Result, Result );
end
endmodule
