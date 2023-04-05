`timescale 1ns / 1ps

module TopLevelModule_Clock(
    input clk,
    output [9:0] h_count,
    output [9:0] v_count
    );
    clock_divider u1(clk, clk2); // The output clk2 is the output from the clock_divider module which is acting as a wire in this module
    h_counter u2(clk2, h_count, enabler); // The output clk2 from clock_divider becomes the input of h_counter which in that module, is clk
    v_counter u3(clk2, enabler, v_count); // The output from h_counter is acting as a wire and is one of the input of v_counter which in that module is enable_v
endmodule
