module RegisterFile (
    input wire CLK,                     // Tín hiệu xung clock
    input wire [3:0] WA1,               // Địa chỉ ghi 1
    input wire [15:0] WD1,              // Dữ liệu ghi 1
    input wire WE1,                     // Tín hiệu cho phép ghi 1
    input wire [3:0] WA2,               // Địa chỉ ghi 2
    input wire [15:0] WD2,              // Dữ liệu ghi 2
    input wire WE2,                     // Tín hiệu cho phép ghi 2
    input wire [3:0] RAA,               // Địa chỉ đọc A
    output wire [15:0] RDA,             // Dữ liệu đọc A
    input wire REA,                     // Tín hiệu cho phép đọc A
    input wire [3:0] RAB,               // Địa chỉ đọc B
    output wire [15:0] RDB,             // Dữ liệu đọc B
    input wire REB                      // Tín hiệu cho phép đọc B
);

    // 16 thanh ghi 16-bit
    reg [15:0] regfile [15:0];

    // Kết nối đầu ra đọc
    assign RDA = (REA) ? regfile[RAA] : 16'bz;  // Đọc từ địa chỉ A nếu REA bật
    assign RDB = (REB) ? regfile[RAB] : 16'bz;  // Đọc từ địa chỉ B nếu REB bật

    // Quá trình ghi dữ liệu vào thanh ghi
    always @(posedge CLK) begin
        if (WE1) begin
            regfile[WA1] <= WD1;  // Ghi dữ liệu vào địa chỉ WA1 khi WE1 bật
        end
        if (WE2) begin
            regfile[WA2] <= WD2;  // Ghi dữ liệu vào địa chỉ WA2 khi WE2 bật
        end
    end

endmodule


