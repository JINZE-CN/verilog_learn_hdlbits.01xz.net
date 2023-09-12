module top_module( 
    input [99:0] in,
    output [99:0] out
);

    genvar i;
    generate 
        
        for ( i=0 ; i<=99 ; i=i+1) begin:reserve
            assign out[i]=in[99-i];
        end
    endgenerate

endmodule


// for ( i=0 ; i<=99 ; i=i+1) begin:reserve
// 要给这个generate命名