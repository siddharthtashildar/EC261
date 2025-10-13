
`timescale 1ns/1ps
module tb_d_flipflop;

    reg clk;
    reg [3:0] D;
    wire [3:0] Qn;
    wire [3:0] Qn_plus1;

    
    d_flipflop uut (
        .clk(clk),
        .D(D),
        .Qn(Qn),
        .Qn_plus1(Qn_plus1)
    );

    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    
    initial begin
        D = 4'b0000;  #10;
        D = 4'b0001;  #10;
        D = 4'b0010;  #10;  
        D = 4'b0100;  #10;
        D = 4'b1111;  #10;
        $finish;
    end

    
    initial begin
        $monitor("Time=%0t | clk=%b | D=%b | Qn=%b | Qn+1=%b",
                 $time, clk, D, Qn, Qn_plus1);
    end

    
    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, tb_d_flipflop);
    end

endmodule
