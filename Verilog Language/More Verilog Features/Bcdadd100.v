module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum );
    
    wire [99:0] ccout;
    bcd_fadd inst1 (a[3:0], b[3:0], cin, ccout[0], sum[3:0]);
    
    genvar i;
    generate
            for ( i = 1; i<=100 ; i = i + 1 ) begin:reserve
                bcd_fadd inst (.a(a[4*i+3:4*i]), .b(b[4*i+3:4*i]), .cin(ccout[i-1]), .cout(ccout[i]), .sum(sum[4*i+3:4*i]) );
            end
    endgenerate
    assign cout = ccout[99];

endmodule
