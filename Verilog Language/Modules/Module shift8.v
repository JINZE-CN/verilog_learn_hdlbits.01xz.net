/////////////////////////以下是学到的/////////////////////////

//前一个方法比我写的高效且规整
//	wire [7:0] o1, o2, o3;		// output of each my_dff8
//    reg [23:0] conntors;


/////////////////////////以下是我写的/////////////////////////

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


/////////////////////////以下是系统的/////////////////////////


// module top_module (
// 	input clk,
// 	input [7:0] d,
// 	input [1:0] sel,
// 	output reg [7:0] q
// );

// 	wire [7:0] o1, o2, o3;		// output of each my_dff8
	
// 	// Instantiate three my_dff8s
// 	my_dff8 d1 ( clk, d, o1 );
// 	my_dff8 d2 ( clk, o1, o2 );
// 	my_dff8 d3 ( clk, o2, o3 );

// 	// This is one way to make a 4-to-1 multiplexer
// 	always @(*)		// Combinational always block
// 		case(sel)
// 			2'h0: q = d;
// 			2'h1: q = o1;
// 			2'h2: q = o2;
// 			2'h3: q = o3;
// 		endcase

// endmodule
