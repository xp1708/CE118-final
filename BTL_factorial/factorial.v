module factorial (
    input  wire        clk,        // Clock signal  
    input  wire        start,      // Start calculation signal
    input  wire [7:0]  Data_i,     // Input number for factorial calculation
    output wire [7:0]  Out,        // Output factorial result
    output wire        done        // Calculation complete signal
);
    // Internal control signals
    wire   IE, OE, we, rea, reb, compare;
    wire [1:0]  wa;                // Write address for RegisterFile
    wire [1:0]  raa;               // Read address A for RegisterFile
    wire [1:0]  rab;               // Read address B for RegisterFile
    wire [2:0]  Sel_alu;           // ALU operation select

    // Instantiate datapath (top_module)
    Data_Path datapath (
        .clk(clk),                 // Clock input
        .Data_i(Data_i),           // Input data
        .IE(IE),                   // MUX control
        .we(we),                   // Write enable
        .wa(wa),                   // Write address
        .rea(rea),                 // Read enable A
        .reb(reb),                 // Read enable B
        .raa(raa),                 // Read address A
        .rab(rab),                 // Read address B
        .Sel_alu(Sel_alu),         // ALU operation select
        .Out(Out),                 // Output result
		  .OE(OE),
        .compare(compare)          // Compare signal
    );

    // Instantiate control unit
    control_unit controller (
        .clk(clk),                 // Clock input
        .start(start),             // Start signal
        .compare(compare),         // Compare input from datapath
        .IE(IE),                   // MUX control output
        .we(we),                   // Write enable output
        .wa(wa),                   // Write address output
        .rea(rea),                 // Read enable A output
        .reb(reb),                 // Read enable B output
        .raa(raa),                 // Read address A output
        .rab(rab),                 // Read address B output
        .Sel_alu(Sel_alu),         // ALU operation select output
		  .OE(OE),
        .done(done)                // Done signal output
    );

endmodule