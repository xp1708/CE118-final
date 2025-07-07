module Top_module(
    input CLK,             
    input Start,           
    input [15:0] DataIn,   
    output [15:0] Out,     
    output Done,   
	 output [15:0] Datapath1
);
    
    wire IE, OE;
    wire [3:0] WAA, WAB, RAA, RAB;
    wire WEA, WEB, REA, REB;
    wire [3:0] S_ALU1, S_ALU2;
    wire [15:0] Datapath;
    
    one_counter_op datapath (
        .CLK(CLK),
        .DataIn(DataIn),
        .IE(IE),
        .WAA(WAA),
        .WEA(WEA),
        .WAB(WAB),
        .WEB(WEB),
        .RAA(RAA),
        .REA(REA),
        .RAB(RAB),
        .REB(REB),
        .OE(OE),
        .S_ALU1(S_ALU1),
        .S_ALU2(S_ALU2),
        .Out(Out),
        .Datapath(Datapath)
    );

    controler control (
        .CLK(CLK),
        .Datapath(Datapath),
        .IE(IE),
        .WAA(WAA),
        .WEA(WEA),
        .WAB(WAB),
        .WEB(WEB),
        .RAA(RAA),
        .REA(REA),
        .RAB(RAB),
        .REB(REB),
        .OE(OE),
        .S_ALU1(S_ALU1),
        .S_ALU2(S_ALU2),
        .Done(Done),
        .Start(Start)
    );
	 
	 assign Datapath1 = Datapath;

endmodule
