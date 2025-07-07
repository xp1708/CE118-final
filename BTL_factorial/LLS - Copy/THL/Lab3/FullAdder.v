module FullAdder(a,b,ci,s,add_overflow,zero);
	input wire [15:0] a;
	input wire [15:0] b;
	input wire ci;
	wire co0, co1, co2, co3, co4, co5, co6, co7;
	output wire [15:0] s;
	output wire add_overflow;
	output wire zero;
	
	assign co0 = (ci&a[0]) | (ci&b[0]) | (a[0]&b[0]);
	assign s[0] = a[0]^b[0]^ci;
	
	assign co1 = (co0&a[1]) | (co0&b[1]) | (a[1]&b[1]);
	assign s[1] = a[1]^b[1]^co0;
	
	assign co2 = (co1&a[2]) | (co1&b[2]) | (a[2]&b[2]);
	assign s[2] = a[2]^b[2]^co1;
	
	assign co3 = (co2&a[3]) | (co2&b[3]) | (a[3]&b[3]);
	assign s[3] = a[3]^b[3]^co2;
	
	assign co4 = (co3&a[4]) | (co3&b[4]) | (a[4]&b[4]);
	assign s[4] = a[4]^b[4]^co3;
	
	assign co5 = (co4&a[5]) | (co4&b[5]) | (a[5]&b[5]);
	assign s[5] = a[5]^b[5]^co4;
	
	assign co6 = (co5&a[6]) | (co5&b[6]) | (a[6]&b[6]);
	assign s[6] = a[6]^b[6]^co5;
	
	assign co7 = (co6&a[7]) | (co6&b[7]) | (a[7]&b[7]);
	assign s[7] = a[7]^b[7]^co6;
	
	assign co8 = (co7&a[8]) | (co7&b[8]) | (a[8]&b[8]);
	assign s[8] = a[8]^b[8]^co7;

	assign co9 = (co8&a[9]) | (co8&b[9]) | (a[9]&b[9]);
	assign s[9] = a[9]^b[9]^co8;

	assign co10 = (co9&a[10]) | (co9&b[10]) | (a[10]&b[10]);
	assign s[10] = a[10]^b[10]^co9;

	assign co11 = (co10&a[11]) | (co10&b[11]) | (a[11]&b[11]);
	assign s[11] = a[11]^b[11]^co10;

	assign co12 = (co11&a[12]) | (co11&b[12]) | (a[12]&b[12]);
	assign s[12] = a[12]^b[12]^co11;

	assign co13 = (co12&a[13]) | (co12&b[13]) | (a[13]&b[13]);
	assign s[13] = a[13]^b[13]^co12;

	assign co14 = (co13&a[14]) | (co13&b[14]) | (a[14]&b[14]);
	assign s[14] = a[14]^b[14]^co13;

	assign co15 = (co14&a[15]) | (co14&b[15]) | (a[15]&b[15]);
	assign s[15] = a[15]^b[15]^co14;
	
	assign add_overflow = (co2 ^ co3);
	assign zero = (s==8'b00000000);
	
	
endmodule