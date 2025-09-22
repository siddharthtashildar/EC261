module demux(

    input wire input_wire,
    input wire A0,A1,A2,
    output wire Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7

);

assign Y0 = (A2 == 0 && A1 == 0 && A0 == 0) ? input_wire : 0 ;
assign Y1 = (A2 == 0 && A1 == 0 && A0 == 1) ? input_wire : 0 ;
assign Y2 = (A2 == 0 && A1 == 1 && A0 == 0) ? input_wire : 0 ;
assign Y3 = (A2 == 0 && A1 == 1 && A0 == 1) ? input_wire : 0 ;
assign Y4 = (A2 == 1 && A1 == 0 && A0 == 0) ? input_wire : 0 ;
assign Y5 = (A2 == 1 && A1 == 0 && A0 == 1) ? input_wire : 0 ;
assign Y6 = (A2 == 1 && A1 == 1 && A0 == 0) ? input_wire : 0 ;
assign Y7 = (A2 == 1 && A1 == 1 && A0 == 1) ? input_wire : 0 ;

endmodule