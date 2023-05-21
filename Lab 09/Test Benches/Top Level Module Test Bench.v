`timescale 1ns / 1ps

module TopLevel_Tb();
    reg [3:0] A;
    reg [3:0] B;
    reg [3:0] C;
    reg En;
    wire [6:0] P;
    wire EnA;
    wire EnB;
    wire EnC;
    wire EnD;
    reg clk;
    topLevelModule Il(A, B, C, En, P, EnA, EnB, EnC, EnD, clk);
    
    initial
    begin
    clk = 1'b0;
    En = 1'b0; A = 4'b0111; B = 4'b0110; C = 4'b0101;
    end
endmodule
