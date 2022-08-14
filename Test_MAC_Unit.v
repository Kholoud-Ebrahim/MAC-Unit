`timescale 1ps/1ps
module Test_MAC_Unit;
parameter M = 8, N= 8, P= 16, Q= 16;
reg  rst, clk;
reg  [M-1:0]A;
reg  [N-1:0]B;
wire [M+N-1:0]Z; 
wire Cout;

MAC_Unit#(M, N, P, Q)MAC(clk , rst, A, B, Cout, Z); 
initial begin 
	clk =1;
	forever #50  clk =~clk;
end
initial begin 
	rst =1;
	#100  rst =0; // rst in one clock cycle
end
initial begin 
// the change in input will be at the negative edge , 
//which can be detected at the next posetve edge of the clock
	A=2; B=3; #150 
	A=1; B=2; #100
	A=6; B=4; #100
	A=7; B=1; #100;
end
initial begin 
$monitor ("time: %3d   A: %b   B: %b   Z: %b ", 
		  $time		 , A    ,  B    ,  Z     );
end 
endmodule
