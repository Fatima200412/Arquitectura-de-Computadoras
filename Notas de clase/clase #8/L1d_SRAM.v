// HERNANDEZ BARAJAS FATIMA LISETTE
// ARQUITECTURA DE COMPUTADORAS
// L1d SRAM

//1. creacion del modulo inputs y outputs
module L1d_sram(
    input  [6:0]  Address,
    input  [31:0] WriteData,
    input         We,   // escribir
    input         Re,   // leer
    output reg [31:0] ReadData
);

//2. definicion de registros y cables(n/a)
reg [31:0] sram [0:127];

//3. cuerpo del modulo, assigns(na), instancias(n/a), bloques secuenciales
// inicializacion de memoria
initial
begin
    sram[0] = 32'd100;
    sram[1] = 32'd200;
    sram[2] = 32'd300;
    sram[3] = 32'd400;
    sram[4] = 32'd500;
    sram[5] = 32'd600;
    sram[6] = 32'd700;
end

always @(*)
begin
    case ({We, Re})
        2'b10: sram[Address] = WriteData;
        2'b01: ReadData = sram[Address];
        default: ReadData = 32'd0;
    endcase
end

endmodule