`timescale 1ns / 1ps
module JK_Flip_Flop_tb;


reg J, K, clk, reset;
wire Q;


JK_Flip_Flop uut (
    .J(J),
    .K(K),
    .clk(clk),
    .reset(reset),
    .Q(Q)
);


always #5 clk = ~clk;

initial begin

    $dumpfile("waves.vcd");
    $dumpvars(0, JK_Flip_Flop_tb);
    
    clk = 0;
    reset = 1;
    J = 0;
    K = 0;

    
    #10 reset = 0;


    #10 J = 0; K = 0;  
    #10 J = 0; K = 1;  
    #10 J = 1; K = 0;  
    #10 J = 1; K = 1;  
    #10 J = 1; K = 1;  
    #10 J = 0; K = 1;  

    
    #10 $finish;
end


initial begin

    $monitor("| clk=%b | J=%b | K=%b | Q=%b |", 
               clk, J, K, Q);
end

endmodule
