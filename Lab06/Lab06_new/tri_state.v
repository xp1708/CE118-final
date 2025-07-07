module tri_state (
    input wire [15:0] data_in,     // Đầu vào dữ liệu 4 bit
    input wire OE,       // Tín hiệu cho phép ghi (load)
    input wire CLK,               // Tín hiệu đồng hồ (Clock)
    output reg [15:0] data_out     // Đầu ra dữ liệu 4 bit
);

    always @(posedge CLK) begin
        if (OE)          // Nếu load_enable bật
            data_out <= data_in;  // Ghi dữ liệu mới vào data_out
    end

endmodule