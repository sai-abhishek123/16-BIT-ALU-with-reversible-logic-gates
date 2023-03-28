`timescale 1ns / 1ps
module dxor(
    input p,
    input q,
    input c,
    output g1,
    output g2,
    output f
    );
    
    wire c1_y2;
    cnot c1 (p,q,g1,c1_y2);
    cnot c2 (c1_y2,c,g2,f);
    
endmodule