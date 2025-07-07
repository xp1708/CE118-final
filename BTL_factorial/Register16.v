module Register16 (
    input wire CLK,                    // Clock signal
    input wire [15:0] DATA_IN1,        // 16-bit data input for write gate 1
    input wire [15:0] DATA_IN2,        // 16-bit data input for write gate 2
    input wire WE1,                    // Write enable for write gate 1
    input wire WE2,                    // Write enable for write gate 2
    input wire [0:0] WA1,              // Write address for write gate 1 (0 or 1)
    input wire [0:0] WA2,              // Write address for write gate 2 (0 or 1)
    input wire REA1,                   // Read enable for read gate 1
    input wire REA2,                   // Read enable for read gate 2
    input wire [0:0] RAA1,             // Read address for read gate 1 (0 or 1)
    input wire [0:0] RAA2,             // Read address for read gate 2 (0 or 1)
    output wire [15:0] RDA1,           // 16-bit output data for read gate 1
    output wire [15:0] RDA2            // 16-bit output data for read gate 2
);

    // Declare 2 registers, each 16 bits wide
    reg [15:0] regfile [1:0];          

    // Assign output data with high impedance when read is not enabled
    assign RDA1 = (REA1) ? regfile[RAA1] : 16'bz;
    assign RDA2 = (REA2) ? regfile[RAA2] : 16'bz;

    // Write data to registers on the rising edge of the clock
    always @(posedge CLK) begin
        if (WE1) begin
            regfile[WA1] <= DATA_IN1;  // Write data to the register specified by WA1
        end
        if (WE2) begin
            regfile[WA2] <= DATA_IN2;  // Write data to the register specified by WA2
        end
    end

endmodule
