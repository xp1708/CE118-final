module LED(
    input wire [2:0] bcd,     // 3-bit input từ bộ đếm
    output reg [6:0] led      // Output 7 đoạn hiển thị
);

    always @(*) begin
        case(bcd)
            3'b000: led = 7'b1000000;  // Hiển thị 0
            3'b001: led = 7'b1111001;  // Hiển thị 1
            3'b010: led = 7'b0100100;  // Hiển thị 2
            3'b011: led = 7'b0110000;  // Hiển thị 3
            3'b100: led = 7'b0011001;  // Hiển thị 4
            3'b101: led = 7'b0010010;  // Hiển thị 5
            3'b110: led = 7'b0000010;  // Hiển thị 6
            3'b111: led = 7'b1111000;  // Hiển thị 7
            default: led = 7'b1111111; // Mặc định không hiển thị
        endcase
    end

endmodule