module counter(
    input wire [1:0] KEY,      // KEY[0] là Clock, KEY[1] là Load Enable (LE)
    input wire [2:0] SW,       // SW[2:0] để nạp giá trị ban đầu
    output wire [6:0] HEX0,    // Hiển thị LED 7 đoạn
    output wire [2:0] LEDG     // LED hiển thị kết quả đếm
);

    wire [2:0] count;

    // Khởi tạo bộ đếm
    T_ff T_ff(
        .CLK(KEY[0]),
        .LE(KEY[1]),
        .SW(SW),
        .Q(count)
    );

    // Hiển thị kết quả đếm lên LED 7 đoạn
    Mux2to1 decode(
        .bcd(count),
        .led(HEX0)
    );

    // Hiển thị kết quả đếm trên LED đơn
    assign LEDG = count;

endmodule