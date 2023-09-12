/////////////////////////以下是学到的/////////////////////////
//assign Bb = b^{32{sub}};
//记得要转换位数

/////////////////////////以下是我写的/////////////////////////


module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
wire [31:0] Bb;
wire connectors;

assign Bb = b^{32{sub}};


add16 add16_1(
    .a   (a[15:0]   ),
    .b   (Bb[15:0]   ),
    .cin (sub ),
    .sum (sum[15:0] ),
    .cout(connectors)
);


add16 add16_2(
    .a   (a[31:16]   ),
    .b   (Bb[31:16]   ),
    .cin ( connectors),
    .sum (sum[31:16] )
);



endmodule




