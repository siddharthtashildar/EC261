`timescale 1ns/1ps
module tb_nand;

    reg a, b;
    wire nand_not_out, nand_and_out, nand_or_out, nand_xor_out, nand_xnor_out, nand_nor_out;

    // Instantiate NAND-based circuits
    nand_not   u1(a, nand_not_out);
    nand_and   u2(a, b, nand_and_out);
    nand_or    u3(a, b, nand_or_out);
    nand_xor   u4(a, b, nand_xor_out);
    nand_xnor  u5(a, b, nand_xnor_out);
    nand_nor   u6(a, b, nand_nor_out);

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, tb_nand);

        $display("Time | A B | NOT AND OR XOR XNOR NOR");

        a=0; b=0; #10;
        a=0; b=1; #10;
        a=1; b=0; #10;
        a=1; b=1; #10;

        $finish;
    end

    initial begin
        $monitor("%4t | %b %b |  %b   %b   %b   %b    %b    %b",
                 $time, a, b,
                 nand_not_out, nand_and_out, nand_or_out,
                 nand_xor_out, nand_xnor_out, nand_nor_out);
    end

endmodule
