`timescale 1ns/1ps

module Top_Module_tb;

    reg CLK;
    reg Start;
    reg [3:0] DataIn;
    wire Done;
    wire [3:0] Out;

    Top_Module top_dut(
        .CLK(CLK),
        .Start(Start),
        .DataIn(DataIn),
        .Done(Done),
        .Out(Out)
    );

    initial begin
        CLK = 0;
        Start = 0;
        DataIn = 4'b1001;

        #10 Start = 1;
        #10 Start = 0;

        wait(Done);

        $display("Output: %d", Out);
        $finish;
    end

    always #5 CLK = ~CLK;

endmodule