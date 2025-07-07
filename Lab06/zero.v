module zero(
    input [15:0] a,
    input [1:0] b,
    output zero_flag
);
    assign zero_flag = ~(a | {14'b0, b}); // Phát hiện tất cả 0
endmodule
