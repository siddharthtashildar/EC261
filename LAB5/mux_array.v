module mux_array(
    input [7:0] I,
    input [2:0] S,
    output y,
    output y_bar
);
    assign y = I[S];
    assign y_bar = ~y;
endmodule