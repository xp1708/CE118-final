module Mux21 (
    input [7:0] I0, // Đầu vào 8-bit thứ nhất
    input [7:0] I1, // Đầu vào 8-bit thứ hai
    input Sel,        // Đầu vào chọn 1-bit
    output [7:0] mux_o  // Đầu ra 8-bit
);
    assign mux_o = (Sel == 1'b0) ? I0 : I1;
endmodule
