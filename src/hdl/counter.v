`timescale 1ns / 1ps
`default_nettype none

// counter size has a default value of 4 bits
module counter #(
    parameter COUNTER_SIZE = 4 // how many bits for the counter

) (
    input  wire clk,
    input  wire countDirection,
    input  wire enable,
    output wire [COUNTER_SIZE-1:0] counterOut
);
    // set values for regs with '=' 
    reg [COUNTER_SIZE-1:0] count = 'b0;   

    // "always" execute this code @ a certain condition
    always@(/* when do we run this logic? */)

        /*
            insert logic to increment or decrement counter based on value of 
            countDirection, and only do so when enable == 1'b1 (is high).
        */

    // "assign" values to wires
    assign counterOut = count;
endmodule
