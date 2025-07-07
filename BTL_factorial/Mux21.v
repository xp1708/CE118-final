module Mux21 ( I0, I1, IE, mux_o);
    input [7:0] I0; // Đầu vào 8-bit thứ nhất
    input [7:0] I1; // Đầu vào 8-bit thứ hai
    input IE;        // Đầu vào chọn 1-bit
    output [7:0] mux_o;  // Đầu ra 8-bit
    assign mux_o = (IE) ? I1 : I0;
endmodule

