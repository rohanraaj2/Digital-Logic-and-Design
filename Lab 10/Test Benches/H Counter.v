`timescale 0.1ns / 1ps
module tb();
    reg clk;
    wire [9:0] h_count;
    wire trig_v;
    h_counter c1(.clk(clk),.h_count(h_count),.trig_v(trig_v));
    
    initial
        clk = 1'b0;
        
    always
    #0.5 clk  = ~clk;
    
    initial
        begin
        $dumpfile("dump.vcd");
        $dumpvars(1, tb);
        $monitor("Time = ",$time, " Count = %d", h_count, " Trig V = %d", trig_v);
        #10000 $finish;
        end
        
endmodule
