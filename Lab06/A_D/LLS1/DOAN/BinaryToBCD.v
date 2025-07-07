module BinaryToBCD (
    input [15:0] binary,
    output reg [3:0] thousands,
    output reg [3:0] hundreds,
    output reg [3:0] tens,
    output reg [3:0] ones,
    output reg [3:0] tenths
);
    // Code chuyển đổi từ nhị phân sang BCD.
    // Sử dụng thuật toán Double-Dabble để phân chia các giá trị hàng nghìn, hàng trăm, hàng chục và hàng đơn vị từ binary.
    integer i;
    always @(binary) begin
        // Reset các giá trị
        thousands = 4'd0;
        hundreds = 4'd0;
        tens = 4'd0;
        ones = 4'd0;
        tenths = 4'd0;

        // Thực hiện Double-Dabble
        for (i = 15; i >= 0; i = i - 1) begin
            if (thousands >= 5) thousands = thousands + 3;
            if (hundreds >= 5) hundreds = hundreds + 3;
            if (tens >= 5) tens = tens + 3;
            if (ones >= 5) ones = ones + 3;
            if (tenths >= 5) tenths = tenths + 3;

            // Dịch các chữ số sang trái
            thousands = thousands << 1 | hundreds[3];
            hundreds = hundreds << 1 | tens[3];
            tens = tens << 1 | ones[3];
            ones = ones << 1 | tenths[3];
            tenths = tenths << 1 | binary[i];
        end
    end
endmodule
