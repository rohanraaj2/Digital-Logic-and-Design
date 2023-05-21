`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/26/2022 02:13:20 AM
// Design Name: 
// Module Name: full_adder_
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


module full_adder_(
    input A,
    input B,
    input C,
    output carry_out,
    output Sum
    );
    wire X;
    wire Z;
    wire P;
    wire S;
    myAND u1(A, B, X);
    xor_gate u2 (A, B, Z);
    myAND u3 (C, Z, P);
    xor_gate u4 (C, Z, Sum);
    or_gate u5 (P, X, carry_out);  
endmodule
