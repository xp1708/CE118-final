`timescale 1ns/1ps
module Ram_tb;

	//Khai bao cac tin hieu dau vao/ra cho module Ram
	reg clk;
	reg rst;
	reg we;
	reg [7:0] addr;
	reg [7:0] d_in;
	reg cs;
	
	// khai bao cac tin hieu ra
	wire [7:0] d_out;
	
	Ram uut (
	.clk (clk),
	.rst(rst),
	.we(we),
	.addr(addr),
	.d_in(d_in),
	.cs(cs),
	.d_out(d_out)
	);
	
	initial begin 
		clk = 0;
		forever #5 clk = ~clk;
	end
	
	
	initial begin 
	rst = 1;
	d_in = 0;
	we = 0;
	addr = 0;
	cs = 0;
	
	#10;
	rst = 0;
	#50;
	cs = 1;
	we = 1;
	addr = 4'h5;
	d_in = 8'hFF;
	#10;
	
	we =0;
	addr = 4'h5;
	#10;
	
	$finish;
	end
endmodule


