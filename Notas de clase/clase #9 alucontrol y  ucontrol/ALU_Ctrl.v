/*
Fatima lisette Hernandez Barajas
Arquitectura de computadoras
alu control
*/

//1. creacion del moodulo I/O
module ALU_Ctrl(
input [2:0]aluOP,
input [5:0]fnc,
output reg [2:0] salidaAC
);

//2. componentes internos de registros y cables 

//3. asignaciones na, instancias na, bloques secuenciales

always @(*)
begin
    case (aluOP)
3'b000: 
    salidaAC = 3'b000;

3'b010: 
        begin
            case(fnc)
                //todos los casos de las instrucciones tipo r (and,or,slt,add,sub)
                6'b100000: salidaAC = 3'b010; // add
                6'b100010: salidaAC = 3'b110; // sub
                6'b100100: salidaAC = 3'b000; // and
                6'b100101: salidaAC = 3'b001; // or
                6'b101010: salidaAC = 3'b111; // slt
                default:   salidaAC = 3'b010;
            endcase
        end
    endcase


end
endmodule 
