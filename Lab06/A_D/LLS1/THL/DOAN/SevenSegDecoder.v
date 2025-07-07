module SevenSegDecoder (
    input [3:0] digit,
    output reg [6:0] segments
);
    always @(*) begin
        case (digit)
            4'd0: segments = 7'b1000000; // Hiển thị 0
            4'd1: segments = 7'b1111001; // Hiển thị 1
            4'd2: segments = 7'b0100100; // Hiển thị 2
            4'd3: segments = 7'b0110000; // Hiển thị 3
            4'd4: segments = 7'b0011001; // Hiển thị 4
            4'd5: segments = 7'b0010010; // Hiển thị 5
            4'd6: segments = 7'b0000010; // Hiển thị 6
            4'd7: segments = 7'b1111000; // Hiển thị 7
            4'd8: segments = 7'b0000000; // Hiển thị 8
            4'd9: segments = 7'b0010000; // Hiển thị 9
            default: segments = 7'b1111111; // Tắt LED nếu không hợp lệ
        endcase
    end
endmodule
