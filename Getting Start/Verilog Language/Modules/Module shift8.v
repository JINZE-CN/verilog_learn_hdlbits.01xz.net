module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);

    reg [23:0] conntors;

    my_dff8 dff1(
    .clk (clk ),
    .d   (d   ),
    .q   (conntors[23:16]   )
    );
    my_dff8 dff2(
    .clk (clk ),
    .d   (conntors[23:16]   ),
    .q   (conntors[15:8]   )
    );

    my_dff8 dff3(
        .clk (clk ),
        .d   (conntors[15:8]   ),
        .q   (conntors[7:0]   )
    );

    always @(*) begin
        case (sel)
            2'b00: q=d;
            2'b11: q=conntors[7:0];
            2'b10: q=conntors[15:8];
            2'b01: q=conntors[23:16];
        endcase
    
    end

    


endmodule