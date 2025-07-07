module shift_register (
    input wire [15:0] a,       // Đầu vào dữ liệu 16 bit
    input wire I_left,         // Dữ liệu nhập khi shift left
    input wire I_right,        // Dữ liệu nhập khi shift right
    input wire [1:0] select,   // Chọn chức năng
    input wire clk,            // Tín hiệu đồng hồ
    output reg [15:0] R        // Đầu ra của thanh ghi
);

    // Mỗi cạnh lên của clk, thực hiện hành động dựa vào giá trị của select
    always @(posedge clk) begin
        case (select)
            2'b00: R <= R;                // Giữ nguyên giá trị hiện tại
            2'b01: R <= a;                // Nạp giá trị từ đầu vào a
            2'b10: R <= {R[14:0], I_right};  // Shift left và thêm I_right vào bit phải nhất
            2'b11: R <= {I_left, R[15:1]};    // Shift right và thêm I_left vào bit trái nhất
            default: R <= R;              // Đảm bảo R giữ nguyên nếu select không hợp lệ
        endcase
    end
endmodule
