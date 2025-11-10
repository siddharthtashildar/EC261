`timescale 1ns/1ps
module tb_ripple_counter_2bit;
    reg clk, rst;
    wire [1:0] q;

    ripple_counter_2bit uut (.clk(clk), .rst(rst), .q(q));

    
    always #5 clk = ~clk;

    initial begin
        $dumpfile("waves.vcd");
        $dumpvars(1, tb_ripple_counter_2bit);   

        clk = 0; rst = 1;
        #10 rst = 0;

        #100;  
        $finish;
    end
endmodule
