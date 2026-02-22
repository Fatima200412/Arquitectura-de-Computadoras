`timescale 1ns/1ns
//Hernandez Barajas Fatima Lisette
//Arquitectura de computadoras
//Sumador de 8 bits usando 8 Full Adders

module S8bits_instanciado(
    input  [7:0] X,
    input  [7:0] Y,
    input  cin,
    output [8:0] W
);

    // acarreos intermedios
    wire c1, c2, c3, c4, c5, c6, c7;

    // FA0
    FA F0(
        .A(X[0]),
        .B(Y[0]),
        .AE(cin),
        .SUMA(W[0]),
        .AS(c1)
    );

    // FA1
    FA F1(
        .A(X[1]),
        .B(Y[1]),
        .AE(c1),
        .SUMA(W[1]),
        .AS(c2)
    );

    // FA2
    FA F2(
        .A(X[2]),
        .B(Y[2]),
        .AE(c2),
        .SUMA(W[2]),
        .AS(c3)
    );

    // FA3
    FA F3(
        .A(X[3]),
        .B(Y[3]),
        .AE(c3),
        .SUMA(W[3]),
        .AS(c4)
    );

    // FA4
    FA F4(
        .A(X[4]),
        .B(Y[4]),
        .AE(c4),
        .SUMA(W[4]),
        .AS(c5)
    );

    // FA5
    FA F5(
        .A(X[5]),
        .B(Y[5]),
        .AE(c5),
        .SUMA(W[5]),
        .AS(c6)
    );

    // FA6
    FA F6(
        .A(X[6]),
        .B(Y[6]),
        .AE(c6),
        .SUMA(W[6]),
        .AS(c7)
    );

    // FA7
    FA F7(
        .A(X[7]),
        .B(Y[7]),
        .AE(c7),
        .SUMA(W[7]),
        .AS(W[8])  // acarreo final
    );

endmodule