module Xor(a,b,Xor);
	input [3:0] a;
	input [3:0] b;
	output [3:0] Xor;
	assign Xor = a^b;
endmodule