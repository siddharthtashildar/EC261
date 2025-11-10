`timescale 1ns/1ps
module tb_ripple_counter_4bit_D;
    reg clk, rst;
    wire [3:0] q;

    ripple_counter_4bit_D uut (.clk(clk), .rst(rst), .q(q));

    // Clock generation
    always #5 clk = ~clk;

    initial begin
        $dumpfile("waves.vcd");
        $dumpvars(1, tb_ripple_counter_4bit_D);
        clk = 0; rst = 1;
        #10 rst = 0;
        #300;
        $finish;
    end
endmodule
