`timescale 1ns / 1ps

module addSubtract(
    input [2:0] Num1,
    input [2:0] Num2,
    input Operator,
    output [6:0] Result_Segment,
    output [2:0] dp
    );
    wire [2:0] C;
    wire [2:0] Sum;
    wire [2:0] E;
    wire [3:0] F;
    wire D;
    wire Carry;
    wire N;
    complement u1(O, Num1, C);
    threeBitAdder u2(Num2, C, Sum, Carry);
    myAND u3(~O, Carry, D);
    or_gate u4(~O, Carry, N);
    complement u5(~N, Sum, E);
    assign F[3] = D;
    assign F[2] = E[2];
    assign F[1] = E[1];
    assign F[0] = E[0];
    segmentDecoder u6(F, Result_Segment);
    assign dp = N;
     
endmodule
