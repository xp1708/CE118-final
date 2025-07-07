module delay_1s(clkin,clkout);
	reg [24:0] counter;
	output reg clkout;
	input clkin;

	always @(posedge clkin) begin
		 if (counter == 0) begin
			  counter <= 24999999;
			  clkout <= ~clkout;
		 end else begin
			  counter <= counter -1;
		 end
	end
endmodule