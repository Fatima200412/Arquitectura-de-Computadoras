`timescale 1ns/1ns
//Hernandez Barajas Fatima Lisette 
//Arquitectura de computadoras 
//3ra sesion: sumador de 4 bits usando 4 full adders 

//creacion del modulo
module S4bits_instanciado(
    input [3:0] X,
    input [3:0] Y,
    input cin,
    output [4:0] W

);
//componentes, declaracion de registros:no, y cables:si
    //acarreos intermedios
    wire c1,c2,c3;
//cuerpo del modulo, assigns:na, instancias:si, bloque secuencial:no
    //FA0: bit 0
    FA F0(
        .A(X[0]),
        .B(Y[0]),
        .AE(cin),
        .SUMA(W[0]),
        .AS(c1)
    );

    //FA1: bit 1
    FA F1(
        .A(X[1]),
        .B(Y[1]),
        .AE(c1),
        .SUMA(W[1]),
        .AS(c2)

    );

    //FA2: bit 2
    FA F2(
        .A(X[2]),
        .B(Y[2]),
        .AE(c2),
        .SUMA(W[2]),
        .AS(c3)
    );

    //FA3: bit 3
    FA F3(
        .A(X[3]),
        .B(Y[3]),
        .AE(c3),
        .SUMA(W[3]),
        .AS(W[4]) //Acarreo final, bit mas significativo
    );

    endmodule