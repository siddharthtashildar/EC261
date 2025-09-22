
module mux_4x1(

    input wire I0,I1,I2,I3,
    input wire S0,S1,
    output wire output_wire

);

assign output_wire = (S1== 0 && S0 == 0) ? I0 :
                     (S1 == 0 && S0 == 1) ? I1 :
                     (S1 == 1 && S0 == 0) ? I2 :
                     I3; 

endmodule
