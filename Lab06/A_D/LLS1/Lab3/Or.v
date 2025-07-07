module Or(a,b,Or);
	input [3:0] a;
	input [3:0] b;
	output [3:0] Or;

	assign Or = a | b;
endmodule