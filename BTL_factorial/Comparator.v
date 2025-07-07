module Comparator (
    input wire [7:0] compare_in,   // Đầu vào 8-bit cần so sánh
    output wire compare         // Đầu ra cho biết kết quả so sánh
);

    // So sánh giá trị đầu vào với 1
    assign compare = (compare_in == 8'b00000000) ? 1'b1 : 1'b0;

endmodule
