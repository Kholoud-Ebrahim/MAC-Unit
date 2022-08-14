`timescale 1ps/1ps
module Test_Register_Q_bit;
parameter Q= 3;
reg  [Q-1:0]in;
reg  clk, rst;
wire [Q-1:0]out;


Register_Q_bit #(Q)RG(clk, rst, in, out);

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
	in=2; #150 
	in=1; #100
	in=6; #100
	in=7; #100;
end

initial begin 
$monitor ("time: %3d   in: %b   out: %b ", 
		  $time		 , in    ,  out      );
end 
endmodule
