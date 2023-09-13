/////////////////////////以下是学到的/////////////////////////

// 关于全键无冲 https://bbs.wstx.com/thread-183993-1-1.html

/////////////////////////以下是我写的/////////////////////////


// synthesis verilog_input_version verilog_2001
module top_module (
    input [15:0] scancode,
    output reg left,
    output reg down,
    output reg right,
    output reg up  ); 

    always @(*) begin
        case (scancode)
            16'he06b:begin
                left <= 1;
                right<= 0;
                up   <= 0;
                down <= 0;  
            end
            16'he072:begin
                left <= 0;
                right<= 0;
                up   <= 0;
                down <= 1;  
            end
            16'he074:begin
                left <= 0;
                right<= 1;
                up   <= 0;
                down <= 0;  
            end
            16'he075:begin
                left <= 0;
                right<= 0;
                up   <= 1;
                down <= 0;  
            end
            default :begin
                left <= 0;
                right<= 0;
                up   <= 0;
                down <= 0;  
            end                      
        endcase
    end
endmodule


/////////////////////////以下是系统的/////////////////////////


