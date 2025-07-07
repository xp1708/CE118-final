module triangle_control (
    input [15:0] shift_out,  // Đầu vào từ ngõ ra của bộ dịch
    input EO,                // Chân điều khiển enable output
    output [15:0] output_data // Ngõ ra
);

    assign output_data = (EO) ? shift_out : 16'bz; // Nếu EO bật, ngõ ra nhận giá trị từ shift_out, nếu EO tắt, ngõ ra ở trạng thái trở kháng cao

endmodule
