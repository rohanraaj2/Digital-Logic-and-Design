`timescale 1ns / 1ps

module demux_1_4(
    input S1,
    input S0,
    input En,
    output EnA,
    output EnB,
    output EnC,
    output EnD
    );
assign EnA = S1 ? (S0 ? 1:1) : (S0 ? 1:En);
assign EnB = S1 ? (S0 ? 1:1) : (S0 ? En:1);
assign EnC = S1 ? (S0 ? 1:En) : (S0 ? 1:1);
assign EnD = S1 ? (S0 ? En:1) : (S0 ? 1:1);
endmodule
