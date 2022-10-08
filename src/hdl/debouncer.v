`timescale 1ns / 1ps
`default_nettype none

// debouncer module has default of 256 clock counts (requiring 8 bits)
module debouncer #(
    parameter CLOCKS = 256,     // how many clocks to wait to issue a 1
    parameter CLOCKS_CLOG2 = 8  // how many bits required to hold CLOCKS (2^8 = 256)
) (
    input  wire clk,
    input  wire buttonIn,
    output wire debouncedOut
);
    // set values for regs with '=' 
    reg [CLOCKS_CLOG2-1:0] count = 'b0; // holds # of clocks (i.e., CLOCKS param)
    reg transitioning = 1'b0;           // used to indicate when button is high
    reg data = 1'b0;                    // register for debouncedOut

    always@(/* when do we run this logic? */)
        if (transitioning == 1'b1)

        /*
            insert logic to "wait" CLOCKS cycles until setting
            data = buttonIn
        */

        else if (data != buttonIn) begin // button has been pressed, transition to counting
            count <= 'b0;
            transitioning <= 1'b1;
        end

    // "assign" values to wires
    assign debouncedOut = data;
endmodule
