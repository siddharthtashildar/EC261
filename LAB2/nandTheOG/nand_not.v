module nand_not(input a, output y);
    nand (y, a, a);  // tie inputs together
endmodule