module main #(parameter DATA_WIDTH = 8) (
    input wire CLK,
    input wire [DATA_WIDTH-1:0] Inport,
    input wire IE,
    input wire WE,
    input wire [2:0] WA,
    input wire [2:0] RAA,
    output wire [DATA_WIDTH-1:0] RDA,
    input wire REA,
    input wire [2:0] RAB,
    output wire [DATA_WIDTH-1:0] RDB,
    input wire REB,
    input wire [1:0] alu_op,
    input wire shift_en,
    output wire [DATA_WIDTH-1:0] Outport,
	 input OE,
	 output wire Datapath,
	 output wire [3:0] Out
);

    // Signals
    wire [DATA_WIDTH-1:0] mux_out;
    wire [DATA_WIDTH-1:0] alu_a, alu_b;
    wire [DATA_WIDTH-1:0] alu_out;
    wire [DATA_WIDTH-1:0] shift_out;

    // Instantiate modules
    mux #(.WIDTH(DATA_WIDTH)) mux_inst (
        .a(shift_out),
        .b(Inport),
        .IE(IE),
        .mux_out(mux_out)
    );

    RegisterFile #(.DATA_WIDTH(DATA_WIDTH)) reg_file_inst (
        .CLK(CLK),
        .WA(WA),
        .WD(mux_out),
        .WE(WE),
        .RAA(RAA),
        .RDA(RDA),
        .REA(REA),
        .RAB(RAB),
        .RDB(RDB),
        .REB(REB)
    );

    alu #(.DATA_WIDTH(DATA_WIDTH)) alu_inst (
        .alu_op(alu_op),
        .a(RDA),
        .b(RDB),
        .out_alu(alu_out)
    );

    shifter #(.DATA_WIDTH(DATA_WIDTH)) shifter_inst (
        .data_in(alu_out),
        .shift_en(shift_en),
        .shift_out(shift_out)
    );

    // Map Outport to mux_out
    assign Outport = shift_out;

endmodule
