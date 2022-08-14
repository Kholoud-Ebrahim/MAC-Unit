`timescale 100ps/1ps
module Test_Full_Adder_1_bit ;
reg  A, B, Cin;
wire Sum, Cout;
// Testing of behavioral model of a single bit full adder
Full_Adder_1_bit DUT1(A, B, Cin, Sum, Cout);

initial begin
	Cin=1'b0;
	A = 1'b0; 
	B = 1'b0;
  #1
	B = 1'b1;
  #1
	A = 1'b1;
  #1
	B = 1'b0;
  #1
	A = 1'b0;
// it takes only 500ps in simulation
end 

initial begin
	$monitor ("time:%2d   A: %b   B:%b   Sum: %b   Cout: %b\n",  
			   $time	, A		, B	   , Sum	 , Cout       );
end
endmodule

