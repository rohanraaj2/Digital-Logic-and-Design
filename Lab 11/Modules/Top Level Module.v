`timescale 1ns / 1ps
module vga_top(
input clk,
output h_sync,v_sync,
output [3:0] red,green,blue
 );
 wire clk_d, v_trig, video_on;
 wire [9:0] h_count;
 wire[9:0] v_count;
 wire[9:0] x_loc;
 wire[9:0] y_loc;
 clk_div cd(clk,clk_d);
 h_counter hc(clk_d,h_count,v_trig);
 v_counter vc(clk_d,v_trig,v_count);
 vga_sync vgas(h_count,v_count,x_loc,y_loc,h_sync,v_sync,video_on);
 pixel_gen_2 pg(clk_d,x_loc,y_loc,video_on,red,green,blue);
endmodule
