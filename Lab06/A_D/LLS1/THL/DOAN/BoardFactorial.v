module BoardFactorial(CLK, Start, DataIn, Done, HEX0, HEX1, HEX2, HEX3, HEX4, Out, Datapath);
	input CLK, Start;
	input [15:0] DataIn;
	
	output wire [15:0] Datapath;
	output wire [15:0] Out;
	
	output Done;
	output [6:0] HEX0;
	output [6:0] HEX1;
	output [6:0] HEX2;
	output [6:0] HEX3;
	output [6:0] HEX4;
	
	giaithua giaithua(.CLK(CLK), .Start(Start), .DataIn(DataIn), .Done(Done), .Out(Out), .Datapath(Datapath));
	FactorialDisplay(.factorial_result(Out),.HEX0(HEX0),.HEX1(HEX1),.HEX2(HEX2),.HEX3(HEX3),.HEX4(HEX4));
endmodule