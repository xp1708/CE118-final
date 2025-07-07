`timescale 1ns/1ps

module Counter_tb;

    // Khai báo các tín hiệu testbench
    reg CLK;           // Tín hiệu xung clock (KEY[0])
    reg LE;         // Tín hiệu LE / Load Enable (KEY[1])
    reg [2:0] SW;      // Input Switches (SW[2:0])
    wire [6:0] HEX0;   // Hiển thị trên LED 7 đoạn
    wire [2:0] LEDG;   // Hiển thị trên LED đơn

    // Khởi tạo mô-đun TopModule
    counter uut (
        .KEY({LE, CLK}),   // Kết nối KEY[0] (CLK) và KEY[1] (LE)
        .SW(SW),              // Giá trị nạp từ SW
        .HEX0(HEX0),          // Kết quả trên LED 7 đoạn
        .LEDG(LEDG)           // Kết quả trên LED đơn
    );

    // Tạo xung clock 50 MHz (chu kỳ 20 ns)
    always #10 CLK = ~CLK;

    initial begin
        // Khởi tạo các tín hiệu
        CLK = 0;            // Bắt đầu xung clock từ 0
        LE = 1;          // Bắt đầu LE để nạp giá trị
        SW = 3'b000;        // Giá trị mặc định ban đầu

        // Đặt LE về 0 sau 20 ns
        #20 LE = 0;

        // Mô phỏng nạp giá trị 001 vào bộ đếm
        SW = 3'b001;
        #20 LE = 1;      // Kích hoạt LE để nạp giá trị
        #20 LE = 0;      // Tắt LE sau khi nạp

        // Chạy xung clock và quan sát giá trị đếm
        #100;

        // Mô phỏng nạp giá trị 110 vào bộ đếm
        SW = 3'b110;
        #20 LE = 1;      // Kích hoạt LE để nạp giá trị mới
        #20 LE = 0;      // Tắt LE

        // Chạy xung clock thêm một thời gian và quan sát kết quả
        #100;

        // Mô phỏng lại nạp giá trị khác và quan sát kết quả
        SW = 3'b101;
        #20 LE = 1;
        #20 LE = 0;

        #100;

        // Kết thúc mô phỏng
        $stop;
    end

endmodule

