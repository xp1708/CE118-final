module giaithua (CLK, Start, DataIn, Out, Done, Datapath);
	input CLK, Start;
	input [15:0] DataIn;
	output [15:0] Out;
	output Done;
	wire IE, OE, WE, REA, REB;
	wire [3:0] WA;
	wire [3:0] RAA;
	wire [3:0] RAB;
	wire [3:0] S_ALU1;
	output wire [15:0] Datapath;
	wire Cin;
	
	Control_Unit CU(.CLK(CLK), .Start(Start), .IE(IE), .WA(WA), .WE(WE), .RAA(RAA), .REA(REA), .RAB(RAB), .REB(REB), .OE(OE), .S_ALU1(S_ALU1), .Done(Done), .Datapath(Datapath), .Cin(Cin));
	Data_Path DP(.CLK(CLK), .DataIn(DataIn), .IE(IE), .WA(WA), .WE(WE), .RAA(RAA), .REA(REA), .RAB(RAB), .REB(REB), .OE(OE), .S_ALU1(S_ALU1), .Out(Out), .Datapath(Datapath), .Cin(Cin));
	
endmodule