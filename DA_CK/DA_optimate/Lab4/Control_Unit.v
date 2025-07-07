module Control_Unit(CLK, Start, IE, WAA, WEA, WAB, WEB, RAA, REA, RAB, REB, OE, S_ALU1, S_ALU2, Done, Datapath);
	input CLK, Start;
	input [15:0] Datapath;
	output reg IE, OE, WEA, WEB, REA, REB, Done;
	output reg [3:0] WAA;
	output reg [3:0] WAB;
	output reg [3:0] RAA;
	output reg [3:0] RAB;
	output reg [3:0] S_ALU1;
	output reg [3:0] S_ALU2;
	
	parameter state0 = 2'b00;
	parameter state1 = 2'b01;
	parameter state2 = 2'b10;
	parameter state3 = 2'b11;


	
	reg [1:0] c_state;
	reg [1:0] n_state;
	
	always@(posedge CLK) begin
		c_state <= n_state;
	end
	always@(*) begin
		case (c_state) 
			state0: begin n_state = (Start) ? state1: state0;
				IE = 1'b0;
				OE = 1'b0;
				WEA = 1'b0;
				WEB = 1'b0;
				REA = 1'b0;
				REB = 1'b0; 
				Done = 1'b0;
			end
			state1: begin n_state = (Datapath == 16'b0000000000000000) ? state3 : state2;
				IE = 1'b1;
				WAA = 4'b0001;
				WEA = 1'b1;
				WAB = 4'b0010;
				WEB = 1'b1;
				RAA = 4'b0000;
				REA = 1'b1;
				REB = 1'b0;
				OE = 1'b0;
				S_ALU1 =4'b0111;
				S_ALU2 =4'b0100;
				Done = 1'b0;
			end
			state2: begin n_state = (Datapath == 16'b0000000000000001) ? state3 : state2;
				IE = 1'b0;
				WAA = 4'b0001;
				WEA = 1'b1;
				WAB = 4'b0010;
				WEB = 1'b1;
				RAA = 4'b0001;
				REA = 1'b1;
				RAB = 4'b0010;
				REB = 1'b1;
				OE = 1'b0;
				S_ALU1 =4'b1010;
				S_ALU2 =4'b0100;
				Done = 1'b0;
			end
		
			state3: begin n_state = state0;
				IE = 1'b0;
				WAA = 4'b0001;
				WEA = 1'b1;
				WEB = 1'b0;
				RAA = 4'b0001;
				REA = 1'b1;
				RAB = 4'b0000;
				REB = 1'b1;
				OE = 1'b1;
				S_ALU1 =4'b0101;
				S_ALU2 =4'b0100;
				Done = 1'b1;
			end
			
			default: n_state = state0;
		endcase
	end
	

endmodule