`timescale 0.1ns / 1ps

module Top_Level_Module_Clock_Simulator();
reg clk;
wire [9:0] h_count;
wire [9:0] v_count;

TopLevelModule_Clock c1 (.clk(clk),.h_count(h_count),.v_count(v_count));

initial
clk = 1'b0;

always
    #0.5 clk  = ~clk;

    
    initial
        begin
        $dumpfile("dump.vcd");
        $dumpvars(1, Top_Level_Module_Clock_Simulator);
        $monitor("Time = ",$time, " H_Count = %d", h_count, " V_Count = %d", v_count);
        #10000 $finish;
        end
endmodule
