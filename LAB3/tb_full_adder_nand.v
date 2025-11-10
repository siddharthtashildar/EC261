`timescale 1ns/1ps
module tb_full_adder_nand;
    reg a, b, cin;
    wire sum, carry;

    // Instantiate NAND Full Adder
    full_adder_nand uut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .carry(carry)
    );

    initial begin
        $dumpfile("waves.vcd");
        $dumpvars(0, tb_full_adder_nand);

        $display("Time | A B Cin | SUM CARRY");

        // Test all 8 input combinations
        a=0; b=0; cin=0; #10;
        a=0; b=0; cin=1; #10;
        a=0; b=1; cin=0; #10;
        a=0; b=1; cin=1; #10;
        a=1; b=0; cin=0; #10;
        a=1; b=0; cin=1; #10;
        a=1; b=1; cin=0; #10;
        a=1; b=1; cin=1; #10;

        $finish;
    end

    initial begin
        $monitor("%4t | %b %b  %b  |  %b    %b", $time, a, b, cin, sum, carry);
    end
endmodule
