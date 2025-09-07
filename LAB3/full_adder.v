module full_adder (
    input a, b, cin,
    output sum, cout
);
    wire xor1, and1, and2;

    assign xor1 = a ^ b;
    assign sum  = xor1 ^ cin;
    assign and1 = a & b;
    assign and2 = cin & xor1;
    assign cout = and1 | and2;

endmodule
