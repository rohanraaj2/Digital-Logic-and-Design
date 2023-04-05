`timescale 1ns / 1ps

module vga_syncTB();
    reg [9:0] h_count;
reg [9:0] v_count;
wire h_sync;
wire v_sync;
wire video_on; // active area
wire [9:0] x_loc; // current pixel x- location
wire [9:0] y_loc;// current pixel y-location
    vga_sync Il(h_count, v_count, h_sync, v_sync, video_on, x_loc,y_loc );
    
    initial
    begin
    h_count = 10'd0;
    v_count = 10'd0;

    end
endmodule
