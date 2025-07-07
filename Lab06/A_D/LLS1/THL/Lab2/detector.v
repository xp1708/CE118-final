module detector (input wire X, output wire Z, input wire clk, output reg [1:0]n_state, output reg [1:0]c_state);

    parameter case0 = 2'b00;
    parameter case1 = 2'b01;
    parameter case2 = 2'b10;
	reg A;

    always @(posedge clk) begin
			c_state <= n_state;
        case(c_state)
            case0:  n_state = (X)? case1: case1;
            case1:  n_state = (X==A) ? case1:case2;
            case2:  n_state = (X==A) ? case1:case2;
            default: n_state = case0; 
        endcase 
		  A <= X;
    end
	 assign Z = (c_state == case2)?1'b1:1'b0;
	 
endmodule