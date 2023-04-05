`timescale 1ns / 1ps

module De_mux_TB();
    reg S1;
    reg S0;
    reg En;
    wire EnA;
    wire EnB;
    wire EnC;
    wire EnD;
    demux_1_4 Il(S1, S0, En, EnA, EnB, EnC, EnD);
    initial
    begin
    #50 S1 = 1'b0; S0 = 1'b0; En = 1'b0;
    #50 S1 = 1'b0; S0 = 1'b1; En = 1'b0;
    #50 S1 = 1'b1; S0 = 1'b0; En = 1'b0;
    #50 S1 = 1'b1; S0 = 1'b1; En = 1'b0;
    #50 S1 = 1'b1; S0 = 1'b1; En = 1'b1;
    end
endmodule
