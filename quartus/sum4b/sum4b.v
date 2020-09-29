`timescale 1ns / 1ps

module sum4b (A,B,Cout,S);

  input [3:0] A;
  input [3:0] B;
  output Cout;
  output [3:0] S;

  
  wire c1,c2,c3;
  
  sum1b s0(.A(A[0]),.B(B[0]),.Ci(0),.Cout(c1),.S(S[0]));
  sum1b s1(.A(A[1]),.B(B[1]),.Ci(c1),.Cout(c2),.S(S[1]));
  sum1b s2(.A(A[2]),.B(B[2]),.Ci(c2),.Cout(c3),.S(S[2]));
  sum1b s3(.A(A[3]),.B(B[3]),.Ci(c3),.Cout(Cout),.S(S[3]));
  
  
  endmodule
  