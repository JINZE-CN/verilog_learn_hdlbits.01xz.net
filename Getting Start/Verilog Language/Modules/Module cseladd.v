/////////////////////////以下是学到的/////////////////////////

// module多迷糊了

/////////////////////////以下是我写的/////////////////////////

module top_module( 
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire SW;
    reg  [15:0] selecet1,selecet2;
    
    add16 add16_0 (
        .a(a[15:0]),
        .b(b[15:0]),
        .cin(0),
        .sum(sum[15:0])
        );

    add16 add16_1 (
        .a(a[31:16]),
        .b(b[31:16]),
        .cin(0),
        .sum(selecet1)
        );

    add16 add16_2 (
        .a(a[31:16]),
        .b(b[31:16]),
        .cin(1),
        .sum(selecet2)
        );

    always @(SW) begin
        case (SW)
            '0: begin
                sum[31:16]=selecet1; 
            end
            '1: begin 
                sum[31:16]=selecet2; 
            end
        endcase
    end
endmodule
