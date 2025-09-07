module nor_nand(input a, input b, output y);
    wire and_out;
    nor_and u1(a, b, and_out);
    nor (y, and_out, and_out); // invert AND
endmodule
