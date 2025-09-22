`timescale 1ns/1ps

module tb_mux_4x1;

    reg I0, I1, I2, I3;
    reg S0, S1;
    wire output_wire;

    
    mux_4x1 uut (
        .I0(I0), .I1(I1), .I2(I2), .I3(I3),
        .S0(S0), .S1(S1),
        .output_wire(output_wire)
    );

    initial begin
        
        $dumpfile("wave.vcd");
        $dumpvars(0, tb_mux_4x1);
        
        I0 = 0; I1 = 1; I2 = 0; I3 = 1;

        $display("Time | S1 S0 | Output");

        S1=0; S0=0; #10;
        S1=0; S0=1; #10;
        S1=1; S0=0; #10;    
        S1=1; S0=1; #10;

        $finish;
    end

    initial begin
        $monitor("%2t |  %b  %b  |   %b", $time , S1, S0, output_wire);
    end

endmodule