`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2022 01:24:55 AM
// Design Name: 
// Module Name: addSubtract
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module addSubtract(
    input [2:0] Num1, // first three bit number
    input [2:0] Num2, // second three bit number
    input O, // this is our operator bit. If it is 0, our number is positive. Hence, it will remain the same. Else, we will output its complement.
    output [6:0] Result_Segment, //seven segment output
    output dp // Minus sign display. It is 1 if output is positive and 0 if it is negative.
    );
    wire [2:0] C;
    wire [2:0] Sum;
    wire [2:0] E;
    wire [3:0] F;
    wire D;
    wire Carry;
    wire N;
    wire Q;
    complement u1(O, Num1, C);
    threeBitAdder u2(Num2, C, Sum, Carry);
    myAND u3(~O, Carry, D);
    or_gate u4(~O, Carry, N);
    complement u5(~N, Sum, E);
    assign F[3] = D; // this is because our seven segment output requires 4 bit input which in this case is divided in two wires
    assign F[2] = E[2];
    assign F[1] = E[1];
    assign F[0] = E[0];
    segmentDecoder u6(F, Result_Segment);
    assign dp = N;
endmodule
