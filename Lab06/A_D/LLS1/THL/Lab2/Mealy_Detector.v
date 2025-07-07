module Mealy_Detector(X, Z, CLK, Cstate, Nstate);
	input wire X;
	input wire CLK;
	output reg Z;
	output reg [2:0]Cstate;
	output reg [2:0]Nstate;
	
	parameter START = 3'b000;//0
	parameter GET1 = 3'b001; //1
	parameter GET0 = 3'b010; //2
	
	always@(posedge CLK) begin
		Cstate <= Nstate;
	end
	always@(Cstate, X) begin
		case(Cstate)
			START: begin 
				Nstate = (X == 1)? GET1:GET0;// 0  =1 -> 1, =0 -> 2
				Z = 1'b0; end						
			GET0: begin
				Nstate = (X == 1)? GET1:GET0;// 1  =1 -> 1, =0 -> 2
				Z = (X==1)? 1'b1: 1'b0;
				end
			GET1: begin
				Nstate = (X == 1)? GET1:GET0;// 2  =1 -> 1, =0 -> 2
				Z = (X==1) ? 1'b0: 1'b1;
				end
			default: Nstate = START;
		endcase

	end
	
	
endmodule