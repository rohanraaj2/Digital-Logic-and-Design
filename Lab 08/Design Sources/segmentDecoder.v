`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/27/2022 01:56:18 AM
// Design Name: 
// Module Name: segmentDecoder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module segmentDecoder(D,S);
  input [3:0] D; //since we have 4 inputs, we use [3:0]
  output [6:0] S; //since we have 7 outputs from Sg to Sa, we use [6:0]
//    );

    assign S[0] = (~D[3] & ~D[2] & ~D[1] & D[0]) || (~D[3] & D[2] & ~D[1] & ~D[0]) || (D[3] & ~D[2] & D[1] & D[0]) || (D[3] & D[2] & ~D[1] & D[0]); // Output for Sa

    assign S[1] = (D[2] & D[1] & ~D[0]) || (D[3] & D[1]& D[0]) || (D[3] & D[2] & ~D[0]) || (~D[3] & D[2] & ~D[1] & D[0]); // Output for Sb

    assign S[2] = (D[3] & D[2] & D[1]) || (D[3] & D[2] & ~D[0]) || (~D[3] & ~D[2] & D[1] & ~D[0]); // Output for Sc

    assign S[3] = (D[2] & D[1] & D[0]) || (~D[3] & ~D[2] & ~D[1] & D[0]) || (~D[3] & D[2] & ~D[1] & ~D[0]) || (D[3] & ~D[2] & D[1] & ~D[0]); // Output for Sd

    assign S[4] = (~D[3] & D[0]) || (~D[2] & ~D[1] & D[0]) || (~D[3] & D[2] & ~D[1]); // Output for Se

    assign S[5] = (~D[3] & ~D[2] & D[0]) || (~D[3] & ~D[2] & D[1]) || (~D[3] & D[1] & D[0]) || (D[3] & D[2] & ~D[1] & D[0]); // Output for Sf

    assign S[6] = (~D[3] & ~D[2] & ~D[1]) || (~D[3] & D[2] & D[1]& D[0]) || (D[3]& D[2] & ~D[1] & ~D[0]); // Output for Sg
endmodule
