module FSM(input wire clk, input wire X, output wire Z, output wire [6:0] ledout1, output wire [6:0] ledout2);
	wire clkout1;
	wire [2:0] n_state;
	wire [2:0] c_state;
	delay_1s delay(.clkin(clk),.clkout(clkout1));
	Moore_Detector MooreDetector (.X(X), .Z(Z), .CLK(clkout1), .Nstate(n_state), .Cstate(c_state));
	//Mealy_Detector MooreDetector (.X(X), .Z(Z), .CLK(clkout1), .Nstate(n_state), .Cstate(c_state));
	led led1(.bcd(n_state), .led(ledout1));
	led led2(.bcd(c_state), .led(ledout2));
endmodule