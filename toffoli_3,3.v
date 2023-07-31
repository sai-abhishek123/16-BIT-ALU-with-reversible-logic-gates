`timescale 1ns / 1ps

module toofli_3X3(
    input x1,
    input x2,
    input x3,
    output y1,
    output y2,
    output y3
    );
    
    assign y1 = x1;
    assign y2 = x2;
    assign y3 = (x1 && x2) ^ x3;
    
endmodule
