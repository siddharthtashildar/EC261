module nand_nor(input a, input b, output y);
    wire or_out;
    nand_or u1(a, b, or_out);
    nand (y, or_out, or_out); // invert OR
endmodule
