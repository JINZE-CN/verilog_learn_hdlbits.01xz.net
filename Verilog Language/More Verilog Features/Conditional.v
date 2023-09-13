/////////////////////////以下是学到的/////////////////////////

//很怪

/////////////////////////以下是我写的/////////////////////////

module top_module (
    input [7:0] a, b, c, d,
    output [7:0] min);//

    // assign intermediate_result1 = compare? true: false;

     //   assign min = (((a > b) ? b : a) > ((c > d) ? d : c)) ?((c > d) ? d : c) : ((a > b) ? b : a);
    assign min = (((a > b) ? b : a) > ((c > d) ? d : c)) ?((c > d) ? d : c) : ((a > b) ? b : a);


endmodule


/////////////////////////以下是网上的/////////////////////////

// module top_module (
//     input [7:0] a, b, c, d,
//     output [7:0] min);//

//     // assign intermediate_result1 = compare? true: false;
       
//         wire   [7:0]min1;
//         wire   [7:0]min2;
        
//         assign min1 = (a > b) ? b : a;
//         assign min2 = (c > d) ? d : c;
        
//         assign min = (((a > b) ? b : a) > ((c > d) ? d : c)) ?((c > d) ? d : c) : ((a > b) ? b : a);
     
// endmodule
