`timescale 1ns / 1ps

module sum1b (A,B,Ci,Cout,S);

  input A;
  input B;
  input Ci;
  output Cout;
  output S;

  wire [1:0] st;
  
  assign S = st[0];
  assign Cout = st[1];

 /*always @ ( * ) begin 
       assing st = A + B + Ci;
			end
			*/
	assign st  = 	A+B+Ci;
endmodule
			