`timescale 1ns / 1ps
module ComplementTest();
reg dO; // O has 1 bit
reg [2:0] dB; //since we have 3 bit input, we use [2:0]
wire [2:0] dC; //our output needs to be three bit
//Instantiating the unit under test (UUT)
complement I1(dO,dB,dC);
// Stimulus
initial
begin
#50 dB = 3'b000; // b represents binary
dO = 1'b0;
#50 dB = 3'b001;
#50 dB = 3'b010;
#50 dB = 3'b011;
#50 dB = 3'b100;
#50 dB = 3'b101;
#50 dB = 3'b110;
#50 dB = 3'b111;
#50 dB = 3'b000;
dO = 1'b1;
#50 dB = 3'b001;
#50 dB = 3'b010;
#50 dB = 3'b011;
#50 dB = 3'b100;
#50 dB = 3'b101;
#50 dB = 3'b110;
#50 dB = 3'b111;
  $monitor("Time=%0d, D=%4b. S=%7b\n", $time, dO, dB, dC );
end
endmodule
