module mux4_1(add,sub,incre,decre,sel,out,mul);
	input add;
	input sub;
	input incre;
	input decre;
	input mul;
	input [3:0] sel;
	output reg out;
	
	always@(*) begin
		case (sel) 
			4'b0100: out = decre;
			4'b0101: out = add;
			4'b0110: out = sub;
			4'b0111: out = incre;
			4'b1010: out = mul;
			default: out = decre;
		endcase
	end
endmodule
