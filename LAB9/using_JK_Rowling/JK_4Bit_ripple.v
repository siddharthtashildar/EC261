module ripple_counter_4bit_JK (
    input clk,
    input rst,
    output [3:0] q
);
    JK_FF jk0 (.clk(clk),   .rst(rst), .J(1'b1), .K(1'b1), .Q(q[0]));
    JK_FF jk1 (.clk(~q[0]), .rst(rst), .J(1'b1), .K(1'b1), .Q(q[1]));
    JK_FF jk2 (.clk(~q[1]), .rst(rst), .J(1'b1), .K(1'b1), .Q(q[2]));
    JK_FF jk3 (.clk(~q[2]), .rst(rst), .J(1'b1), .K(1'b1), .Q(q[3]));
endmodule
