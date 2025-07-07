module alu_16bit (
    input [15:0] in_a,    // Ngõ vào A
    input [15:0] in_b,    // Ngõ vào B
    input [2:0] opcode,   // Ngõ điều khiển (3-bit để chọn 1 trong 8 phép tính)
    output reg [15:0] result, // Kết quả
    output reg cout       // Carry-out (chỉ sử dụng cho phép cộng và trừ)
);

    always @(*) begin
        case (opcode)
            3'b000: result = ~in_a;             // Bù A
            3'b001: result = in_a & in_b;       // AND
            3'b010: result = in_a ^ in_b;       // XOR
            3'b011: result = in_a | in_b;       // OR
            3'b100: result = in_a - 16'b1;      // A - 1
            3'b101: {cout, result} = in_a + in_b; // ADD
            3'b110: {cout, result} = in_a - in_b; // SUB
            3'b111: result = in_a + 16'b1;      // A + 1
            default: result = 16'b0;            // Mặc định
        endcase
    end

endmodule
