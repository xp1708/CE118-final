module demo01 (
    input wire [15:0] N,         // Đầu vào số N
    input wire clk,              // Tín hiệu đồng hồ
    output wire [15:0] result,   // Kết quả cộng dồn
    input wire select,           // Cổng select cho mux
    input wire EO,               // Chân điều khiển enable output cho triangle_control
    input wire [2:0] alu_opcode  // Ngõ điều khiển cho ALU
);
    wire [15:0] mux_out;          // Đầu ra từ mux
    wire [15:0] alu_out;          // Đầu ra từ ALU
    reg [15:0] sum;               // Biến lưu trữ tổng
    wire [15:0] shift_out;        // Đầu ra từ shift register
    wire [15:0] triangle_out;     // Đầu ra từ triangle control
    wire cout;                    // Carry-out từ ALU

    // Khai báo mux 16 bit
    mux16b mux (
        .a(0),                    // Nạp giá trị 0 vào mux ban đầu
        .b(N),                    // Đầu vào N
        .sel(select),             // Sử dụng cổng select để chọn đầu vào
        .y(mux_out)               // Đầu ra mux
    );

    // Khai báo ALU 16 bit
    alu_16bit alu (
        .in_a(mux_out),           // Đầu vào từ mux
        .in_b(sum),               // Đầu vào từ sum
        .opcode(alu_opcode),      // Ngõ điều khiển cho ALU
        .result(alu_out),         // Kết quả từ ALU
        .cout(cout)               // Carry-out từ ALU
    );

    // Khai báo thanh ghi dịch 16 bit
    shift_register shift_reg(
        .a(alu_out),              // Đầu vào từ ALU
        .I_left(1'b0),            // Đầu vào dịch trái, mặc định là 0
        .I_right(1'b0),           // Đầu vào dịch phải, mặc định là 0
        .select(2'b01),           // Nạp giá trị từ ALU
        .clk(clk),                // Tín hiệu đồng hồ
        .R(shift_out)             // Lưu kết quả từ shift vào shift_out
    );

    // Khai báo module triangle_control
    triangle_control triangle_ctrl (
        .shift_out(shift_out),    // Đầu vào từ shift register
        .EO(EO),                  // Chân điều khiển enable output
        .output_data(triangle_out) // Đầu ra từ triangle control
    );

    // Cập nhật sum trong khối always
    always @(posedge clk) begin
        sum <= alu_out;           // Cập nhật tổng bằng kết quả từ ALU
    end

    // Đưa kết quả ra ngoài
    assign result = triangle_out; // Đưa kết quả từ triangle control ra ngoài

endmodule
