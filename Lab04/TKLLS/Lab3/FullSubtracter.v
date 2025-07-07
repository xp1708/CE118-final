module FullSubtracter(a,b,ci,s,sub_overflow,zero);
	input wire [3:0] a;
	input wire [3:0] b;
	input wire ci;
	wire co0, co1, co2, co3;
	output wire [3:0] s;
	output wire sub_overflow;
	output wire zero;
	wire [3:0] b_comp;
	
	assign b_comp = ~b;
	
	assign co0 = (ci&a[0]) | (ci&b_comp[0]) | (a[0]&b_comp[0]);
	assign s[0] = a[0]^b_comp[0]^ci;
	
	assign co1 = (co0&a[1]) | (co0&b_comp[1]) | (a[1]&b_comp[1]);
	assign s[1] = a[1]^b_comp[1]^co0;
	
	assign co2 = (co1&a[2]) | (co1&b_comp[2]) | (a[2]&b_comp[2]);
	assign s[2] = a[2]^b_comp[2]^co1;
	
	assign co3 = (co2&a[3]) | (co2&b_comp[3]) | (a[3]&b_comp[3]);
	assign s[3] = a[3]^b_comp[3]^co2;
	
	assign sub_overflow = (a[3] ^ b[3]) & (s[3] ^ a[3]);
	assign zero = (s==4'b0000);
	
	
endmodule