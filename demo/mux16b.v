module mux16b (
    input wire [15:0] a,  // Đầu vào 16 bit thứ nhất
    input wire [15:0] b,  // Đầu vào 16 bit thứ hai
    input wire sel,       // Đường chọn
    output wire [15:0] y  // Đầu ra 16 bit
);
    assign y = sel ? b : a;
endmodule
