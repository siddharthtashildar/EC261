`timescale 1ns/1ps
module tb_ring_counter_4bit;
    reg clk, rst;
    wire [3:0] q;

    ring_counter_4bit uut (.clk(clk), .rst(rst), .q(q));

    // Clock generation
    always #5 clk = ~clk;

    initial begin
        $dumpfile("waves.vcd");
        $dumpvars(1, tb_ring_counter_4bit);

        clk = 0; rst = 1;
        #10 rst = 0;

        #100;
        $finish;
    end
endmodule
