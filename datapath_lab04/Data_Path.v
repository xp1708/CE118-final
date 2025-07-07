module Data_Path(CLK, DataIn, IE, WA, WE, RAA, REA, RAB, REB, OE, S_ALU1, S_shift, Out, Datapath);
	input CLK;
	input [3:0] DataIn;
	input IE;
	input [3:0] WA;
	input WE;
	input [3:0] RAA;
	input REA;
	input [3:0] RAB;
	input REB;
	input [2:0]S_ALU1;
	input [1:0] S_shift;
	input OE;
	
	
	
	wire [3:0] sel_to_rf;
	wire [3:0] rf_to_ALU1;
	wire [3:0] rf_to_ALU2;
	wire [3:0] ALU1_to_Shift;
	wire [3:0] Reg_to_In;
	wire [3:0] Shifter_to_Reg;
	
	output wire Datapath;
	output wire [3:0] Out;
	
	Mux2_1 Mux2_1(
    .a(DataIn), 
    .b(Shifter_to_Reg), 
    .sel(IE), 
    .muxout(sel_to_rf)
	);

	RegisterFile Reg(
    .CLK(CLK), 
    .WA(WA), 
    .WE(WE), 
    .RAA(RAA), 
    .REA(REA), 
    .RAB(RAB), 
    .REB(REB), 
    .WD(sel_to_rf), 
    .RDA(rf_to_ALU1), 
    .RDB(rf_to_ALU2)
	);

	ALU_4bit ALU1(
    .a_alu_i(rf_to_ALU1), 
    .b_alu_i(rf_to_ALU2), 
    .Sel_alu(S_ALU1), 
    .alu_o(ALU1_to_Shift)
	);

	Shift_Register Shift_Reg(
    .data_in(ALU1_to_Shift), 
    .data_out(Shifter_to_Reg), 
    .shift_ctrl(S_shift)
	);

	Register4Bit Reg1(
    .data_in(Shifter_to_Reg), 
    .load_enable(OE), 
    .CLK(CLK), 
    .data_out(Out)
	);

	
	assign Datapath = (Shifter_to_Reg == 0) ? 1'b1 : 1'b0;
	
endmodule
