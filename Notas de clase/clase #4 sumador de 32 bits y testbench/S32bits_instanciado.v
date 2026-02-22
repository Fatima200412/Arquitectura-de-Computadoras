 `timescale 1ns/1ns
//Hernandez Barajas Fatima Lisette
//Arquitectura de computadoras
//Sumador de 32 bits 
//creacion del modulo 
module S32bits_instanciado(
    input  [31:0] A,
    input  [31:0] B,
    input  Cin,
    output [31:0] S,
    output Cout
);
//definicion de componentes internos, wires-cables
// Acarreos intermedios
wire c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,
     c11,c12,c13,c14,c15,c16,c17,c18,c19,c20,
     c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,c31;
//cuerpo del modulo -instancias 
// FA0
FA F0  (.A(A[0]),  .B(B[0]),  .AE(Cin), .SUMA(S[0]),  .AS(c1));

// FA1
FA F1  (.A(A[1]),  .B(B[1]),  .AE(c1),  .SUMA(S[1]),  .AS(c2));

// FA2
FA F2  (.A(A[2]),  .B(B[2]),  .AE(c2),  .SUMA(S[2]),  .AS(c3));

// FA3
FA F3  (.A(A[3]),  .B(B[3]),  .AE(c3),  .SUMA(S[3]),  .AS(c4));

// FA4
FA F4  (.A(A[4]),  .B(B[4]),  .AE(c4),  .SUMA(S[4]),  .AS(c5));

// FA5
FA F5  (.A(A[5]),  .B(B[5]),  .AE(c5),  .SUMA(S[5]),  .AS(c6));

// FA6
FA F6  (.A(A[6]),  .B(B[6]),  .AE(c6),  .SUMA(S[6]),  .AS(c7));

// FA7
FA F7  (.A(A[7]),  .B(B[7]),  .AE(c7),  .SUMA(S[7]),  .AS(c8));

// FA8
FA F8  (.A(A[8]),  .B(B[8]),  .AE(c8),  .SUMA(S[8]),  .AS(c9));

// FA9
FA F9  (.A(A[9]),  .B(B[9]),  .AE(c9),  .SUMA(S[9]),  .AS(c10));

// FA10
FA F10 (.A(A[10]), .B(B[10]), .AE(c10), .SUMA(S[10]), .AS(c11));

// FA11
FA F11 (.A(A[11]), .B(B[11]), .AE(c11), .SUMA(S[11]), .AS(c12));

// FA12
FA F12 (.A(A[12]), .B(B[12]), .AE(c12), .SUMA(S[12]), .AS(c13));

// FA13
FA F13 (.A(A[13]), .B(B[13]), .AE(c13), .SUMA(S[13]), .AS(c14));

// FA14
FA F14 (.A(A[14]), .B(B[14]), .AE(c14), .SUMA(S[14]), .AS(c15));

// FA15
FA F15 (.A(A[15]), .B(B[15]), .AE(c15), .SUMA(S[15]), .AS(c16));

// FA16
FA F16 (.A(A[16]), .B(B[16]), .AE(c16), .SUMA(S[16]), .AS(c17));

// FA17
FA F17 (.A(A[17]), .B(B[17]), .AE(c17), .SUMA(S[17]), .AS(c18));

// FA18
FA F18 (.A(A[18]), .B(B[18]), .AE(c18), .SUMA(S[18]), .AS(c19));

// FA19
FA F19 (.A(A[19]), .B(B[19]), .AE(c19), .SUMA(S[19]), .AS(c20));

// FA20
FA F20 (.A(A[20]), .B(B[20]), .AE(c20), .SUMA(S[20]), .AS(c21));

// FA21
FA F21 (.A(A[21]), .B(B[21]), .AE(c21), .SUMA(S[21]), .AS(c22));

// FA22
FA F22 (.A(A[22]), .B(B[22]), .AE(c22), .SUMA(S[22]), .AS(c23));

// FA23
FA F23 (.A(A[23]), .B(B[23]), .AE(c23), .SUMA(S[23]), .AS(c24));

// FA24
FA F24 (.A(A[24]), .B(B[24]), .AE(c24), .SUMA(S[24]), .AS(c25));

// FA25
FA F25 (.A(A[25]), .B(B[25]), .AE(c25), .SUMA(S[25]), .AS(c26));

// FA26
FA F26 (.A(A[26]), .B(B[26]), .AE(c26), .SUMA(S[26]), .AS(c27));

// FA27
FA F27 (.A(A[27]), .B(B[27]), .AE(c27), .SUMA(S[27]), .AS(c28));

// FA28
FA F28 (.A(A[28]), .B(B[28]), .AE(c28), .SUMA(S[28]), .AS(c29));

// FA29
FA F29 (.A(A[29]), .B(B[29]), .AE(c29), .SUMA(S[29]), .AS(c30));

// FA30
FA F30 (.A(A[30]), .B(B[30]), .AE(c30), .SUMA(S[30]), .AS(c31));

// FA31
FA F31 (.A(A[31]), .B(B[31]), .AE(c31), .SUMA(S[31]), .AS(Cout));

endmodule