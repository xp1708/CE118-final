module Top_to_DE2(
	input CLK,             
   input Start,           
   input [15:0] DataIn,   
   output [15:0] Out,     
   output Done,   
	output [15:0] Datapath1,
	output [6:0] LED1,
	output [6:0] LED2
);
	wire CLK1S;
	delay_1s delay(.clkin(CLK),.clkout(CLK1S));
	Top_module Top_module(CLK1S, Start, DataIn, Out, Done, Datapath1);
	led_display_two_digits led(.binary_in(Out[7:0]),.segments1(LED1),.segments0(LED2));
	
endmodule