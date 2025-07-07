module led_display_two_digits(
    input [7:0] binary_in,  
    output reg [6:0] segments1,  
    output reg [6:0] segments0   
);
    reg [3:0] tens, units;

    always @(*) begin

        tens = binary_in / 10;  
        units = binary_in % 10;

        case (tens)
            4'b0000: segments1 = 7'b1000000; // 0
            4'b0001: segments1 = 7'b1111001; // 1
            4'b0010: segments1 = 7'b0100100; // 2
            4'b0011: segments1 = 7'b0110000; // 3
            4'b0100: segments1 = 7'b0011001; // 4
            4'b0101: segments1 = 7'b0010010; // 5
            4'b0110: segments1 = 7'b0000010; // 6
            4'b0111: segments1 = 7'b1111000; // 7
            4'b1000: segments1 = 7'b0000000; // 8
            4'b1001: segments1 = 7'b0010000; // 9
            default: segments1 = 7'b1111111; // Tắt LED
        endcase

        case (units)
            4'b0000: segments0 = 7'b1000000; // 0
            4'b0001: segments0 = 7'b1111001; // 1
            4'b0010: segments0 = 7'b0100100; // 2
            4'b0011: segments0 = 7'b0110000; // 3
            4'b0100: segments0 = 7'b0011001; // 4
            4'b0101: segments0 = 7'b0010010; // 5
            4'b0110: segments0 = 7'b0000010; // 6
            4'b0111: segments0 = 7'b1111000; // 7
            4'b1000: segments0 = 7'b0000000; // 8
            4'b1001: segments0 = 7'b0010000; // 9
            default: segments0 = 7'b1111111; // Tắt LED
        endcase
    end
endmodule
