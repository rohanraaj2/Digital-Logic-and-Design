`timescale 1ns / 1ps

module mux_4_1(
    input S1,
    input S2,
    input [3:0] A,
    input [3:0] B,
    input [3:0] C,
    input [3:0] D,
    output [3:0] O
    
    );
    assign O = S2 ? (S1 ? D : C) : (S1 ? B : A); 
endmodule
