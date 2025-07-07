module Data_Path(CLK, Cin, DataIn, IE, WA, WE, RAA, REA, RAB, REB, OE, S_ALU1, Out, Datapath);
	input CLK;
	input [15:0] DataIn;
	input IE;
	input [3:0] WA;
	input WE;
	input [3:0] RAA;
	input REA;
	input [3:0] RAB;
	input REB;
	input [3:0]S_ALU1;
	input OE;
	input Cin;
	
	wire [15:0] WD;
	wire [15:0] RDA;
	wire [15:0] RDB;
	
	wire [15:0] sel_to_rf;
	wire [15:0] rf_to_ALU1;
	wire [15:0] rf_to_ALU2;
	wire [15:0] ALU1_to_Reg;
	
	output wire [15:0] Datapath;
	output wire [15:0] Out;
	
	Mux2_1 Mux2_1(.a(DataIn), .b(ALU1_to_Reg), .sel(IE), .muxout(sel_to_rf));
	RegisterFile Reg(.CLK(CLK), .WA(WA), .WE(WE), .RAA(RAA), .REA(REA), .RAB(RAB), .REB(REB), .WD(sel_to_rf), .RDA(rf_to_ALU1), .RDB(rf_to_ALU2));
	ALU ALU1(.a(rf_to_ALU1),.b(rf_to_ALU2),.sel(S_ALU1),.out(ALU1_to_Reg),.cin(Cin));
	Register4Bit Reg1(.data_in(ALU1_to_Reg),.load_enable(OE),.CLK(CLK),.data_out(Out));
	
	assign Datapath = sel_to_rf;
	
endmodule
