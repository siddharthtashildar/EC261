
module d_flipflop (
    input clk,
    input [3:0] D,
    output reg [3:0] Qn,      
    output reg [3:0] Qn_plus1 
);
    always @(posedge clk) begin
        Qn <= Qn_plus1;        
        Qn_plus1 <= D;         
    end
endmodule
