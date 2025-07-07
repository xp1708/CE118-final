module RegisterFile #(
    parameter DATA_WIDTH = 8
) (
    input wire CLK,                    
    input wire [2:0] WA,                
    input wire [DATA_WIDTH-1:0] WD,                
    input wire WE,                    
    input wire [3:0] RAA,             
    output reg [DATA_WIDTH-1:0] RDA,              
    input wire REA,                     
    input wire [3:0] RAB,               
    output reg [DATA_WIDTH-1:0] RDB,               
    input wire REB                      
);

    // Khai báo mảng thanh ghi 8 bit
    reg [DATA_WIDTH-1:0] register [0:4];

    // Khối always để đọc dữ liệu
    always @(posedge CLK) begin
        if (REA) begin
            RDA <= register[RAA];
        end else begin
            RDA <= {DATA_WIDTH{1'bz}};
        end

        if (REB) begin
            RDB <= register[RAB];
        end else begin
            RDB <= {DATA_WIDTH{1'bz}};
        end

        if (WE) begin 
            register[WA] <= WD;   
        end
    end

endmodule
