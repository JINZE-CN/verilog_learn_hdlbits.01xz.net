/////////////////////////以下是学到的/////////////////////////
//需要考虑if不进入时的状态

/////////////////////////以下是我写的/////////////////////////
// synthesis verilog_input_version verilog_2001
module top_module (
    input      cpu_overheated,
    output reg shut_off_computer,
    input      arrived,
    input      gas_tank_empty,
    output reg keep_driving  ); //

    always @(*) begin
        if (cpu_overheated)
           shut_off_computer = 1;
        else
            shut_off_computer = 0;
    end

    always @(*) begin
        if (~arrived)
           keep_driving = ~gas_tank_empty;
        else keep_driving = 0;
            
    end

endmodule

/////////////////////////以下是系统的/////////////////////////

