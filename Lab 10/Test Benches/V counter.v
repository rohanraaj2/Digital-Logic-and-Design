`timescale 0.1ns / 1ps
module tb_v();
    reg clk;
    reg enable_v;
    wire [9:0] v_count;
    v_counter c1(.clk(clk),.enable_v(enable_v),.v_count(v_count));
    
    initial
    begin
        clk = 1'b0; 
        enable_v = 1'b0;
   end
        
    always
    begin
    #0.5 clk  = ~clk;
    #100 enable_v = ~enable_v;
    end

    
    initial
        begin
        $dumpfile("dump.vcd");
        $dumpvars(1, tb_v);
        $monitor("Time = ",$time, " Count = %d", v_count);
        #1100 $finish;
        end
        
endmodule
