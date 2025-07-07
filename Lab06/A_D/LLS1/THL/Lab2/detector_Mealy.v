module detector_Mealy (input wire X, output reg Z, input wire clk, output reg [1:0]n_state, output reg [1:0]c_state, output reg A);

    parameter case0 = 2'b00;
    parameter case1 = 2'b01;


    always @(posedge clk) begin
			c_state <= n_state;
        case(c_state)
            case0:  n_state = (X)? case1: case1;
            case1:  begin n_state = (X==A) ? case1 : case1;
							Z = (X==A) ? 1'b0:1'b1; end
            default: n_state = case0; 
        endcase 
		  A <= X;
    end
	 
endmodule