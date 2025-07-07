module Shift_Register(
    input wire [15:0] data_in,    
    input wire  shift_ctrl,
    output reg [15:0] data_out   
);

    always @(*) begin
        case (shift_ctrl)
            1'b0: data_out = data_in;                  
            1'b1: data_out = data_in >> 1;         
            default: data_out = 16'b0;            
        endcase
    end

endmodule 