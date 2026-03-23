//HERNANDEZ BARAJAS FATIMA LISETTE 
//ARQUITECTURA DE COMPUTADORAS 


// ALU DEL LIBRO

//creacion del modulo 
module alu(
    input [31:0] A,
    input [31:0] B,
    input [3:0] ALUctl,
    output reg [31:0] ALUOut,
    output Zero
    
);

//declaracion de registros o wires 
//no hay registros extras 

//asignaciones 

assign Zero = (ALUOut == 0);

always @(ALUctl,A,B)
    begin
    case(ALUctl)
        4'b0000: ALUOut = A & B;
        4'b0001: ALUOut = A | B;
        4'b0010: ALUOut = A + B;
        4'b0110: ALUOut = A - B;
        4'b0111: ALUOut = ($signed(A) < $signed(B)) ? 32'd1 : 32'd0;
        4'b1100: ALUOut = ~(A | B);
        default: ALUOut = 32'd0;
    endcase

    end

endmodule