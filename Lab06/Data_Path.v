module Data_Path(CLK, DataIn, IE, WAA, WEA, WAB, WEB, RAA, REA, RAB, REB, S_ALU, PASS, OE, result);
	input CLK;
	input [15:0] DataIn;
	input IE;
	input [1:0] WAA;
	input WEA;
	input [1:0] WAB;
	input WEB;
	input [1:0] RAA;
	input REA;
	input [1:0] RAB;
	input REB;
	input [2:0]S_ALU;
	input PASS;
	input OE;
	output wire [15:0]result;

	wire [15:0] WDA;
	wire [15:0] WDB;
	wire [15:0] RDA;
	wire [15:0] RDB;
	
	wire [15:0] mux_to_rf;
	wire [15:0] rf_to_ALU_A;
	wire [15:0] rf_to_ALU_B;
	wire [15:0] ALU_to_mux;
	wire [15:0] ALU1_to_reg;
	wire [15:0] shift_out;

	
	mux2_1 mux (.a(DataIn), .b(ALU_to_mux), .sel(IE), .muxout(mux_to_rf));
	register_file Reg (.CLK(CLK), .WA1(WAA), .WE1(WEA), .WA2(WAB), .WE2(WEB), .RAA(RAA), .REA(REA), .RAB(RAB), .REB(REB), .WD1(mux_to_rf), .WD2(shift_out), .RDA(rf_to_ALU_A), .RDB(rf_to_ALU_B));
	alu alu (.A(rf_to_ALU_A), .B(rf_to_ALU_B), .sel(S_ALU), .result(ALU_to_mux));
	Shift_reg shift (.data_in(rf_to_ALU_A), .shift_ctrl(PASS), .data_out(shift_out), .CLK(CLK));
	tri_state tri_state (.data(shift_out), .OE(OE), .out(result));
endmodule
	