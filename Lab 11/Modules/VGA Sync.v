`timescale 1ns / 1ps

module vga_sync (
input [9:0] h_count,
input [9:0] v_count,
output h_sync,
output v_sync,
output video_on, // active area
output reg [9:0] x_loc, // current pixel x- location
output reg [9:0] y_loc // current pixel y-location
);

// horizontal
localparam HD = 640; // Horziontal Display Area

localparam HF = 16 ;// Horizontal (Front Porch) Right Border

localparam HB = 48 ;// Horizontal (Back Porch) Left Border

localparam HR =  96;// Horizontal Retrace

// vertical
localparam VD = 480 ;// Vertical Display Area

localparam VF =  10;// Vertical (Front Porch) Bottom Border

localparam VB = 33;// Vertical (Back Porch) Top Border

localparam VR = 2 ;// Vertical Retrace

reg h_sync;
reg v_sync;
reg video_on;

initial
begin
    if (h_count < 800) 
        begin
            assign x_loc = h_count;
        end
    if (v_count < 525) 
        begin
            assign y_loc = h_count;
        end
    if (h_count >= HD  & h_count < (HD + HB + HF + HR)) 
        begin 
            video_on = 1'b0;
        end
    else
        begin 
            video_on = 1'b1;
        end
    if (v_count >= VD  || v_count < (VD + VB + VF + VR)) 
        begin 
            video_on = 1'b0;
        end
    else
        begin 
            video_on = 1'b1;
        end
    if (h_count < (HD + HF) || h_count >= (HD + HF + HR)) 
        begin 
            h_sync = 1'b1;
        end
    else
         begin 
            h_sync = 1'b0;
        end
    if (v_count < (VD+VF) || v_count >= (VD  + VF + VR)) 
        begin 
            v_sync = 1'b1;
        end
    else
        begin 
            v_sync = 1'b0;
        end
end

endmodule // vga_sync

