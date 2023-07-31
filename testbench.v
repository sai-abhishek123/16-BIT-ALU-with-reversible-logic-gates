`timescale 1ns / 1ps
module alu_4_tb();

    reg [3:0] a;
    reg [3:0] b;
    reg s0;
    reg s1;
    reg s2;
    reg s3;
    reg cin;
    reg m;
    wire [3:0] f;
    wire cout;

ALU_4 a1 (a,b,s0,s1,s2,s3,cin,m,f,cout);

initial begin

/* a = 0;
b = 0;
s0 = 0;
s1 = 0;
s2 = 0;
s3 = 0;
cin = 0;
m = 0;

#100;

a = 4'h3;
b = 4'h5;
s0 = 0;
s1 = 0;
s2 = 0;
s3 = 0;
cin = 0;
m = 1;

#20;

a = 4'h3;
b = 4'h5;
s0 = 1;
s1 = 0;
s2 = 0;
s3 = 0;
cin = 0;
m = 1;

#20;

a = 4'h3;
b = 4'h5;
s0 = 0;
s1 = 1;
s2 = 0;
s3 = 0;
cin = 0;
m = 1;

#20;

a = 4'h3;
b = 4'h5;
s0 = 1;
s1 = 1;
s2 = 0;
s3 = 0;
cin = 0;
m = 1;

#20;

a = 4'h3;
b = 4'h5;
s0 = 0;
s1 = 0;
s2 = 1;
s3 = 0;
cin = 0;
m = 1;

#20;

a = 4'h3;
b = 4'h5;
s0 = 1;
s1 = 0;
s2 = 0;
s3 = 0;
cin = 1;
m = 0; */


// logical operation_1  

/*a = 4'h1;
b = 4'h2;
s0 = 0;
s1 = 0;
s2 = 0;
s3 = 0;
m = 1;
cin = 0;


#100; 

a = 4'h1;
b = 4'h2;
s0 = 1;
s1 = 0;
s2 = 0;
s3 = 0;
m = 1;
cin = 0;

 #100;*/
a = 4'h1;
b = 4'h2;
s0 = 0;
s1 = 1;
s2 = 0;
s3 = 0;
m = 1;
cin = 0;

/*#100;

a = 4'h1;
b = 4'h2;
s0 = 1;
s1 = 1;
s2 = 0;
s3 = 0;
m = 1;
cin = 0;

#100;
a = 4'h1;
b = 4'h2;
s0 = 0;
s1 = 0;
s2 = 1;
s3 = 0;
m = 1;
cin = 0;

#100;

a = 4'h1;
b = 4'h2;
s0 = 1;
s1 = 0;
s2 = 1;
s3 = 0;
m = 1;
cin = 0;


#100;

a = 4'h1;
b = 4'h2;
s0 = 0;
s1 = 1;
s2 = 1;
s3 = 0;
m = 1;
cin = 0;

#100;
a = 4'h1;
b = 4'h2;
s0 = 1;
s1 = 1;
s2 = 1;
s3 = 0;
m = 1;
cin = 0;

#100;

a = 4'h1;
b = 4'h2;
s0 = 0;
s1 = 0;
s2 = 0;
s3 = 1;
m = 1;
cin = 0;

#100;
a = 4'h1;
b = 4'h2;
s0 = 1;
s1 = 0;
s2 = 0;
s3 = 1;
m = 1;
cin = 0;

#100;

a = 4'h1;
b = 4'h2;
s0 = 0;
s1 = 1;
s2 = 0;
s3 = 1;
m = 1;
cin = 0;


#100;

a = 4'h1;
b = 4'h2;
s0 = 1;
s1 = 1;
s2 = 0;
s3 = 1;
m = 1;
cin = 0;

#100;
a = 4'h1;
b = 4'h2;
s0 = 0;
s1 = 0;
s2 = 1;
s3 = 1;
m = 1;
cin = 0;

#100;

a = 4'h1;
b = 4'h2;
s0 = 1;
s1 = 0;
s2 = 1;
s3 = 1;
m = 1;
cin = 0;

#100;
a = 4'h1;
b = 4'h2;
s0 = 0;
s1 = 1;
s2 = 1;
s3 = 1;
m = 1;
cin = 0;

#100;
a = 4'h1;
b = 4'h2;
s0 = 1;
s1 = 1;
s2 = 1;
s3 = 1;
m = 1;
cin = 0; */

end

endmodule
