`timescale 1ns / 1ps

module Mux_TB();
    reg S1;
    reg S2;
    reg [3:0] A;
    reg [3:0] B;
    reg [3:0] C;
    reg [3:0] D;
    wire [3:0] O;
    mux_4_1 Il(S1, S2, A, B, C, D, O);
    
    initial
    begin
    #50 S2 = 1'b0;S1 = 1'b0; A = 4'b1010;B = 4'b0010;C = 4'b0011;D = 4'b0101;
    #50 S2 = 1'b0;S1 = 1'b1; A = 4'b1010;B = 4'b0010;C = 4'b0011;D = 4'b0101;
    #50 S2 = 1'b1;S1 = 1'b0; A = 4'b1010;B = 4'b0010;C = 4'b0011;D = 4'b0101;
    #50 S2 = 1'b1;S1 = 1'b1; A = 4'b1010;B = 4'b0010;C = 4'b0011;D = 4'b0101;
    end
endmodule
