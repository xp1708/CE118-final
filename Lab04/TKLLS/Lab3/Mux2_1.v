module Mux2_1(a,b,sel,muxout);
	input [3:0]a;
	input [3:0]b;
	input sel;
	output [3:0]muxout;
	
	assign muxout = (sel) ? a: b;
endmodule