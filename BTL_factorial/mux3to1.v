module mux3to1 (
    input wire [15:0] in0,    // Đầu vào 16 bit 0
    input wire [15:0] in1,    // Đầu vào 16 bit 1
    input wire [15:0] in2,    // Đầu vào 16 bit 2
    input wire [1:0] sel,     // Tín hiệu chọn 2 bit
    output reg [15:0] out     // Đầu ra 16 bit
);

    // Khối luôn cập nhật đầu ra dựa trên tín hiệu chọn
    always @(*) begin
        case (sel)
            2'b00: out = in0; // Nếu `sel` là 00, chọn đầu vào `in0`
            2'b01: out = in1; // Nếu `sel` là 01, chọn đầu vào `in1`
            2'b10: out = in2; // Nếu `sel` là 10, chọn đầu vào `in2`
            default: out = 16'b0; // Mặc định, đầu ra là 0
        endcase
    end

endmodule
