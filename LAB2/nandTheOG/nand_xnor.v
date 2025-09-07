module nand_xnor(input a, input b, output y);
    wire xor_out;
    nand_xor u1(a, b, xor_out);
    nand (y, xor_out, xor_out); // invert XOR
endmodule
