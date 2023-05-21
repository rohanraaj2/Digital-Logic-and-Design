`timescale 1ns / 1ps
module adder_subtracter_Test();
reg [2:0] B; //Since it is 3 bit, we will write [2:0]
reg [2:0] A;
reg O;
wire [6:0] P;
wire Y;
//Instantiating the unit under test (UUT)
addSubtract I1(B, A, O, P, Y);
// Stimulus
initial
begin

#50 A = 3'b011; B = 3'b100; // b represents binary

O = 1'b0;

#50 A = 3'b111; B = 3'b111;

#50 A = 3'b011; B = 3'b100;

O = 1'b1;

#50 A = 3'b010; B = 3'b110;


#50 A = 3'b000;  // b represents binary

B = 3'b000;

#50 A = 3'b001; 

#50 A = 3'b010;

#50 A = 3'b011;

#50 A = 3'b100;

#50 A = 3'b101;

#50 A = 3'b110;

#50 A = 3'b111;


$monitor("Time=%0d, D=%4b. S=%7b\n", $time, B, A, O, P, Y);

end
endmodule
