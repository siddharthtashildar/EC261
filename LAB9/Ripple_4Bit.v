module ripple_counter_4bit (
    input clk,
    input rst,
    output [3:0] q
);
    reg [3:0] q_reg;

    always @(posedge clk or posedge rst) begin
        if (rst)
            q_reg <= 4'b0000;
        else begin
            q_reg[0] <= ~q_reg[0];
            q_reg[1] <= q_reg[1] ^ q_reg[0];
            q_reg[2] <= q_reg[2] ^ (q_reg[1] & q_reg[0]);
            q_reg[3] <= q_reg[3] ^ (q_reg[2] & q_reg[1] & q_reg[0]);
        end
    end

    assign q = q_reg;
endmodule
