module nand_and(input a, input b, output y);
    wire nand_and_out;
    nand (nand_and_out, a, b);
    nand (y, nand_and_out, nand_and_out);  // invert NAND output
endmodule