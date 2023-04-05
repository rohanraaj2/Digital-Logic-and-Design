`timescale 1ns / 1ps
module adder_subtracter_Test();
reg [2:0] A; //Since it is 3 bit, we will write [2:0]
reg [2:0] B;
reg O;
wire [6:0] P;
wire [2:0] Y;
//Instantiating the unit under test (UUT)
addSubtract I1(A, B, O, P, Y);
// Stimulus
initial
begin

#50 A = 3'b000; B = 3'b000; // b represents binary

O = 1'b0;

#50 A = 3'b001; B = 3'b001;

#50 A = 3'b010; B = 3'b010;

#50 A = 3'b011; B = 3'b011;

#50 A = 3'b100; B = 3'b100;

#50 A = 3'b101; B = 3'b101;

#50 A = 3'b110; B = 3'b110;

#50 A = 3'b111; B = 3'b111;

#50 A = 3'b000; B = 3'b000; // b represents binary

O = 1'b1;

#50 A = 3'b001; B = 3'b001;

#50 A = 3'b010; B = 3'b010;

#50 A = 3'b011; B = 3'b011;

#50 A = 3'b100; B = 3'b100;

#50 A = 3'b101; B = 3'b101;

#50 A = 3'b110; B = 3'b110;

#50 A = 3'b111; B = 3'b111;

$monitor("Time=%0d, D=%4b. S=%7b\n", $time, A, B, O, P, Y);
end
endmodule
