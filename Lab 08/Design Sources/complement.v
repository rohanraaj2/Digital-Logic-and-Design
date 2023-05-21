`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2022 01:47:15 AM
// Design Name: 
// Module Name: complement
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


module complement(
  input O, // this is our operator bit. If it is 0, our number is positive. Hence, it will remain the same. Else, we will output its complement. 
  input [2:0] B, // this is our three bit number input
  output [2:0] C // our output needs to be three bit as well.
  ); 
  // Write your code here 
  assign C[0] = B[0];
  assign C[1] = (~O & B[1]) || (B[1] & ~B[0]) || (O & ~B[1] & B[0]);
  assign C[2] = (~O & B[2]) || (B[2] & ~B[1] & ~B[0]) || (O & ~B[2] & B[0]) || (O & ~B[2] & B[1]);
endmodule

