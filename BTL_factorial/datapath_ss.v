module datapath_ss (
    input wire CLK,                    // Clock signal
    input wire WE1,                    // Write enable for register 1
    input wire WE2,                    // Write enable for register 2
    input wire [0:0] WA1,              // Write address for RegisterFile S0
    input wire [0:1] WA2,              // Write address for RegisterFile S1
    input wire [15:0] DATA_IN1,        // Input data for registers
    input wire [15:0] DATA_IN2,        // Input data for registers
    input wire REA1,                   // Read enable A for RegisterFile
    input wire REA2,                   // Read enable B for RegisterFile
    input wire [1:0] SEL_MUX1,         // Selector for mux 1
    input wire [1:0] SEL_MUX2,         // Selector for mux 2
    output wire [15:0] MUL,           // Output from mul 1
    output wire [15:0] SUM             // Output from sum 2
);

    // Declare wires to connect the modules
	 wire [15:0] RDA1, RDA2;            // Read data registers to add | multi
    wire [15:0] MULT_RESULT;           // Output from multiplier
    wire [15:0] ADD_RESULT;            // Output from adder
	 wire [15:0] mux1_to_rf;
	 wire [15:0] mux2_to_rf;

    // Instantiating the RegisterFile
    Register16  REG_FILE (
        .CLK(CLK),
        .WE1(WE1),
        .WE2(WE2),
        .WA1(WA1),
        .WA2(WA2),
        .DATA_IN1(mux1_to_rf),
		  .DATA_IN2(mux2_to_rf),
        .REA1(REA1),
        .REA2(REA2),
        .RAA1(RAA1),
        .RAA2(RAA2),
		  .RDA1(RDA1),
		  .RDA2(RDA2)
    );

    // Instantiating the multiplier
    multi16bit  MUL1 (
        .a(RDA1),
        .b(RDA2),
        .mul(MULT_RESULT)
    );
	 assign MUL = MULT_RESULT;

    // Instantiating the adder
    add16bit ADD1 (
        .a(RDA2),
        .b(16'b1111111111111111),  // constant -1
        .sum(ADD_RESULT)
    );
	 
	 assign SUM = ADD_RESULT;

    // Mux 1 logic
    mux3to1 MUX1 (
        .sel(SEL_MUX1),
        .in0(16'b0),           // constant 0
        .in1(MULT_RESULT),     // multiplier result
        .in2(16'b0000000000000001), // constant 1
        .out(mux1_to_rf)
    );

    // Mux 2 logic
    mux3to1 MUX2 (
        .sel(SEL_MUX2),
        .in0(DATA_IN2),        // nạp data_in
        .in1(ADD_RESULT),      // output of adder
        .in2(16'b0),           // default case: 0
        .out(mux2_to_rf)
    );
	 

endmodule
