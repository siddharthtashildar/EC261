module ripple_counter_2bit (
    input clk,
    input rst,
    output reg [1:0] q
);
    always @(posedge clk or posedge rst) begin
        if (rst)
            q <= 2'b00;
        else begin
            q[0] <= ~q[0];           
            q[1] <= q[1] ^ q[0];     
        end
    end
endmodule
