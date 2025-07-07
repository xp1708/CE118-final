module top_module (
    input CLK,
    input reset,
    input Start,
    input [15:0] data_in,
    output Done,
    output [15:0] data_out
);

    // Internal signals
    wire IE, Done;
    wire [1:0] WAA, WAB, RAA, RAB;
    wire WEA, WEB, REA, REB;
    wire [2:0] S_ALU;
    wire Pass, zero_flag;

    // Instantiate Control Unit
    Control_Unit_op control_unit (
        .CLK(CLK),
        .Start(Start),
        .zero_flag(zero_flag),
        .IE(IE),
        .Done(Done),
        .WAA(WAA),
        .WEA(WEA),
        .WAB(WAB),
        .WEB(WEB),
        .RAA(RAA),
        .REA(REA),
        .RAB(RAB),
        .REB(REB),
        .S_ALU(S_ALU),
        .Pass(Pass)
    );

    // Instantiate Data Path
    Data_Path data_path (
        .CLK(CLK),
        .reset(reset),
        .IE(IE),
        .WAA(WAA),
        .WEA(WEA),
        .WAB(WAB),
        .WEB(WEB),
        .RAA(RAA),
        .REA(REA),
        .RAB(RAB),
        .REB(REB),
        .S_ALU(S_ALU),
        .Pass(Pass),
        .data_in(data_in),
        .data_out(data_out),
        .zero_flag(zero_flag)
    );

    // Assign Done signal
    assign Done = Done;

endmodule
