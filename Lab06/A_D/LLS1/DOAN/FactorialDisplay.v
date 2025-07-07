module FactorialDisplay (
    input [15:0] factorial_result,  // Kết quả tính giai thừa (dạng thập phân 16 bit)
    output [6:0] HEX0,              // LED 7 đoạn cho hàng đơn vị
    output [6:0] HEX1,              // LED 7 đoạn cho hàng chục
    output [6:0] HEX2,              // LED 7 đoạn cho hàng trăm
    output [6:0] HEX3,              // LED 7 đoạn cho hàng nghìn
    output [6:0] HEX4               // LED 7 đoạn cho hàng chục nghìn
);

    wire [3:0] digit0, digit1, digit2, digit3, digit4;

    // Chuyển đổi số factorial_result thành từng chữ số BCD
    BinaryToBCD bcd_converter (
        .binary(factorial_result),
        .thousands(digit4),
        .hundreds(digit3),
        .tens(digit2),
        .ones(digit1),
        .tenths(digit0)
    );

    // Kết nối các chữ số BCD tới các LED 7 đoạn
    SevenSegDecoder decoder0 (.digit(digit0), .segments(HEX0));
    SevenSegDecoder decoder1 (.digit(digit1), .segments(HEX1));
    SevenSegDecoder decoder2 (.digit(digit2), .segments(HEX2));
    SevenSegDecoder decoder3 (.digit(digit3), .segments(HEX3));
    SevenSegDecoder decoder4 (.digit(digit4), .segments(HEX4));

endmodule
