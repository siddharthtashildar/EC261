`timescale 1ns/1ps
module tb_ripple_counter_2bit_JK;
    reg clk, rst;
    wire [1:0] q;

    ripple_counter_2bit_JK uut (.clk(clk), .rst(rst), .q(q));

    // Clock generation
    always #5 clk = ~clk;

    initial begin
        $dumpfile("waves.vcd");
        $dumpvars(1, tb_ripple_counter_2bit_JK);
        clk = 0; rst = 1;
        #10 rst = 0;
        #300;
        $finish;
    end
endmodule
