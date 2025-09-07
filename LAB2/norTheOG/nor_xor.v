module nor_xor(input a, input b, output y);
    wire xnor_out;
    nor_xnor u1(a, b, xnor_out);
    nor (y, xnor_out, xnor_out); // invert XNOR
endmodule
