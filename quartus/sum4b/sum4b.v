module sum4b (A,B,Cout,S);

  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  output Cout;
  
  wire c1,c2,c3;
  
  sum1b (.A(A[0]),.B(B[0]),.Ci(0),.Cout(c1),.S(S[0]));
  sum1b (.A(A[1]),.B(B[1]),.Ci(c1),.Cout(c2),.S(S[1]));
  sum1b (.A(A[2]),.B(B[2]),.Ci(c2),.Cout(c3),.S(S[2]));
  sum1b (.A(A[3]),.B(B[3]),.Ci(c3),.Cout(cout),.S(S[3]));
  
  
  endmodule
  