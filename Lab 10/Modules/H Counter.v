`timescale 1ns / 1ps

module h_counter(clk, h_count, trig_v);
    input clk;
    output [9:0] h_count;
    output trig_v;
    reg trig_v;
    reg [9:0] h_count;
    initial h_count = 0;
    always @(posedge clk)
        begin
            if (h_count <= 798)
                begin
                    h_count <= h_count + 1; // value of h_count incremented
                end
            else // value of h_count has reached 799
                begin
                    h_count <= 0; 
                    trig_v <= 1;
                end
            if (h_count <= 1 & trig_v <= 1) // h_count is 1 after reset
                begin
                    trig_v = 0; // trig_v set to 0
                end
        end
endmodule
