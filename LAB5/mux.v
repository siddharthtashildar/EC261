
module mux(

    input wire I0,I1,I2,I3,I4,I5,I6,I7,
    input wire S0,S1,S2,
    output wire output_wire

);

assign output_wire = (S2 == 0 && S1 == 0 && S0 == 0) ? I0 :
                     (S2 == 0 && S1 == 0 && S0 == 1) ? I1 :
                     (S2 == 0 && S1 == 1 && S0 == 0) ? I2 :
                     (S2 == 0 && S1 == 1 && S0 == 1) ? I3 :
                     (S2 == 1 && S1 == 0 && S0 == 0) ? I4 :
                     (S2 == 1 && S1 == 0 && S0 == 1) ? I5 :
                     (S2 == 1 && S1 == 1 && S0 == 0) ? I6 :
                     I7; 

endmodule
