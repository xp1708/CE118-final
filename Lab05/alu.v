module alu #(
    parameter DATA_WIDTH = 8
) (
    input wire [1:0] alu_op,
    input wire [DATA_WIDTH-1:0] a,
    input wire [DATA_WIDTH-1:0] b,
    output reg [DATA_WIDTH-1:0] out_alu
);

    // Define opcodes
    localparam ADD = 2'b00;         // A + B
    localparam SUB = 2'b01;         // A - B
    localparam AND = 2'b10;         // A & B
    localparam INC = 2'b11;         // A + 1

    always @(*) begin
        case(alu_op)
            ADD: out_alu = a + b;
            SUB: out_alu = a - b;
            AND: out_alu = a & b;
            INC: out_alu = a + 1;
            default: out_alu = {DATA_WIDTH{1'b0}};
        endcase
    end

endmodule
