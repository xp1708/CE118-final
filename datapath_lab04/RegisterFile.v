	 module RegisterFile (
    input wire CLK,                    
    input wire [3:0] WA,                
    input wire [3:0] WD,                
    input wire WE,                    
    input wire [3:0] RAA,             
    output wire [3:0] RDA,              
    input wire REA,                     
    input wire [3:0] RAB,               
    output wire [3:0] RDB,              
    input wire REB
);

    
    reg [3:0] regfile [15:0];

    
    assign RDA = (REA) ? regfile[RAA] : 4'bz;
    assign RDB = (REB) ? regfile[RAB] : 4'bz;
   
    always @(posedge CLK) begin
        if (WE) begin 
            regfile[WA] <= WD;   
        end
    end

endmodule

