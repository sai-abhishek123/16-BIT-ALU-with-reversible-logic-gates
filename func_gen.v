`timescale 1ns / 1ps

module func_gen(
    input a,
    input b,
    input s0,
    input s1,
    input s2,
    input s3,
    output r0,
    output r1,
    output r2,
    output r3,
    output x,
    output y
    );
    wire tg1_y1,tg1_y2,tg1_y3;
    wire tg2_y1,tg2_y2,tg2_y3;
    wire tg3_y1,tg3_y2,tg3_y3;
    wire tg4_y1,tg4_y2,tg4_y3;
    wire tg5_y1,tg5_y2,tg5_y3;
    wire tg6_y1,tg6_y2,tg6_y3;
    wire tg7_y1,tg7_y2,tg7_y3;
    wire tg8_y1,tg8_y2;
        
            
    toofli_3X3 tg1 (a,~tg4_y1,'b0,tg1_y1,tg1_y2,tg1_y3);
    toofli_3X3 tg2 (tg1_y1,~b,'b0,tg2_y1,tg2_y2,tg2_y3);

    toofli_3X3 tg3 (tg1_y2,s0,'b0,tg3_y1,r0,tg3_y3);
    toofli_3X3 tg4 (tg2_y2,s1,'b0,tg4_y1,r1,tg4_y3);
    toofli_3X3 tg5 (tg2_y3,s2,'b0,tg5_y1,r2,tg5_y3);
    toofli_3X3 tg6 (tg1_y3,s3,'b0,tg6_y1,r3,tg6_y3);
    
    toofli_4X4 tg7 (~tg3_y3,~tg4_y3,~tg2_y1,'b1,tg7_y1,tg7_y2,tg7_y3,x);
    toofli_3X3 tg8 (~tg5_y3,~tg6_y3,'b1,tg8_y1,tg8_y2,y);
    
    
endmodule