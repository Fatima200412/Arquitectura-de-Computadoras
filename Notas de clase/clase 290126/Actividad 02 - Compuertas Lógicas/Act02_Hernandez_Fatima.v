//Actividad02 compuertas logicas Arquitectura de computadoras
//Fatima Lisette Hernandez Barajas

//1 Creacion del modulo y definir I/O
module Act02_Hernandez_Fatima(
    input A,
    input B,
    output and_o,
    output nand_o,
    output or_o,
    output nor_o,
    output not_o,
    output xor_o,
    output xnor_o
);

//2 cuerpo del modulo, asignaciones, instancias, bloques secuenciales 
    assign and_o  = A & B;
    assign nand_o = ~(A & B);
    assign or_o   = A | B;
    assign nor_o  = ~(A | B);
    assign not_o  = ~A;
    assign xor_o  = A ^ B;
    assign xnor_o = ~(A ^ B);

endmodule