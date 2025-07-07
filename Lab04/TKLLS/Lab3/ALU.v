module ALU (a,b,sel,out,cin,add_sub_overflow,mul_overflow,zero);
	input [3:0]a;
	input [3:0]b;
	input [3:0]sel;
	input cin;
	output [3:0]out;
	output wire add_sub_overflow;
	output wire mul_overflow;
	output wire zero;
	
	wire [3:0]comp;
	wire [3:0]And;
	wire [3:0]Or;
	wire [3:0]Xor;
	wire [3:0]decre;
	wire [3:0]add;
	wire [3:0]sub;
	wire [3:0]incre;
	wire [3:0]ShiftL;
	wire [3:0]ShiftR;
	wire [3:0]mul;
	
	wire add_overflow;
	wire sub_overflow;
	wire incre_overflow;
	wire decre_overflow;
	wire add_zero;
	wire sub_zero;
	wire incre_zero;
	wire decre_zero;
	wire mul_zero;
	
	assign And = a&b;
	assign Xor = a^b;
	assign Or = a|b;
	assign ShiftL = a << 1;
	assign ShiftR = a >> 1;
	
	mux4_1 mux1(.sel(sel), .add(add_zero), .sub(sub_zero), .incre(incre_zero), .decre(decre_zero),.mul(mul_zero),.out(zero));
	mux4_1 mux2(.sel(sel), .add(add_overflow), .sub(sub_overflow), .incre(incre_overflow), .decre(decre_overflow),.out(add_sub_overflow));
	mux16_1 mux16_1 (.comp(comp),.And(And),.exor(Xor),.Or(Or),.decre(decre),.add(add),.sub(sub),
	.incre(incre),.shiftL(ShiftL),. shiftR(ShiftR),.mul(mul),.sel(sel),.out(out));
	comp Comp (.a(a),.comp(comp));
	FullSubtracter Decre(.a(a),.b(4'b0001),.ci(cin),.s(decre),.sub_overflow(decre_overflow),.zero(decre_zero));
	FullAdder Add(.a(a),.b(b),.ci(cin),.s(add),.add_overflow(add_overflow),.zero(add_zero));
	FullSubtracter Sub(.a(a),.b(b),.ci(cin),.s(sub),.sub_overflow(sub_overflow),.zero(sub_zero));
	FullAdder Incre(.a(a),.b(4'b0001),.ci(cin),.s(incre),.add_overflow(incre_overflow),.zero(incre_zero));
	Multiplier Mul(.a(a),.b(b),.out(mul),.mul_overflow(mul_overflow),.zero(mul_zero));
	
	
endmodule