module PIPO(
    input clk,
    input rst,
    input load,
    input [3:0] parallel_in,
    output [3:0] parallel_out
);
    reg [3:0] data_reg;

    always @(posedge clk or posedge rst) begin
        if (rst)
            data_reg <= 4'b0000;
        else if (load)
            data_reg <= parallel_in;  // load data on load=1
    end

    assign parallel_out = data_reg;
endmodule
