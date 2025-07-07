`timescale 1ns/1ps

module One_Counter_tb;
  // Khai bao cac tin hieu cho testbench
  reg CLK1, CLK2;
  reg Start;
  reg [3:0] DataIn;
  wire [3:0] Out;
  wire Done;

  // Khoi tao module can kiem th?
  One_Counter uut (
    .CLK1(CLK1),
    .CLK2(CLK2),
    .Start(Start),
    .DataIn(DataIn),
    .Out(Out),
    .Done(Done)
  );

  // Tao xung nhip cho CLK1
  initial begin
    CLK1 = 0;
    repeat (500) #10 CLK1 = ~CLK1;  // 500 chu ky 5ns, tong cong 2500ns
  end
  
  // Tao xung nhip cho CLK2
  initial begin
    #10 CLK2 = 0;
    repeat (500) #10 CLK2 = ~CLK2; // 250 chu ky 10ns, tong cong 2500ns
  end

  // Khoi tao v� ki?m th? cac tin hieu
  initial begin
    // Thiet lap tin hieu ban ??u
    Start = 0;
    DataIn = 4'b0000; // Du lieu ??u v�o m?c ??nh

    // ??i 10ns r?i thay ??i DataIn v� kh?i ??ng
    #10 DataIn = 4'b1010; // Ch? thay ??i DataIn m?t l?n
    Start = 1;            // Kh?i ??ng
    #10 Start = 0;       // Ng?ng kh?i ??ng

    // Theo doi qua trinh
    #100; // Ch? 100ns ?? ki?m tra k?t qu?

    // Ket thuc mo phong
    #1000 $stop;
  end
endmodule
