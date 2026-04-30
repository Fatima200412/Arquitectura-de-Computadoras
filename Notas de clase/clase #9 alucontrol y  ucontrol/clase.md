//Fatima lisette hernandez barajas
//clase arqui de compus

# clase 23/04/2026

## unidad de control


** formato de la instruccion **
sub $3, $6, $8

op     | RS  | RT  | RD  | SH  | FNC  |
000000 |00110|01000|00011|00000|100010| -> SUB

. en tipo R solo hay un codigo de operacion = 00000 
. en tipo I hay mas codigos.


## curiosidad 
el resultado de la alu va hacia la direccion de la men=moria de datos,
para escribir de ocupa una direccion y un dato, rt da el dato que se va a guardar en la memoria.

## primer codigo de la clase 
## alu control

//creacion del modulo I/O
 module U_Control()

## ALU SUB OR AND SLT
cada uno con un function diferente 
** ALUop un caso para cada uno ** 

module ALU_Ctrl(
input [2:0]aluOP,
input [5:0]fnc,
output reg [2:0] salidaAC

);
always @(*)
begin
    case (aluOP)
3'b000: 
    salidaAC = 3'000;

3'b010: 
    begin
    case(fnc)
        //todos los casos de las instrucciones tipo r (and,or,slt,add,sub)
        6'b000000: salidaAC = 3'b000; //suma
        6'b100010: salidaAC = 3'b001; //resta //depende de como esta en la alu
    endcase
endcase


end
endmodule 



