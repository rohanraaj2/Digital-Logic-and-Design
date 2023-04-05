`timescale 1ns / 1ps

module clock_divider(clk, clk_d);
parameter div_value = 14'd10000;
input clk;
output clk_d;
    reg clk_d;
    reg [13:0] count;
        initial
            begin
            clk_d=0;
            count=0;
        end

        always @ (posedge clk)
            begin
                if (count == div_value)
                    count <=0;
                else
                    count <= count + 1;
            end
            
        always @ (posedge clk)
            begin
                if (count == div_value)
                    clk_d <= ~clk_d; // value of clk_d is inverted
            end
endmodule
