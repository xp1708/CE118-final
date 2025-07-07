module mux #(parameter WIDTH = 8) (
    input [WIDTH-1:0] a,
    input [WIDTH-1:0] b,
    input IE,
    output [WIDTH-1:0] mux_out 
);
    assign mux_out = IE ? b : a;
endmodule
