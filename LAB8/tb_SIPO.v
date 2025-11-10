`timescale 1ns/1ps
module tb_SIPO;
    reg clk, rst, serial_in;
    wire [3:0] parallel_out;

    SIPO uut (.clk(clk), .rst(rst), .serial_in(serial_in), .parallel_out(parallel_out));

    always #5 clk = ~clk;

    initial begin
        $dumpfile("waves.vcd");
        $dumpvars(0, tb_SIPO);

        clk = 0; rst = 1; serial_in = 0;
        #10 rst = 0;

        // Serial input sequence
        serial_in = 1; #10;
        serial_in = 0; #10;
        serial_in = 1; #10;
        serial_in = 1; #10;

        // Extra clocks to observe output
        serial_in = 0; #40;

        $finish;
    end
endmodule
