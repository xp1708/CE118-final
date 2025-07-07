module Factorial_Display(
    input clk,                   // Clock để quét LED 7 đoạn
    input [15:0] factorial_result, // Kết quả giai thừa 16-bit
    output reg [6:0] seg,        // Tín hiệu điều khiển LED 7 đoạn (a-g)
    output reg [4:0] digit_select // Chọn LED nào sẽ sáng
);

    reg [3:0] digit0, digit1, digit2, digit3, digit4; // Các chữ số thập phân
    integer num_temp;
    reg [3:0] current_digit; // Chữ số hiện tại để hiển thị
    
    // Tách các chữ số thập phân từ kết quả giai thừa
    always @(*) begin
        num_temp = factorial_result; // Gán kết quả vào biến tạm

        // Lấy từng chữ số
        digit0 = num_temp % 10;       // Hàng đơn vị
        num_temp = num_temp / 10;
        digit1 = num_temp % 10;       // Hàng chục
        num_temp = num_temp / 10;
        digit2 = num_temp % 10;       // Hàng trăm
        num_temp = num_temp / 10;
        digit3 = num_temp % 10;       // Hàng nghìn
        num_temp = num_temp / 10;
        digit4 = num_temp % 10;       // Hàng chục nghìn
    end

    // Mã hóa chữ số thành tín hiệu điều khiển LED 7 đoạn
    always @(*) begin
        case (current_digit)
            4'd0: seg = 7'b0111111;  // Hiển thị số 0
            4'd1: seg = 7'b0000110;  // Hiển thị số 1
            4'd2: seg = 7'b1011011;  // Hiển thị số 2
            4'd3: seg = 7'b1001111;  // Hiển thị số 3
            4'd4: seg = 7'b1100110;  // Hiển thị số 4
            4'd5: seg = 7'b1101101;  // Hiển thị số 5
            4'd6: seg = 7'b1111101;  // Hiển thị số 6
            4'd7: seg = 7'b0000111;  // Hiển thị số 7
            4'd8: seg = 7'b1111111;  // Hiển thị số 8
            4'd9: seg = 7'b1101111;  // Hiển thị số 9
            default: seg = 7'b0000000; // Tắt LED
        endcase
    end

    // Quét từng LED để hiển thị từng chữ số
    reg [2:0] scan_counter;
    
    always @(posedge clk) begin
        scan_counter <= scan_counter + 1;
    end

    always @(*) begin
        case (scan_counter)
            3'd0: begin current_digit = digit0; digit_select = 5'b00001; end
            3'd1: begin current_digit = digit1; digit_select = 5'b00010; end
            3'd2: begin current_digit = digit2; digit_select = 5'b00100; end
            3'd3: begin current_digit = digit3; digit_select = 5'b01000; end
            3'd4: begin current_digit = digit4; digit_select = 5'b10000; end
            default: begin current_digit = 4'd0; digit_select = 5'b00000; end
        endcase
    end
endmodule
