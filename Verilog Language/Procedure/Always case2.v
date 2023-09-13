/////////////////////////以下是学到的/////////////////////////

//要用casez，不能直接用case

/////////////////////////以下是我写的/////////////////////////
// synthesis verilog_input_version verilog_2001
module top_module (
    input [3:0] in,
    output reg [1:0] pos  );

    always @(in) begin
        if (in[0]) begin
            pos = 2'h0;
        end else begin
            if (in[1]) begin
                pos = 2'h1;
            end else begin
                if (in[2]) begin
                    pos = 2'h2;
                end else begin
                    if (in[3]) begin
                        pos = 2'h3;
                    end else begin
                        pos = 2'h0;
                    end 
                end 
            end 
        end 
    end
endmodule

/////////////////////////以下是系统的/////////////////////////

