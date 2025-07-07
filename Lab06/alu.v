module alu(
    input wire [15:0] A,          // Toán hạng A (16-bit)
    input wire [15:0] B,          // Toán hạng B (16-bit)
    input wire [2:0] sel,         // Tín hiệu chọn chức năng (3-bit)
    output reg [15:0] result      // Kết quả (16-bit)
);

    always @(*) begin
        case (sel)
            3'b000: result = ~A;               // NOT A
            3'b001: result = A & B;            // A AND B
            3'b010: result = A | B;            // A OR B
            3'b011: result = A ^ B;            // A XOR B
            3'b100: result = A - 1;            // Giảm 1 (A - 1)
            3'b101: result = A + B;            // Cộng (A + B)
            3'b110: result = A - B;            // Trừ (A - B)
            3'b111: result = A + 1;            // Tăng 1 (A + 1)
            default: result = 16'b0;           // Mặc định: Kết quả bằng 0
        endcase
    end

endmodule
