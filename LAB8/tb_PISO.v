`timescale 1ns/1ps
module tb_PISO;
    reg clk, rst, load;
    reg [3:0] parallel_in;
    wire serial_out;

    PISO uut (.clk(clk), .rst(rst), .load(load), .parallel_in(parallel_in), .serial_out(serial_out));

    always #5 clk = ~clk;

    initial begin
        $dumpfile("waves.vcd");
        $dumpvars(0, tb_PISO);

        clk = 0; rst = 1; load = 0; parallel_in = 4'b0000;
        #10 rst = 0;

        // Load parallel data
        load = 1; parallel_in = 4'b1011; #10;
        load = 0;

        // Shift out serially
        #50;

        $finish;
    end
endmodule
