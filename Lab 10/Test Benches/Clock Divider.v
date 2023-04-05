`timescale 1ns / 1ps

module tb_clk_div();
reg clk;
wire clk_d;
clock_divider c1(.clk(clk),.clk_d(clk_d));

initial
clk = 1'b0;
always
    #5 clk  = ~clk;
    
    initial
        begin
        $dumpfile("dump.vcd");
        $dumpvars(1, tb_clk_div);
        $monitor("Time = ",$time, " Output = %d", clk_d);
        #200 $finish;
        end
endmodule
