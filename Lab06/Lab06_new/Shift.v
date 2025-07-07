module Shift (
    input [15:0] data_in,    // Dữ liệu đầu vào
    input shift_ctrl,        // Tín hiệu điều khiển dịch (1: dịch, 0: giữ nguyên)
    input CLK,               // Xung clock
    output reg [15:0] data_out // Dữ liệu đầu ra
);

    always @(posedge CLK) begin
        if (shift_ctrl) begin
            data_out <= data_in >> 1; // Thực hiện dịch phải 1 bit
        end else begin
            data_out <= data_in; // Giữ nguyên dữ liệu
        end
    end

endmodule
