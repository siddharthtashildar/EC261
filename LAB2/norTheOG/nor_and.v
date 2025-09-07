module nor_and(input a, input b, output y);
    wire na, nb;
    nor (na, a, a); // invert a
    nor (nb, b, b); // invert b
    nor (y, na, nb); // (A’+B’)’ = AB
endmodule
