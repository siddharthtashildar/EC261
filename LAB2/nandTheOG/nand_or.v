module nand_or(input a, input b, output y);
    wire na, nb;
    nand (na, a, a);  // invert a
    nand (nb, b, b);  // invert b
    nand (y, na, nb); // (A'.B')' = A + B
endmodule
