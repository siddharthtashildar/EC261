`timescale 1ns/1ps
module tb_ripple_counter_4bit;
    reg clk, rst;
    wire [3:0] q;

    ripple_counter_4bit uut (.clk(clk), .rst(rst), .q(q));

    always #5 clk = ~clk;

    initial begin
        $dumpfile("waves.vcd");
        $dumpvars(0, tb_ripple_counter_4bit);

        clk = 0; rst = 1;
        #10 rst = 0;

        #300;  

        $finish;
    end
endmodule
