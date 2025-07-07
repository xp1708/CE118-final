module Multiplier(a, b, out, mul_overflow, zero); 
	input signed [3:0]a;
	input signed [3:0]b;
	output signed [3:0]out;
	output mul_overflow;
	output zero;
	
	assign out = a*b;
	assign mul_overflow = (out < -7 | out > 7)? 1'b1 : 1'b0; 
	assign zero = (out == 0) ?1'b1:1'b0;
	
endmodule
	
	