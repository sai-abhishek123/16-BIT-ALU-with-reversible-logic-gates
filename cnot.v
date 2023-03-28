`timescale 1ns / 1ps
module cnot(
    input x1,
    input x2,
    output y1,
    output y2
    );

assign y1 = x1;
assign y2 = x1^x2;

endmodule
