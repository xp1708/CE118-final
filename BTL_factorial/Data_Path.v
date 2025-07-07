module Data_Path(clk, Data_i, IE, wa, we, raa, rea, rab, reb, OE, Sel_alu, Out, compare);
    input wire clk;                    // Clock signal
    input wire [7:0] Data_i;           // Input port for MUX
    input wire IE;                     // Input enable for MUX
    input wire we;                     // Write enable for RegisterFile
    input wire [1:0] wa;               // Write address for RegisterFile
    input wire rea;                    // Read enable A for RegisterFile
    input wire reb;                    // Read enable B for RegisterFile
    input wire [1:0] raa;              // Read address A for RegisterFile
    input wire [1:0] rab;              // Read address B for RegisterFile
    input wire [2:0] Sel_alu;          // Select operation for ALU
	 input wire OE;
    output wire [7:0] Out;             // Output of datapath
    output wire compare;                // Output from Comparator


	wire [7:0] sel_to_rf;
	wire [7:0] rf_to_ALU1;
	wire [7:0] rf_to_ALU2;
	wire [7:0] ALU_to_Reg;
	 
	 // Instantiate MUX
    Mux21 mux_inst (
        .I0(ALU_to_Reg),                    // When IE = 0, select ALU output
        .I1(Data_i),                   // When IE = 1, select external input
        .IE(IE),                     
        .mux_o(sel_to_rf)
    );



    // Instantiate RegisterFile
    RegisterFile reg_inst (
        .clk(clk),
        .data_in(sel_to_rf),             // Input from MUX output
        .we(we),
        .wa(wa),
        .rea(rea),
        .reb(reb),
        .raa(raa),
        .rab(rab),
        .rda(rf_to_ALU1),
        .rdb(rf_to_ALU2)
    );

    // Instantiate ALU
    ALU alu_inst (
        .a_alu_i(rf_to_ALU1),                 // Connect to rda (8-bit)
        .b_alu_i(rf_to_ALU2),                 // Connect to rdb (8-bit)
        .Sel_alu(Sel_alu),
        .alu_o(ALU_to_Reg)                  // 8-bit output
    );
	
	 // Register store value
		Register8Bit Reg1(
			 .data_in(ALU_to_Reg), 
			 .load_enable(OE), 
			 .clk(clk), 
			 .data_out(Out)
		);
	 // comparator with 1
		Comparator comparator_inst (
			.compare_in(ALU_to_Reg),
			.compare(compare)
			);
			
	 
endmodule
