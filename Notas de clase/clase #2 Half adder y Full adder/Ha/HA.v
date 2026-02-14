 //Hernandez barajas Fatima Lisette
 //Arquitectura de computadoras
 //segunda sesion Half Adder (HA)

 //declaracion del modulo 
 module HA (
    input a,
    input b,
    input s,
    input as
    );

// componentes, declaracion de registros (reg) N/A, y cables (wires) N/A
 
//cuerpo del modulo, assigns, instancias, bloques secuenciales
assign s = a ^ b; //suma
assign as = a & b; //acarreo

endmodule
