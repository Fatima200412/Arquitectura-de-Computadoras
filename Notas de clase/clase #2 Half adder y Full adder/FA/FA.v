//Hernandez barajas Fatima Lisette
//Arquitectura de computadoras
//segunda sesion Full Adder (FA) usando 2 Half Adders

module FA(
    input A,
    input B,
    input AE, //acarreo de entrada
    output SUMA,
    output AS //acarreo de salida
);

//componentes declaracion de cables
wire c1, c2, c3;

//instancias de HA
HA taco(
    .a(A),
    .b(B),
    .s(c1),   //suma intermedia
    .as(c2)   //acarreo 1
);

HA torta(
    .a(c1),
    .b(AE),
    .s(SUMA), //suma final
    .as(c3)   //acarreo 2
);

//acarreo de salida final
assign AS = c2 | c3;

endmodule

