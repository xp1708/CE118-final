module And(a,b,And); 
	input [7:0] a;
	input [7:0] b;
	output [7:0] And;
	assign And = a&b;
endmodule