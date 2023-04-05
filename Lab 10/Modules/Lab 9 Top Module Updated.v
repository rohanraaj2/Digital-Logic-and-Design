`timescale 1ns / 1ps

module topLevelModule(A, B, C, En, clk, Y, EnA, EnB, EnC, EnD); 

    input [3:0] A;
    input [3:0] B;
    input [3:0] C;
    input En;
    input clk;
    output [6:0] Y;
    output EnA;
    output EnB;
    output EnC;
    output EnD;
    wire [3:0] P;
    reg [1:0] X;
    initial X = 0;
    clock_divider(clk, clkdiv);
    always @(posedge clkdiv)
        begin
        if (X <= 2)
                begin
                    X <= X + 1; // value of X is incremented
                end
            else // value of X has reached 3
            X <= 0;
        end
    mux_4_1 u1(X[0], X[1], A, B, C, 4'b0110, P);
    segmentDecoder u2(P, Y);
    demux_1_4 u3 (X[1], X[0], En, EnA, EnB, EnC, EnD);
endmodule
