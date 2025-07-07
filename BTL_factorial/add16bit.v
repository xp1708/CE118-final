module add16bit(
    input [15:0] a,   // 16-bit input 'a'
    input [15:0] b,   // 16-bit input 'b'
    output [15:0] sum // 16-bit output 'sum'
);
    assign sum = a + b; // Perform 16-bit addition
endmodule
