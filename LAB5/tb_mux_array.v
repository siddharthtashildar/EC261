module tb_mux_array;
    reg [7:0] I;
    reg [2:0] S;
    wire y;
    wire y_bar;

    mux_array uut(
        .I(I),
        .S(S),
        .y(y),
        .y_bar(y_bar)
    );

    integer i;
    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(1, tb_mux_array);

        I = 8'b10101010;
        for(i = 0; i<8; i=i+1) begin
            S = i;
            #10;
            $display("TestCase %0d: I=%b, S=%b, y=%b, y_bar=%b", i, I, S, y, y_bar);
        end
        $finish;
    end
endmodule