
`timescale 1ns/1ps

module Control_Unit_tb;

  // Khai b�o c�c t�n hi?u ?? k?t n?i v?i `Control_Unit`
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
    // Kh?i t?o c�c t�n hi?u ??u v�o
    Start = 0;
    Datapath = 0;

    // ??i m?t chu k? xung nh?p
    #10;
    
    // K�ch ho?t `Start` ?? b?t ??u FSM
    Start = 1;
    #10 Start = 0; // Reset Start ?? ch? k�ch ho?t 1 l?n

    // Ki?m tra qu� tr�nh chuy?n tr?ng th�i
    #50 Datapath = 1; // Datapath chuy?n th�nh 1 t?i m?t th?i ?i?m
    #20 Datapath = 0; // ??t l?i Datapath sau v�i chu k?
    
    // Ch? cho ??n khi t�n hi?u Done ???c k�ch ho?t
    wait(Done == 1);

    // D?ng m� ph?ng
	 #1000 $stop;
  end

  // Theo d�i c�c t�n hi?u ?? ki?m tra k?t qu?
  initial begin
    $monitor("Time=%0t | State=%b | IE=%b, WE=%b, OE=%b, REA=%b, REB=%b, WA=%b, RAA=%b, RAB=%b, S_ALU1=%b, S_shift=%b, Done=%b",
             $time, uut.c_state, IE, WE, OE, REA, REB, WA, RAA, RAB, S_ALU1, S_shift, Done);
  end

endmodule
