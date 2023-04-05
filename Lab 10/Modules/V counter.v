`timescale 1ns / 1ps

module v_counter(clk, enable_v, v_count);
    input clk;
    input enable_v;
    output [9:0] v_count;
    reg [9:0] v_count;
    initial v_count = 0;
    always @(posedge clk)
        begin @(posedge enable_v) //begins if enable_v is 1
            if (v_count <= 523)
                begin
                    v_count <= v_count + 1; // value of v_count incremented
                end
            else // value of v_count has reached 524
                begin
                    v_count <= 0; // v_count set to 0
                end
        end
endmodule
