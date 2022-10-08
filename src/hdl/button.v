`timescale 1ns / 1ps
`default_nettype none

// counter size has a default value of 4 bits
module button #(
(
    // these signals need to be defined to inputs/outputs in "constraints/Cmod-S7-25-Master.xdc"
    input  wire clk,
    input  wire buttonIn,
    output wire buttonOut
);

    debouncer #(
        .CLOCKS(1024),
        .CLOCKS_CLOG2(10)
    ) m_db_btn (
        .clk(clk),
        .din(buttonIn),
        .dout(buttonOut)
    );

endmodule
