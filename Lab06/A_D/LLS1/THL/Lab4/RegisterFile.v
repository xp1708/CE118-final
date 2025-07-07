module RegisterFile (
    input wire CLK,                    
    input wire [3:0] WA,                
    input wire [15:0] WD,                
    input wire WE,                    
    input wire [3:0] RAA,             
    output wire [15:0] RDA,              
    input wire REA,                     
    input wire [3:0] RAB,               
    output wire [15:0] RDB,              
    input wire REB                      
);

    
    reg [15:0] regfile [15:0];

    
    assign RDA = (REA) ? regfile[RAA] : 15'bz;
    assign RDB = (REB) ? regfile[RAB] : 15'bz;

   
    always @(posedge CLK) begin
        if (WE) begin 
            regfile[WA] <= WD;   
        end
    end

endmodule

