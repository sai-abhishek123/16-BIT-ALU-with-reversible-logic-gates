`timescale 1ns / 1ps
module ALU_4(
    input [3:0] a,
    input [3:0] b,
    input s0,
    input s1,
    input s2,
    input s3,
    input cin,
    input m,
    output [3:0] f,
    output cout
    );
    wire [3:0] x;
    wire [3:0] y;
    wire [3:0] c;
    wire func0_r0,func0_r1,func0_r2,func0_r3;
    wire func1_r0,func1_r1,func1_r2,func1_r3;
    wire func2_r0,func2_r1,func2_r2,func2_r3;
    wire func3_r0,func3_r1,func3_r2,func3_r3;
    
    wire tg0_y1,tg0_y2;
    wire tg0_a_y1,tg0_a_y2,tg0_a_y3;
    wire tg0_b_y1,tg0_b_y2,tg0_b_y3;
    wire tg0_c_y1,tg0_c_y2,tg0_c_y3;
    wire d0_g1,d0_g2;
    wire tg1_a_y1,tg1_a_y2,tg1_a_y3;
    wire tg1_b_y1,tg1_b_y2,tg1_b_y3;
    wire tg1_c_y1,tg1_c_y2,tg1_c_y3;
    wire d1_g1,d1_g2;
    wire tg2_a_y1,tg2_a_y2,tg2_a_y3;
    wire tg2_b_y1,tg2_b_y2,tg2_b_y3;
    wire tg2_c_y1,tg2_c_y2,tg2_c_y3;
    wire d2_g1,d2_g2;
    wire tg3_a_y1,tg3_a_y2,tg3_a_y3;
    wire tg3_b_y1,tg3_b_y2,tg3_b_y3;
    wire tg3_c_y1,tg3_c_y2,tg3_c_y3;
    wire d3_g1,d3_g2;
    
        
    func_gen func0 (a[0],b[0],s0,s1,s2,s3,func0_r0,func0_r1,func0_r2,func0_r3,x[0],y[0]);
    toofli_3X3 tg0_a (x[0],cin,1'b0,tg0_a_y1,tg0_a_y2,tg0_a_y3);
    toofli_3X3 tg0_b (~tg0_a_y3,~y[0],'b1,tg0_b_y1,tg0_b_y2,tg0_b_y3);    
    toofli_3X3 tg0_c (tg0_b_y3,tg0_y2,1'b1,tg0_c_y1,tg0_c_y2,c[1]);    
    toofli_3X3 tg0 (tg0_a_y2,~m,1'b1,tg0_y1,tg0_y2,c[0]);    
    dxor d0 (tg0_a_y1,~tg0_b_y2,c[0],d0_g1,d0_g2,f[0]);
    
    func_gen func1 (a[1],b[1],func0_r0,func0_r1,func0_r2,func0_r3,func1_r0,func1_r1,func1_r2,func1_r3,x[1],y[1]);
    toofli_3X3 tg1_a (x[1],tg0_c_y1,1'b0,tg1_a_y1,tg1_a_y2,tg1_a_y3);
    toofli_3X3 tg1_b (~tg1_a_y3,~y[1],'b1,tg1_b_y1,tg1_b_y2,tg1_b_y3);    
    toofli_3X3 tg1_c (tg1_b_y3,tg0_c_y2,1'b1,tg1_c_y1,tg1_c_y2,c[2]);        
    dxor d1 (tg1_a_y1,~tg1_b_y2,c[1],d1_g1,d1_g2,f[1]);
    
    func_gen func2 (a[2],b[2],func1_r0,func1_r1,func1_r2,func1_r3,func2_r0,func2_r1,func2_r2,func2_r3,x[2],y[2]);
    toofli_3X3 tg2_a (x[2],tg1_c_y1,1'b0,tg2_a_y1,tg2_a_y2,tg2_a_y3);
    toofli_3X3 tg2_b (~tg2_a_y3,~y[2],'b1,tg2_b_y1,tg2_b_y2,tg2_b_y3);    
    toofli_3X3 tg2_c (tg2_b_y3,tg1_c_y2,1'b1,tg2_c_y1,tg2_c_y2,c[3]);        
    dxor d2 (tg2_a_y1,~tg2_b_y2,c[2],d2_g1,d2_g2,f[2]);
    
    func_gen func3 (a[3],b[3],func2_r0,func2_r1,func2_r2,func2_r3,func3_r0,func3_r1,func3_r2,func3_r3,x[3],y[3]);
    toofli_3X3 tg3_a (x[3],tg2_c_y1,1'b0,tg3_a_y1,tg3_a_y2,tg3_a_y3);
    toofli_3X3 tg3_b (~tg3_a_y3,~y[3],'b1,tg3_b_y1,tg3_b_y2,cout);    
    toofli_3X3 tg3_c (tg3_b_y3,tg2_c_y2,1'b1,tg3_c_y1,tg3_c_y2,tg3_c_y3);        
    dxor d3 (tg3_a_y1,~tg3_b_y2,c[3],d3_g1,d3_g2,f[3]);    
    
endmodule