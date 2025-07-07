module Shift_Register(
    input wire [3:0] data_in,   
    input wire [1:0] shift_ctrl,
    output reg [3:0] data_out   
);

    always @(*) begin
        case (shift_ctrl)
            2'b00: data_out = data_in;              
            2'b01: data_out = data_in << 1;       
            2'b10: data_out = data_in >> 1;         
            default: data_out = 4'b0000;            
        endcase
    end

endmodule