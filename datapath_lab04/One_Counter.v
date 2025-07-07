module Top_Module(CLK, Start, DataIn, Done, Out);
    input CLK, Start;
    input [3:0] DataIn;
    output Done;
    output [3:0] Out;

    wire IE, OE, WE, REA, REB, Datapath;
    wire [3:0] WA, RAA, RAB;
    wire [2:0] S_ALU1;
    wire [1:0] S_shift;

    // Instantiate the Control Unit
    Control_Unit CU(
        .CLK(CLK), 
        .Start(Start), 
        .IE(IE), 
        .WA(WA), 
        .WE(WE), 
        .RAA(RAA), 
        .REA(REA), 
        .RAB(RAB), 
        .REB(REB), 
        .OE(OE), 
        .S_ALU1(S_ALU1), 
        .S_shift(S_shift), 
        .Done(Done), 
        .Datapath(Datapath)
    );

    // Instantiate the Data Path
    Data_Path DP(
        .CLK(CLK), 
        .DataIn(DataIn), 
        .IE(IE), 
        .WA(WA), 
        .WE(WE), 
        .RAA(RAA), 
        .REA(REA), 
        .RAB(RAB), 
        .REB(REB), 
        .OE(OE), 
        .S_ALU1(S_ALU1), 
        .S_shift(S_shift), 
        .Out(Out), 
        .Datapath(Datapath)
    );

endmodule
