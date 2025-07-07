module giaithua (CLK, Start, DataIn, Out, Done, Datapath);
	input CLK, Start;
	input [15:0] DataIn;
	output [15:0] Out;
	output Done;
	wire IE, OE, WEA, WEB, REA, REB;
	wire [3:0] WAA;
	wire [3:0] WAB;
	wire [3:0] RAA;
	wire [3:0] RAB;
	wire [3:0] S_ALU1;
	wire [3:0] S_ALU2;
	output wire [15:0] Datapath;

	
	Control_Unit CU(.CLK(CLK), .Start(Start), .IE(IE), .WAA(WAA), .WAB(WAB), .WEA(WEA), .WEB(WEB), .RAA(RAA), .REA(REA), .RAB(RAB), .REB(REB), .OE(OE), .S_ALU1(S_ALU1), .S_ALU2(S_ALU2), .Done(Done), .Datapath(Datapath));
	Data_Path DP(.CLK(CLK), .DataIn(DataIn), .IE(IE), .WAA(WAA), .WAB(WAB), .WEA(WEA), .WEB(WEB), .RAA(RAA), .REA(REA), .RAB(RAB), .REB(REB), .OE(OE), .S_ALU1(S_ALU1), .S_ALU2(S_ALU2), .Out(Out), .Datapath(Datapath));
	
endmodule