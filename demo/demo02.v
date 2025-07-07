
// Mô-đun full subtractor
module demo02 (
    input wire a, b, cin,
    output wire diff, cout
);
    assign diff = a ^ b ^ cin;  // Tính hiệu
    assign cout = (~a & b) | (cin & ~(a ^ b));  // Tính bit mượn
endmodule
