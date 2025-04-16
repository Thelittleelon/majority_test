`timescale 1ns/1ps
module majority_tb;
    reg a, b, c;
    wire y;

    majority dut(
        .a (a),
        .b (b),
        .c (c),
        .y (y)
    );

    integer i;

    initial begin
        $dumpfile("waveform.vcd");
        $dumpvars(0, majority_tb);
        $display ("A B C | Y");
        for (i = 0; i < 8; i = i + 1) begin
            {a, b, c} = i[2:0];
            #20 $display ("%b %b %b %b", a, b, c, y);
        end
        $finish;
    end
endmodule