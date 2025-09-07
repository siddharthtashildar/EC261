module nor_or(input a, input b, output y);
    wire nor_out;
    nor (nor_out, a, b);
    nor (y, nor_out, nor_out); // invert NOR output
endmodule
