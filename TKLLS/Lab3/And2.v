module And2(a,b,And);
	input [3:0] a;
	input [3:0] b;
	output [3:0] And;
	assign And = a&b;
endmodule