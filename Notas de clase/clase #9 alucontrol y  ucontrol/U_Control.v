/* 
Fatima Lisette Hernandez Barajas 
Arquitectura de computadoras 
MODULO ALU CONTROL
*/

//1. creando modulo
module U_Control(
    input [5:0] op,
    output  reg memToReg,
    output reg memToWrite,
    output reg memToRead,
    output reg [2:0]aluOp,
    output reg regWrite
);

//2. componentes internos regs y wires n/a

//3. asignaciones na, instancias na, bloques secuenciales

always @(*)
    begin
        case(op)
        6'b000000:
        begin
            memToReg   = 1'b0;
            memToWrite = 1'b0;
            aluOp      = 3'b010;
            regWrite   = 1'b1;
        end

        default:
        begin
            memToReg   = 1'b0;
            memToWrite = 1'b0;
            aluOp      = 3'b000;
            regWrite   = 1'b0;
        end
    endcase
    end

endmodule 