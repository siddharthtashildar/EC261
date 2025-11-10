module ripple_counter_4bit_D (
    input clk,
    input rst,
    output [3:0] q
);
    wire q0, q1, q2, q3;

    D_FF d0 (.clk(clk),   .rst(rst), .D(~q0), .Q(q0));
    D_FF d1 (.clk(~q0),   .rst(rst), .D(~q1), .Q(q1));
    D_FF d2 (.clk(~q1),   .rst(rst), .D(~q2), .Q(q2));
    D_FF d3 (.clk(~q2),   .rst(rst), .D(~q3), .Q(q3));

    assign q = {q3, q2, q1, q0};
endmodule
