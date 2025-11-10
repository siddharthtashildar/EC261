module full_adder_nand (
    input a, b, cin,
    output sum, carry
);
    wire n1, n2, n3, n4, n5, n6, n7, n8;

    // First XOR (a ⊕ b)
    nand (n1, a, b);
    nand (n2, a, n1);
    nand (n3, b, n1);
    nand (n4, n2, n3);   // n4 = a ⊕ b

    // Second XOR (n4 ⊕ cin) → SUM
    nand (n5, n4, cin);
    nand (n6, n4, n5);
    nand (n7, cin, n5);
    nand (sum, n6, n7);  // SUM output

    // Carry = (a·b) + (cin·(a⊕b))
    nand (n8, n1, n5);   // OR equivalent with NANDs
    nand (carry, n8, n8);
endmodule
