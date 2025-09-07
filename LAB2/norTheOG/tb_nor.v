`timescale 1ns/1ps
module tb_nor;

    reg a, b;
    wire nor_not_out, nor_and_out, nor_or_out, nor_xor_out, nor_xnor_out, nor_nand_out;

    // Instantiate NOR-based circuits
    nor_not    u1(a, nor_not_out);
    nor_and    u2(a, b, nor_and_out);
    nor_or     u3(a, b, nor_or_out);
    nor_xor    u4(a, b, nor_xor_out);
    nor_xnor   u5(a, b, nor_xnor_out);
    nor_nand   u6(a, b, nor_nand_out);

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, tb_nor);

        $display("Time | A B | NOT AND OR XOR XNOR NAND");

        a=0; b=0; #10;
        a=0; b=1; #10;
        a=1; b=0; #10;
        a=1; b=1; #10;

        $finish;
    end

    initial begin
        $monitor("%4t | %b %b |  %b   %b   %b   %b    %b     %b",
                 $time, a, b,
                 nor_not_out, nor_and_out, nor_or_out,
                 nor_xor_out, nor_xnor_out, nor_nand_out);
    end

endmodule
