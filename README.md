# lab01- sumador 
laboratorio 01 introduccion a HDL

En esta plantilla debe adicionar la documentación del laboratorio

* sebastian molina



OK PROFE 
# EL CODIGO
Se crea el primer modulo, lo que sera el sumador de un bit, el cual tiene tres entradas ( A y B son los bits de entrada y Ci es el carry de entrada) y dos salidas (Cout es el carry de salida y S es el bit de salida de  la suma)

      module sum1b (A,B,Ci,Cout,S);

        input A;
        input B;
        input Ci;
        output Cout;
        output S;
        
se crea un wire (st) de dos bits que tendra el valor de la suma entre A, B y Ci

        wire [1:0] st;
se le asigna a S el bit menos significativo de st            

        assign S = st[0];
 se le asigna a Cout el bit mas significativo de st      
    
        assign Cout = st[1];
se le asigna a st la suma entre A, B y Ci 
        
        assign st  = 	A+B+Ci;
                                                                           
      endmodule
----------------------------------------------------------------------
Ahora se crea otro modulo, que sera el sumador de 4 bits. Este modulo tendra dos entradas ( Ay B cada una de 4 bits) y dos salidas (Cout que sera el carry de salida y S sera la salida de la suma y tendra un tamaño de 4 bits)

      module sum4b (A,B,Cout,S);

      input [3:0] A;
      input [3:0] B;
      output Cout;
      output [3:0] S;
se crean tres wire para conectar las instanciaciones

      wire c1,c2,c3;
se realizan cuatro instanciaciones de sum1b, cada una para la suma de los correspondientes bits de A y de B, en la primera se dan a sum1b los valores de los bits menos significativos de A y B y a Ci se le da un cero ya que no hay carry de entrada. Para las siguientes instanciaciones cada vez se da el valor del bit mas significativo que el anterior tanto en A como en B y ademas a los Ci se les dan los valores de Cout de la instanciacion anterior. 

      sum1b s0(.A(A[0]),.B(B[0]),.Ci(0),.Cout(c1),.S(S[0]));
      sum1b s1(.A(A[1]),.B(B[1]),.Ci(c1),.Cout(c2),.S(S[1]));
      sum1b s2(.A(A[2]),.B(B[2]),.Ci(c2),.Cout(c3),.S(S[2]));
      sum1b s3(.A(A[3]),.B(B[3]),.Ci(c3),.Cout(Cout),.S(S[3]));


      endmodule
--------------------------------------------------------------------------
por ultimo se crea el archivo testbench

    module sum4b_TB;
Se crean los registros de 4 bits
    
      reg [3:0]A; 
      reg [3:0]B;
Se crean los wire Co para el carry de salida y S de 4 bitspara la salida de la suma

      wire Co;
      wire [3:0]S;
Se realiza la instanciacion de sum4b 

      sum4b uut ( .A(A), .B(B), .Cout(Co), .S(S) );
Ahora se le dan valores a A y B 

      initial begin

      A=0;
      for(B = 0; B < 16 ; B = B + 1) begin
        if(B==0)
        A = A + 1;
          #2;  
      end

      end

    endmodule
