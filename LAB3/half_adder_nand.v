module half_adder_nand (
    input a, b,
    output sum, carry
);
    wire n1, n2, n3;

    // NAND for XOR
    nand (n1, a, b);       // A NAND B
    nand (n2, a, n1);      // A NAND (A NAND B)
    nand (n3, b, n1);      // B NAND (A NAND B)
    nand (sum, n2, n3);    // XOR output

    // NAND for AND (carry)
    nand (carry, n1, n1);  // (A NAND B) NAND (A NAND B) = AB
endmodule
