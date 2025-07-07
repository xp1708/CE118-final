module Control_Unit_op (
    input CLK, 
	 input Start,
	 input zero_flag,
    output reg IE,
	 output reg Done,
    output reg [1:0] WAA,
    output reg WEA,
    output reg [1:0] WAB,
    output reg WEB,
    output reg [1:0] RAA,
    output reg REA,
    output reg [1:0] RAB,
    output reg REB,
    output reg [2:0] S_ALU,
    output reg Pass
);

	parameter state0 = 3'b000;
	parameter state1 = 3'b001;
	parameter state2 = 3'b010;
	parameter state3 = 3'b011;
	parameter state4 = 3'b100;
	parameter state5 = 3'b101;
	parameter state6 = 3'b110;
	
	 reg [2:0] c_state;
    reg [2:0] n_state;

   always @(posedge CLK) begin
      c_state <= n_state;
    end
	always@(*) begin
		case (c_state) 
			state0:begin n_state =(Start) ? state1 : state0;
				IE = 1'b0;
				WEA = 1'b0;
				WEB = 1'b0;
				REA = 1'b0;
				REB = 1'b0;
				Done = 1'b0;
				S_ALU = 3'b000;
				Done = 1'b0;
			end
			
			state1:begin n_state = (zero_flag == 1) ? state6 : state2;
				IE = 1'b1;
				WEA = 1'b0;
				WEB = 1'b0;
				WAB = 2'b00;
				REA = 1'b0;
				REB = 1'b0;
				Pass = 1'b0;		// Thuc hien shift
				S_ALU = 3'b000;	// control_ALU
				Done = 1'b0;      // zero_flag
			end
			
			state2:begin n_state = state3;
				IE = 1'b0;
				WEA = 1'b1;
				WAA = 2'b10;
				WEB = 1'b0;
				WAB = 2'b00;
				REA = 1'b1;
				RAA = 2'b00;
				REB = 1'b1;
				RAB = 2'b00;
				S_ALU = 3'b110;
				Pass = 1'b0;
				Done = 1'b0;
			end
			
			state3:begin n_state = state4;
				IE = 1'b0;
				WEA = 1'b1;
				WAA = 2'b01;
				WEB = 1'b0;
				WAB = 2'b00;
				REA = 1'b1;
				RAA = 2'b10;
				REB = 1'b0;
				RAB = 2'b00;	
				S_ALU = 3'b111;
				Pass = 1'b1;
				Done = 1'b0;
			end
		
			state4:begin n_state = (zero_flag) ? state6: state5;
				IE = 1'b0;
				WEA = 1'b1;
				WAA = 2'b11;  // tao gia tri temp
				WEB = 1'b1;
				WAB = 2'b00;
				REA = 1'b1;
				RAA = 2'b00;
				REB = 1'b1;
				RAB = 2'b01;
				S_ALU = 3'b001;
				Pass = 1'b1;
				Done = 1'b0;
			end
			
			state5:begin n_state = state4;
				IE = 1'b0;
				WEA = 1'b1;
				WAA = 2'b10;  // tinh tong cho ocount
				WEB = 1'b0;
				WAB = 2'b00;
				REA = 1'b1;
				RAA = 2'b10;
				REB = 1'b1;
				RAB = 2'b11;
				S_ALU = 3'b101;
				Pass = 1'b0;
				Done = 1'b0;
			end
			
			state6:begin n_state = state0;
				IE = 1'b0;
				WEA = 1'b1;
				WAA = 2'b10;  // tinh tong cho ocount
				WEB = 1'b0;
				WAB = 2'b00;
				REA = 1'b1;
				RAA = 2'b10;
				REB = 1'b1;
				RAB = 2'b11;
				S_ALU = 3'b101;
				Pass = 1'b0;
				Done = 1'b1;
			end
			default: n_state = state0;
		endcase
	end
	
	
endmodule