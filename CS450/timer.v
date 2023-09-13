module top_module(
	input clk, 
	input load, 
	input [9:0] data, 
	output reg  tc
);
// reg  counters[9:0]; 写错
reg  [9:0] counters;



always @(posedge clk ) begin
    if (load) begin
        counters=data;
    end else begin
    if (counters) begin
        
        counters = counters-1;
    end 
    end
    tc=!counters;
end
// assign tc=!counters; 这样写 vivado 会报错，但是在hdlbits可以跑
// You cannot drive a reg type via a continuous assignment (only a wire may be driven in this way). If this is just modelling combinatorial logic, you could use a combinatorial always block: always @* begin mem [in_d0_] = in_d1_; end



endmodule
