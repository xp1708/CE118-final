module control_unit (clk, start, compare, IE, OE, we, wa, rea, reb, raa, rab, Sel_alu, done);
    
	 input  clk, start, compare;             
    output reg IE, we, rea, reb, OE, done;               
    output reg [1:0] wa;          // Write Address for Register File
    output reg [1:0] raa;          // Read Address A for Register File
    output reg [1:0] rab;          // Read Address B for Register File
    output reg [2:0] Sel_alu;      // ALU Operation Select

    // State definitions
    parameter state0 = 3'b000; // Initial state, waiting for start signal
    parameter state1 = 3'b001; // Load initial value or data
    parameter state2 = 3'b010; // Execute an operation (e.g., ALU op)
    parameter state3 = 3'b011; // Store or update result
    parameter state4 = 3'b100; // Decrement or loop control
    parameter state5 = 3'b101; // Completion or wait state

    // State registers
    reg [2:0] c_state, n_state;	

    // State register without reset
    always @(posedge clk) begin
        c_state <= n_state;
    end

 	always@(*) begin
		case (c_state) 
			state0: begin n_state = (start) ? state1: state0;
			
			  IE = 1'b0;
			  OE = 1'b0;
			  we = 1'b0;
			  wa = 2'b0;
			  rea = 1'b0;
			  reb = 1'b0;
			  done = 1'b0; // Set done to low by default
		end 
      	state1: begin n_state = state2;
					
                IE = 1'b1;                // Select external input
					 OE = 1'b0;
                we = 1'b1;                // Enable register write
                wa = 2'b0;            // Write to result register
					 done = 1'b0;
            end

       	state2: begin n_state = state3;
                IE = 1'b1;                // Select external input
					 OE = 1'b0;
                we = 1'b1;                // Enable register write
                wa = 2'b01;            // Write to result register
					 done = 1'b0;
            end

          state3: begin n_state = state4;
			 
					 IE = 1'b0;
					 OE = 1'b0;
                we = 1'b1;                // Enable register write
                wa = 2'b0;            // Write to specific register
					 rea = 1'b1;
					 reb = 1'b1;
					 raa = 2'b00;
					 rab = 2'b01;
					 Sel_alu = 3'b0;
					 done = 1'b0;
				end

			state4: begin n_state = (compare) ? state5: state3;
			
					 IE = 1'b0;
					 OE = 1'b0;
                we = 1'b1;                
                wa = 2'b01;            
					 rea = 1'b1;
					 reb = 1'b0;
					 raa = 2'b01;
					 rab = 2'b0;
					 Sel_alu = 3'b100;
					 done = 1'b0;
				
				end
				
           state5: begin n_state = state0;
					 IE = 1'b0;
                we = 1'b0;                
                OE = 1'b1;
					 done = 1'b1;
					 rea = 1'b1;
					 raa = 2'b0;
					 reb = 1'b1;
					 rab = 2'b10;
					 Sel_alu = 3'b101;
            end

            default: begin
                n_state = state0;   // Safe state if undefined
            end
        endcase
    end
endmodule
