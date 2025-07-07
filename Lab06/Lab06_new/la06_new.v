module one_counter_op(CLK, DataIn, IE, WAA, WAB, WEA, WEB, RAA, REA, RAB, REB, OE, shift_ctrl, S_ALU, Out, Datapath);
	input CLK, IE, OE, shift_ctrl;
	input [15:0] DataIn;
	input [3:0] WAA;
	input WEA;
	input [3:0] WAB;
	input WEB;
	input [3:0] RAA;
	input REA;
	input [3:0] RAB;
	input REB;
	input [2:0]S_ALU;
	output [15:0] Out;
	output [15:0] Datapath;
	
	wire [15:0]MUX_TO_RF2;
	wire [15:0]RF2_TO_ALU234;
	wire [15:0]ALU4_TO_MUX;
	wire [15:0]RF1_TO_ALU1;
	wire [15:0]ALU1_TO_RF1;
	wire [15:0]ALU1_TO_REG;

	
	assign ALU1_TO_RF1 = ALU1_TO_REG;
	assign Datapath = RF2_TO_ALU234;
	
	Mux2_1 Mux(.a(DataIn), .b(ALU4_TO_MUX), .sel(IE), .muxout(MUX_TO_RF2));
	RegisterFile RF1(.CLK(CLK), .WAA(WAA), .WDA(ALU1_TO_RF1), .WEA(WEA), .WAB(WAB), .WDB(MUX_TO_RF2), .WEB(WEB), .RAA(RAA), .RDA(RF1_TO_ALU1), .REA(REA), .RAB(RAB), .RDB(RF2_TO_ALU234), .REB(REB));
	ALU ALU1(.a(RF1_TO_ALU1),.sel(S_ALU1),.out(ALU1_TO_REG),.cin(1'b0));
	ALU ALU4(.a(RF2_TO_ALU234),.sel(S_ALU2),.out(ALU4_TO_MUX));
	Register4Bit REG(.data_in(ALU1_TO_REG), .load_enable(OE), .CLK(CLK), .data_out(Out));
endmodule