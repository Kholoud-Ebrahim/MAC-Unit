module MAC_Unit#(parameter M=8, N=8, P=16, Q=16)(clk , rst, A, B, Cout, Z); 

input  rst, clk;
input  [M-1:0]A;
input  [N-1:0]B;
output [M+N-1:0]Z; 
output Cout;
wire   [M+N-1:0]Mul;   // the out of multiplication operation
wire   [M+N-1:0]add;   // the out of addition

// Structural model of a MAC Unit
Multiplier_M_N_bits #(M,N) Multp (A, B, Mul);
Full_Adder_P_bit    #(P)   Adder (Mul, Z, 1'b0, add, Cout);
Register_Q_bit      #(Q)   RegBit(clk, rst, add, Z);
endmodule

