`timescale 1ns/1ps

module tb_mux;

    reg I0, I1, I2, I3, I4, I5, I6, I7;
    reg S0, S1, S2;
    reg i0, i1, i2, i3, i4, i5, i6, i7;
    wire output_wire;


    
    mux uut (
        .I0(I0), .I1(I1), .I2(I2), .I3(I3),
        .I4(I4), .I5(I5), .I6(I6), .I7(I7),
        .S0(S0), .S1(S1), .S2(S2),
        .output_wire(output_wire)
    );

    initial begin
        
        $dumpfile("wave.vcd");
        $dumpvars(0, tb_mux);
        
        I0 = 1; I1 = 1; I2 = 1; I3 = 1;
        I4 = 1; I5 = 1; I6 = 1; I7 = 1;

        $display("Time | S2 S1 S0 | Output");

        S2=0; S1=0; S0=0; i0 = 1; i1 = 0 ;i2 = 0 ; i3 = 0; i4 = 0; i5 =0 ; i6 = 0; i7 = 0; #10;
        S2=0; S1=0; S0=1; i0 = 0; i1 = 1 ;i2 = 0 ; i3 = 0; i4 = 0; i5 =0 ; i6 = 0; i7 = 0; #10;
        S2=0; S1=1; S0=0; i0 = 0; i1 = 0 ;i2 = 1 ; i3 = 0; i4 = 0; i5 =0 ; i6 = 0; i7 = 0; #10;
        S2=0; S1=1; S0=1; i0 = 0; i1 = 0 ;i2 = 0 ; i3 = 1; i4 = 0; i5 =0 ; i6 = 0; i7 = 0; #10;
        S2=1; S1=0; S0=0; i0 = 0; i1 = 0 ;i2 = 0 ; i3 = 0; i4 = 1; i5 =0 ; i6 = 0; i7 = 0; #10;
        S2=1; S1=0; S0=1; i0 = 0; i1 = 0 ;i2 = 0 ; i3 = 0; i4 = 0; i5 =1 ; i6 = 0; i7 = 0; #10;
        S2=1; S1=1; S0=0; i0 = 0; i1 = 0 ;i2 = 0 ; i3 = 0; i4 = 0; i5 =0 ; i6 = 1; i7 = 0; #10;
        S2=1; S1=1; S0=1; i0 = 0; i1 = 0 ;i2 = 0 ; i3 = 0; i4 = 0; i5 =0 ; i6 = 0; i7 = 1; #10;


        $finish;
    end

    initial begin
        $monitor("%4t |  %b  %b  %b  |   %b", 
                 $time, S2, S1, S0, output_wire);
    end

endmodule