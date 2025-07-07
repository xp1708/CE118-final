module T_ff(
    input wire CLK,                   
    input wire LE,            
    input wire [2:0] SW,      
    output reg [2:0] Q        
);

    wire T2, T1, T0;


    assign T2 = (~Q[2] & ~Q[0]) | (Q[2] & Q[0]) | (~Q[1] & Q[0]);
    assign T1 = (~Q[1]) | (Q[1] & ~Q[0]) | (~Q[2] & Q[0]);
    assign T0 = (~Q[2] & Q[1]) | (Q[2] & ~Q[1]) | (~Q[1] & Q[0]);

    always @(posedge CLK) begin
        if (LE) begin
            Q <= SW;
        end
    end
endmodule