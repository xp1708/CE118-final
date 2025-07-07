module Control_Unit(CLK, Start, IE, WA, WE, RAA, REA, RAB, REB, OE, S_ALU1, S_shift, Done, Datapath);
	input CLK, Start, Datapath;
	output reg IE, OE, WE, REA, REB, Done;
	output reg [3:0] WA;
	output reg [3:0] RAA;
	output reg [3:0] RAB;
	output reg [3:0] S_ALU1;
	output reg [1:0] S_shift;
	
	parameter state0 = 3'b000;
	parameter state1 = 3'b001;
	parameter state2 = 3'b010;
	parameter state3 = 3'b011;
	parameter state4 = 3'b100;
	parameter state5 = 3'b101;
	parameter state6 = 3'b110;
	parameter state7 = 3'b111;
	
	reg [2:0] c_state;
	reg [2:0] n_state;
	
	always@(posedge CLK) begin
		c_state <= n_state;
	end
	always@(*) begin
		case (c_state) 
			state0: begin n_state = (Start) ? state1: state0;
				IE = 1'b0;
				OE = 1'b0;
				WE = 1'b0;
				REA = 1'b0;
				REB = 1'b0; 
				Done = 1'b0;
			end
			state1: begin n_state = state2;
				IE = 1'b1; 
				WE = 1'b1;
				OE = 1'b0;
				REA = 1'b0;
				REB =  1'b0;
				WA = 4'b0001;
				Done = 1'b0;
			end
			state2: begin n_state = state3;
				IE = 0;
				WE = 1;
				WA = 4'b0011;
				REA = 1; 
				REB = 1;
				RAA = 4'b0000; 
				RAB = 4'b0000;
				S_ALU1 = 4'b0101;
				S_shift = 2'b00;
				OE = 0;
				Done = 0;
			end
			state3: begin n_state = state4;
				IE = 0;
				WE = 1;
				WA = 4'b0010;
				REA = 1;
				REB = 0;
				RAA = 4'b0000; 
				RAB = 4'b0000;
				S_ALU1 = 4'b0111;
				S_shift = 2'b00;
				OE = 0;
				Done = 0;
			end
			state4: begin n_state = state5;
				IE = 0;
				WE = 1;
				WA = 4'b0100;
				REA = 1;
				REB = 1;
				RAA = 4'b0001; 
				RAB = 4'b0010;
				S_ALU1 = 4'b0001;
				S_shift = 2'b00;
				OE = 0;
				Done = 0;
			end
			state5: begin n_state = state6;
				IE = 0;
				WE = 1;
				WA = 4'b0011;
				REA = 1;
				REB = 1;
				RAA = 4'b0100; 
				RAB = 4'b0011;
				S_ALU1 = 4'b0101;
				S_shift = 2'b00;
				OE = 0;
				Done = 0;
			end
			state6: begin n_state = (Datapath) ? state7: state4;
				IE = 0;
				WE = 1;
				WA = 4'b0001;
				REA = 1;
				REB = 1;
				RAA = 4'b0001; 
				RAB = 4'b0000;
				S_ALU1 = 4'b0101;
				S_shift = 2'b10;
				OE = 0;
				Done = 0;
			end
			state7: begin n_state = state0;
				IE = 0;
				WE = 0;
				WA = 4'b0000;
				REA = 1;
				REB = 1;
				RAA = 4'b0011; 
				RAB = 4'b0000;
				S_ALU1 = 4'b0101;
				S_shift = 2'b00;
				OE = 1;
				Done = 1;
			end 
			default: n_state = state0;
		endcase
	end
	

endmodule