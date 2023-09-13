
//错的

module top_module( 
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum );

    assign sum[0]=cin^a[0]^b[0];
    assign cout[0]=a[0]&b[0]|a[0]&cin|b[0]&cin;
    
    always @( *) begin
        for (integer i = 1 ; i<=99 ; i = i + 1 ) begin
            assign  sum[i]=a[i]^b[i]^cout[i-1];
            assign  cout[i] = a[i]&b[i] | a[i]&cout[i-1] | b[i]&cout[i-1]; 
            ///for里面加了assign 全加器比较麻烦，三个数相加
         end
    end
        
            

endmodule




//对的
module top_module( 
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum );
    assign sum[0] = a[0]^b[0]^cin;
    assign cout[0] = a[0]&b[0] | a[0]&cin | b[0]&cin;
    always @(*)begin
        for(integer i = 1;i<100;i++)begin
            sum[i] = a[i]^b[i]^cout[i-1];
            cout[i] = a[i]&b[i] | a[i]&cout[i-1] | b[i]&cout[i-1]; 
        end
    end
 
endmodule

///for里面加了assign