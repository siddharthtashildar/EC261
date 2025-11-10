`timescale 1ns/1ps
module tb_SISO;
    reg clk, rst, serial_in;
    wire serial_out;

    SISO uut (.clk(clk), .rst(rst), .serial_in(serial_in), .serial_out(serial_out));

    // Clock generation
    always #5 clk = ~clk;

    initial begin
        $dumpfile("waves.vcd");  // for GTKWave
        $dumpvars(0, tb_SISO);

        clk = 0; rst = 1; serial_in = 0;
        #10 rst = 0;

        // Serial input sequence: 1 0 1 1
        serial_in = 1; #10;
        serial_in = 0; #10;
        serial_in = 1; #10;
        serial_in = 1; #10;

        // Hold input low
        serial_in = 0; #40;

        $finish;
    end
endmodule
