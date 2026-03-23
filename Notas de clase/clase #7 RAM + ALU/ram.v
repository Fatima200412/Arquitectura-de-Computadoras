//FATIMA LISETTE HERNANDEZ BARAJAS 
//Actividad RAM 
// 22/03/2026

//creacion del modulo entradas y salidas 
module ram(
    input [4:0] addr,
    input [31:0] data_in,
    input EN,
    output [31:0] data_out
);

//declaracion de componentes internos, wires y regs
reg [31:0] MEM [0:31];

//asignaciones a memoria 
initial 
    begin 
    MEM[0] = 32'd0;
    MEM[1] = 32'd0;
    MEM[2] = 32'd0;
    MEM[3] = 32'd0;
    MEM[4] = 32'd0;
    MEM[5] = 32'd0;
    MEM[6] = 32'd0;
    MEM[7] = 32'd0;
    MEM[8] = 32'd0;
    MEM[9] = 32'd0;
    MEM[10] = 32'd0;
    MEM[11] = 32'd0;
    MEM[12] = 32'd0;
    MEM[13] = 32'd0;
    MEM[14] = 32'd0;
    MEM[15] = 32'd0;
    MEM[16] = 32'd0;
    MEM[17] = 32'd0;
    MEM[18] = 32'd0;
    MEM[19] = 32'd0;
    MEM[20] = 32'd0;
    MEM[21] = 32'd0;
    MEM[22] = 32'd0;
    MEM[23] = 32'd0;
    MEM[24] = 32'd0;
    MEM[25] = 32'd0;
    MEM[26] = 32'd0;
    MEM[27] = 32'd0;
    MEM[28] = 32'd0;
    MEM[29] = 32'd0;
    MEM[30] = 32'd0;
    MEM[31] = 32'd0;
end

always@(EN,addr,data_in)
 begin
    if(EN)
        MEM[addr] = data_in;
 end

 assign data_out = MEM[addr];
 
endmodule

