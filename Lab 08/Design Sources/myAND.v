`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/20/2022 02:33:23 AM
// Design Name: 
// Module Name: myAND
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


module myAND(
    input Sw1,
    input Sw2,
    output LED
    );
    and u1 (LED, Sw1,Sw2);
endmodule
