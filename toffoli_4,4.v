`timescale 1ns / 1ps
module toofli_4X4(
    input x1,
    input x2,
    input x3,
    input x4,
    output y1,
    output y2,
    output y3,
    output y4
    );
    
    assign y1 = x1;
    assign y2 = x2;
    assign y3 = x3;
    assign y4 = (x1 && x2 && x3) ^ x4;
endmodule
