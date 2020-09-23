`timescale 1ns / 1ps

module sum4b_TB;
  //entradas
  reg [3:0]A; //creacion de los registros de 4 bits
  reg [3:0]B;
  
  //salidas
  wire Co;
  wire [3:0]S;
 
  
  //instanciar
  sum4b cn ( .A(A), .B(B), .Cout(Co), .S(S) );
  
  initial begin
  A=0;
  B=0;
  #4 A=2;
  #4 B=5; A=3;
  #4 B=15;
  #7 $stop;
  
  end

endmodule
