
`timescale 1ns/1ps

module Control_Unit_tb;

  // Khai báo các tín hi?u ?? k?t n?i v?i `Control_Unit`
  reg CLK, Start, Datapath;
  wire IE, OE, WE, REA, REB, Done;
  wire [3:0] WA, RAA, RAB, S_ALU1;
  wire [1:0] S_shift;

  // Kh?i t?o module `Control_Unit`
  Control_Unit uut (
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

  // T?o xung nh?p cho `CLK`
  initial begin
    CLK = 0;
    forever begin #5 CLK = ~CLK; // Chu k? xung nh?p 10ns
	 end
  end

  // Test sequence
  initial begin
    // Kh?i t?o các tín hi?u ??u vào
    Start = 0;
    Datapath = 0;

    // ??i m?t chu k? xung nh?p
    #10;
    
    // Kích ho?t `Start` ?? b?t ??u FSM
    Start = 1;
    #10 Start = 0; // Reset Start ?? ch? kích ho?t 1 l?n

    // Ki?m tra quá trình chuy?n tr?ng thái
    #50 Datapath = 1; // Datapath chuy?n thành 1 t?i m?t th?i ?i?m
    #20 Datapath = 0; // ??t l?i Datapath sau vài chu k?
    
    // Ch? cho ??n khi tín hi?u Done ???c kích ho?t
    wait(Done == 1);

    // D?ng mô ph?ng
	 #1000 $stop;
  end

  // Theo dõi các tín hi?u ?? ki?m tra k?t qu?
  initial begin
    $monitor("Time=%0t | State=%b | IE=%b, WE=%b, OE=%b, REA=%b, REB=%b, WA=%b, RAA=%b, RAB=%b, S_ALU1=%b, S_shift=%b, Done=%b",
             $time, uut.c_state, IE, WE, OE, REA, REB, WA, RAA, RAB, S_ALU1, S_shift, Done);
  end

endmodule
