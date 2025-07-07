`timescale 1ns/1ps

module One_Counter_tb;
  // Khai báo các tín hi?u cho testbench
  reg CLK1, CLK2;
  reg Start;
  reg [3:0] DataIn;
  wire [3:0] Out;
  wire Done;

  // Kh?i t?o module c?n ki?m th?
  One_Counter uut (
    .CLK1(CLK1),
    .CLK2(CLK2),
    .Start(Start),
    .DataIn(DataIn),
    .Out(Out),
    .Done(Done)
  );

  // T?o xung nh?p cho CLK1
  initial begin
    CLK1 = 0;
    repeat (500) #10 CLK1 = ~CLK1;  // 500 chu k? 5ns, t?ng c?ng 2500ns
  end
  
  // T?o xung nh?p cho CLK2
  initial begin
    #10 CLK2 = 0;
    repeat (500) #10 CLK2 = ~CLK2; // 250 chu k? 10ns, t?ng c?ng 2500ns
  end

  // Kh?i t?o và ki?m th? các tín hi?u
  initial begin
    // Thi?t l?p tín hi?u ban ??u
    Start = 0;
    DataIn = 4'b0000; // D? li?u ??u vào m?c ??nh

    // ??i 10ns r?i thay ??i DataIn và kh?i ??ng
    #10 DataIn = 4'b1010; // Ch? thay ??i DataIn m?t l?n
    Start = 1;            // Kh?i ??ng
    #10 Start = 0;       // Ng?ng kh?i ??ng

    // Theo dõi quá trình
    #100; // Ch? 100ns ?? ki?m tra k?t qu?

    // K?t thúc mô ph?ng
    #1000 $stop;
  end
endmodule
