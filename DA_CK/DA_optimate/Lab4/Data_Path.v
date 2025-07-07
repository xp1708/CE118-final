module Data_Path(CLK, DataIn, IE, WAA, WEA,, WAB, WEB, RAA, REA, RAB, REB, OE, S_ALU1, S_ALU2, Out, Datapath);
	input CLK;
	input [15:0] DataIn;
	input IE;
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
	
	wire [15:0] WDA;
	wire [15:0] WDB;
	wire [15:0] RDA;
	wire [15:0] RDB;
	
	wire [15:0] rf_to_ALU1;
	wire [15:0] rf_to_ALU2;
	wire [15:0] ALU2_to_mux;
	wire [15:0] ALU1_to_reg;
	
	output wire [15:0]Datapath;
	output wire [15:0] Out;
	
	Mux2_1 Mux2_1(.a(DataIn), .b(ALU2_to_mux), .sel(IE), .muxout(Datapath));
	RegisterFile Reg(.CLK(CLK), .WA1(WAA), .WE1(WEA), .WA2(WAB), .WE2(WEB), .RAA(RAA), .REA(REA), .RAB(RAB), .REB(REB), .WD1(ALU1_to_reg),.WD2(Datapath), .RDA(rf_to_ALU1), .RDB(rf_to_ALU2));
	ALU ALU1(.a(rf_to_ALU1),.b(rf_to_ALU2),.sel(S_ALU1),.out(ALU1_to_reg),.cin(1'b0));
	ALU ALU2(.a(rf_to_ALU2),.sel(S_ALU2),.out(ALU2_to_mux),.cin(1'b1));
	Register4Bit Reg1(.data_in(ALU1_to_reg),.load_enable(OE),.CLK(CLK),.data_out(Out));
	
endmodule
