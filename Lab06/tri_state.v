module tri_state(
    input wire [15:0] data,  // Dữ liệu đầu vào 16-bit
    input wire OE,       // Tín hiệu điều khiển
    output wire [15:0] out   // Đầu ra
);
    assign out = (OE) ? data : 16'bz; // Trở kháng cao nếu enable = 0
endmodule
