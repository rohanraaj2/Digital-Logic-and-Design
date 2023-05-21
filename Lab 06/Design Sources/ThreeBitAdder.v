`timescale 1ns / 1ps

module threeBitAdder(A,B,Y,Cout); 
  input [2:0] A; //Since it is 3 bit, we will write [2:0]
  input [2:0] B; 
  output [2:0] Y; 
  output Cout; 
  full_adder_ u1(A[0], B[0], 1'b0, Y[0], w1); //We get our carry to be used as input in u2. It is a wire  
  full_adder_ u2(A[1], B[1], w1, Y[1], w2); // The output w1 from u1 is used as input here. The output w2 will be used as input in u3. It is a wire
  full_adder_ u3(A[2], B[2], w2, Y[2], Cout); //The output w2 from u2 is used as input here. The final output is Cout 
endmodule
