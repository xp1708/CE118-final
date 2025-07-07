module multi16bit(
    input [15:0] a,   // 16-bit input 'a'
    input [15:0] b,   // 16-bit input 'b'
    output [15:0] mul // 16-bit output 'sum'
);
    assign mul = a * b; // Perform 16-bit multi
endmodule
