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


endmodule
