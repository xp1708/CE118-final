module mux16_1(comp,And,exor,Or,decre,add,sub,incre,shiftL,shiftR,mul,sel,out);
	input wire [3:0]comp;
	input wire [3:0]And;
	input wire [3:0]exor;
	input wire [3:0]Or;
	input wire [3:0]decre;
	input wire [3:0]add;
	input wire [3:0]sub;
	input wire [3:0]incre;
	input wire [3:0]shiftL;
	input wire [3:0]shiftR;
	input wire [3:0]mul;
	output reg [3:0] out;
	input wire [3:0]sel;
	
	always@(*) begin
		case(sel)
			4'b0000: out = comp;
			4'b0001: out = And;
			4'b0010: out = exor;
			4'b0011: out = Or;
			4'b0100: out = decre;
			4'b0101: out = add;
			4'b0110: out = sub;
			4'b0111: out = incre;
			4'b1000: out = shiftL;
			4'b1001: out = shiftR;
			4'b1010: out = mul;
			default: out = comp;
		endcase
	end
endmodule