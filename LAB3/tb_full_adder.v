`timescale 1ns/1ps
module tb_full_adder;

    reg a, b, cin;
    wire sum, cout;

    // Instantiate Full Adder
    full_adder uut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, tb_full_adder);

        $display("Time | A B Cin | Sum Cout");

        // Test all 8 cases
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
        $monitor("%4t | %b %b  %b  |  %b    %b", 
                 $time, a, b, cin, sum, cout);
    end

endmodule
