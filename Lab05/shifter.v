module shifter #(parameter DATA_WIDTH = 8) (
  input wire [DATA_WIDTH-1:0] data_in,      // Input data
  input wire shift_en,                      // Shift enable
  output reg [DATA_WIDTH-1:0] shift_out     // Output data
);

always @* begin
  if (shift_en)
    shift_out = data_in >> 1;
  else
    shift_out = data_in;
end

endmodule
