module bcd_to_led(a,b,sel,cin,add_sub_overflow,mul_overflow,zero,leda,ledb,ledcin1,ledcin2, ledout,daua,daub,dauout,la,lb,lout);
	input [3:0]a;
	input [3:0]b;
	input [3:0]sel;
	input cin;
	wire [3:0]out;
	output wire add_sub_overflow;
	output wire mul_overflow;
	output wire zero;
	output wire [6:0] leda;
	output wire [6:0] ledb;
	output wire [6:0] ledcin1;
	output wire [6:0] ledcin2;
	output wire [6:0] ledout;
	output wire [6:0] daua;
	output wire [6:0] daub;
	output wire [6:0] dauout;
	
	output wire [3:0] la;
	output wire [3:0] lb;
	output wire [3:0] lout;
	
	ALU(.a(a),.b(b),.sel(sel),.out(out),.cin(cin),.add_sub_overflow(add_sub_overflow),.mul_overflow(mul_overflow),.zero(zero));
	LED ledA(.bcd(a[2:0]), .led(leda));
	LED ledB(.bcd(b[2:0]), .led(ledb));
	LED ledc(.bcd(out[2:0]), .led(ledout));
	
	assign ledcin1 = (sel == 4'b0110) ? 7'b1111110 : (sel == 4'b0101) ? 7'b1001110 : 7'b1111111;
	assign ledcin2 = (sel == 4'b0110) ? 7'b1111110 : (sel == 4'b0101) ? 7'b1111000 : 7'b1111111;
	assign daua = (a[3]) ? 7'b1111110: 7'b1111111;
	assign daub = (b[3]) ? 7'b1111110: 7'b1111111;
	assign dauout = (out[3]) ? 7'b1111110: 7'b1111111;
	
	assign la = a;
	assign lb = b;
	assign lout = out;
	
endmodule