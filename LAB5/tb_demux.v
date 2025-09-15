
`timescale 1ps/1ps

module tb_demux;

    reg input_wire;
    reg A0, A1, A2;
    wire Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7;

    
    demux uut (
        .input_wire(input_wire),
        .A0(A0), .A1(A1), .A2(A2),
        .Y0(Y0), .Y1(Y1), .Y2(Y2), .Y3(Y3),
        .Y4(Y4), .Y5(Y5), .Y6(Y6), .Y7(Y7)
    );

    initial begin
        
        $dumpfile("wave.vcd");
        $dumpvars(0, tb_demux);
        
        input_wire = 1; 

        $display("Time | A2 A1 A0 | Y0 Y1 Y2 Y3 Y4 Y5 Y6 Y7");

        A2=0; A1=0; A0=0; #10;
        A2=0; A1=0; A0=1; #10;
        A2=0; A1=1; A0=0; #10;
        A2=0; A1=1; A0=1; #10;
        A2=1; A1=0; A0=0; #10;
        A2=1; A1=0; A0=1; #10;
        A2=1; A1=1; A0=0; #10;
        A2=1; A1=1; A0=1; #10;

        $finish;
    end

    initial begin
        $monitor("%4t |  %b  %b  %b  |  %b  %b  %b  %b  %b  %b  %b  %b", 
                 $time, A2, A1, A0, Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7);
    end

endmodule