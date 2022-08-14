module Register_Q_bit #(parameter Q = 4)(clk, rst, in, out);
input  [Q-1:0]in;
input  clk, rst;
output reg [Q-1:0]out;

// behavioral model of a Q bit Register
always @(posedge clk, posedge rst)
begin
	if (rst)
		out <= 0;
	else
		out <= in;
end
endmodule
