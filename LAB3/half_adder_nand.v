module half_adder_nand (
    input a, b,
    output sum, carry
);
    wire n1, n2, n3;

    
    nand (n1, a, b);       
    nand (n2, a, n1);      
    nand (n3, b, n1);      
    nand (sum, n2, n3);

    
    nand (carry, n1, n1);  
endmodule
