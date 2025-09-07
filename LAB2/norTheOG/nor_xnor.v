module nor_xnor(input a, input b, output y);
    wire n1, n2, n3;
    nor (n1, a, b);
    nor (n2, a, n1);
    nor (n3, b, n1);
    nor (y, n2, n3); // AB + A’B’
endmodule
