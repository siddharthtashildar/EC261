`timescale 1ns/1ps
module tb_PIPO;
    reg clk, rst, load;
    reg [3:0] parallel_in;
    wire [3:0] parallel_out;

    PIPO uut (.clk(clk), .rst(rst), .load(load), .parallel_in(parallel_in), .parallel_out(parallel_out));

    always #5 clk = ~clk;

    initial begin
        $dumpfile("waves.vcd");
        $dumpvars(0, tb_PIPO);

        clk = 0; rst = 1; load = 0; parallel_in = 4'b0000;
        #10 rst = 0;

        // Load new data
        load = 1; parallel_in = 4'b1010; #10;
        load = 0; #20;

        load = 1; parallel_in = 4'b0110; #10;
        load = 0; #20;

        $finish;
    end
endmodule
