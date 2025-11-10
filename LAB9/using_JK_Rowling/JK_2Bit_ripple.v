module ripple_counter_2bit_JK (
    input clk,
    input rst,
    output [1:0] q
);
    JK_FF jk0 (.clk(clk),  .rst(rst), .J(1'b1), .K(1'b1), .Q(q[0]));
    JK_FF jk1 (.clk(~q[0]), .rst(rst), .J(1'b1), .K(1'b1), .Q(q[1]));
endmodule
