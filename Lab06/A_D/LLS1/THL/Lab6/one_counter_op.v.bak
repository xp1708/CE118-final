module one_counter (CLK, DataIn, IE, WAA, WAB, WEA, WEB, RAA, REA, RAB, REB, OE, S_ALU1, S_ALU2, Out, Datapath1, Datapath2);
	input CLK, IE, OE;
	input [15:0] DataIn;
	input [3:0] WAA;
	input WEA;
	input [3:0] WAB;
	input WEB;
	input [3:0] RAA;
	input REA;
	input [3:0] RAB;
	input REB;
	input [3:0]S_ALU1;
	input [3:0]S_ALU2;
	input OE;
	output [15:0] Out;
	output Datapath1, Datapath2;
	
	wire [15:0]MUX_TO_RF2;
	wire [15:0]RF2_TO_ALU234;
	wire [15:0]ALU4_TO_MUX;
	wire [15:0]RF1_TO_ALU1;
	wire [15:0]ALU1_TO_RF1;
	wire [15:0]ALU1_TO_REG;
	
	assign ALU1_TO_RF1 = ALU1_TO_REG;
	
	Mux2_1 Mux(.a(DataIn), .b(ALU4_TO_MUX), .sel(IE), .muxout(MUX_TO_RF2));
	RegisterFile RF1(.CLK(CLK), .WA1(WAA), .WD1(ALU1_TO_RF1), .WE1(WEA), .WA2(WAB), .WD2(MUX_TO_RF2), .WE2(WEB), .RAA(RAA), .RDA(RF1_TO_ALU1), .REA(REA), .RAB(RAB), .RDB(RF2_TO_ALU234), REB(REB));
	ALU ALU1(.a(RF1_TO_ALU1),.b(0),.sel(S_ALU1),.out(ALU1_TO_REG),.cin(1'b0));
	ALU ALU4(.a(RF2_TO_ALU234),.b(0),.sel(S_ALU2),.out(ALU4_TO_MUX));
	assign 
endmodule