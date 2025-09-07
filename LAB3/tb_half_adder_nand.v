`timescale 1ns/1ps
module tb_half_adder_nand;

    reg a, b;
    wire sum, carry;

    // Instantiate NAND Half Adder
    half_adder_nand uut (
        .a(a),
        .b(b),
        .sum(sum),
        .carry(carry)
    );

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, tb_half_adder_nand);

        $display("Time | A B | SUM CARRY");

        // Test all cases
        a=0; b=0; #10;
        a=0; b=1; #10;
        a=1; b=0; #10;
        a=1; b=1; #10;

        $finish;
    end

    initial begin
        $monitor("%4t | %b %b |  %b    %b", $time, a, b, sum, carry);
    end

endmodule
