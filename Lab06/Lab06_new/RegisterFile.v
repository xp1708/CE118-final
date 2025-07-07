module RegisterFile (
    input wire CLK,                     // Tín hiệu xung clock
    input wire [3:0] WAA,               // Địa chỉ ghi 1
    input wire [15:0] WDA,              // Dữ liệu ghi 1
    input wire WEA,                     // Tín hiệu cho phép ghi 1
    input wire [3:0] WAB,               // Địa chỉ ghi 2
    input wire [15:0] WDB,              // Dữ liệu ghi 2
    input wire WEB,                     // Tín hiệu cho phép ghi 2
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
        if (WEA) begin
            regfile[WAA] <= WDA;  // Ghi dữ liệu vào địa chỉ WA1 khi WE1 bật
        end
        if (WEB) begin
            regfile[WAB] <= WDB;  // Ghi dữ liệu vào địa chỉ WA2 khi WE2 bật
        end
    end

endmodule


