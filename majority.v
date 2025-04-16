`timescale 1ns/1ps
module majority(
    input a, b, c,
    output y
);

    assign y = ( a & b) | (a & c) | (b & c);
endmodule