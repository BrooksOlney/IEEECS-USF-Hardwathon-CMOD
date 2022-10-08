

module counter_tb();

    // define inputs as regs to assert signals in the testbench
    parameter COUNTER_SIZE = 4;
    reg clk = 0, direction = 0, enable = 0;

    // define module output as wire 
    wire [COUNTER_SIZE-1:0] countOut;

    // define the module 
    // connect all signals to local signals in the testbench
    counter #(
        .COUNTER_SIZE(COUNTER_SIZE)
    ) counter_mod (
        .clk(clk),
        .countDirection(direction),
        .enable(enable),
        .counterOut(countOut)
    );

    // always run this block, with no conditions
    always begin
        #1;         // wait 1ns 
        clk = ~clk; // generates a clock signal with 2ns period
    end

    initial begin

    /*
        insert logic to control direction, set enable
        and wait certain period of time so that you can see the
        behavior of your counter circuit with different functions (up/down)
    */

    end

endmodule