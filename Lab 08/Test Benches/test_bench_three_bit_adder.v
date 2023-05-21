`timescale 1ns / 1ps
module adderTest();
reg [2:0] A; //Since it is 3 bit, we will write [2:0]
reg [2:0] B;
wire [2:0] X;
wire Y;
//Instantiating the unit under test (UUT)
threeBitAdder module_u_test(A, B, X, Y);
// Stimulus
initial
begin
#100 A = 3'b000; B = 3'b000; // b represents binary

#100 A = 3'b001; B = 3'b001;

#100 A = 3'b010; B = 3'b010;

#100 A = 3'b011; B = 3'b011;

#100 A = 3'b100; B = 3'b100;

#100 A = 3'b101; B = 3'b101;

#100 A = 3'b110; B = 3'b110;

#100 A = 3'b111; B = 3'b111;

$monitor("Time=%0d, D=%4b. S=%7b\n", $time, A, B, X, Y);

end
endmodule