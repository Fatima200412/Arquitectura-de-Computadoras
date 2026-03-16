`timescale 1ns/1ns
//Fatima Lisette Hernandez Barajas 
//arquitectura de computadoras
//Implementacion de una ALU
//32 bits con 2 buses de 16

//1 creacion del modulo, definicion entradas y salidas 
module ALU(
    input [15:0] A,
    input [15:0] B,
    input [3:0] ALUControl,
    output[15:0] Result,
    output Cout,
    output Zero
);

//2 definicion de componentes internos (registros y cables)
//cables para operaciones logicas 
wire [15:0] and_res;
wire [15:0] or_res;
wire [15:0] nor_res;

//cables para suma/resta  
wire [15:0] Bsel;
wire [15:0] suma_res;
wire sub; 

wire c1, c2, c3, c4, c5, c6, c7, c8;
wire c9, c10, c11, c12, c13, c14, c15, c16;

//3 cuerpo del modulo asignaciones, instancias, bloques 
//operaciones logicas 
assign and_res = A & B;
assign or_res  = A | B;
assign nor_res = ~(A | B);

//control de resta 
assign sub  = (ALUControl == 4'b0110);    //si ALUcontrol = 0110 se resta  
assign Bsel = sub ? ~B : B;              // A - B = A + (~B) + 1

//Sumador 
FA F0  (.A(A[0]),  .B(Bsel[0]),  .AE(sub), .SUMA(suma_res[0]),  .AS(c1));
FA F1  (.A(A[1]),  .B(Bsel[1]),  .AE(c1),  .SUMA(suma_res[1]),  .AS(c2));
FA F2  (.A(A[2]),  .B(Bsel[2]),  .AE(c2),  .SUMA(suma_res[2]),  .AS(c3));
FA F3  (.A(A[3]),  .B(Bsel[3]),  .AE(c3),  .SUMA(suma_res[3]),  .AS(c4));
FA F4  (.A(A[4]),  .B(Bsel[4]),  .AE(c4),  .SUMA(suma_res[4]),  .AS(c5));
FA F5  (.A(A[5]),  .B(Bsel[5]),  .AE(c5),  .SUMA(suma_res[5]),  .AS(c6));
FA F6  (.A(A[6]),  .B(Bsel[6]),  .AE(c6),  .SUMA(suma_res[6]),  .AS(c7));
FA F7  (.A(A[7]),  .B(Bsel[7]),  .AE(c7),  .SUMA(suma_res[7]),  .AS(c8));
FA F8  (.A(A[8]),  .B(Bsel[8]),  .AE(c8),  .SUMA(suma_res[8]),  .AS(c9));
FA F9  (.A(A[9]),  .B(Bsel[9]),  .AE(c9),  .SUMA(suma_res[9]),  .AS(c10));
FA F10 (.A(A[10]), .B(Bsel[10]), .AE(c10), .SUMA(suma_res[10]), .AS(c11));
FA F11 (.A(A[11]), .B(Bsel[11]), .AE(c11), .SUMA(suma_res[11]), .AS(c12));
FA F12 (.A(A[12]), .B(Bsel[12]), .AE(c12), .SUMA(suma_res[12]), .AS(c13));
FA F13 (.A(A[13]), .B(Bsel[13]), .AE(c13), .SUMA(suma_res[13]), .AS(c14));
FA F14 (.A(A[14]), .B(Bsel[14]), .AE(c14), .SUMA(suma_res[14]), .AS(c15));
FA F15 (.A(A[15]), .B(Bsel[15]), .AE(c15), .SUMA(suma_res[15]), .AS(c16));

// seleccion del resultado
// 0000 AND
// 0001 OR
// 0010 ADD
// 0110 SUB
// 1100 NOR

assign Result =
    (ALUControl == 4'b0000) ? and_res  :
    (ALUControl == 4'b0001) ? or_res   :
    (ALUControl == 4'b0010) ? suma_res :
    (ALUControl == 4'b0110) ? suma_res :
    (ALUControl == 4'b1100) ? nor_res  :
    16'b0000000000000000;

//cout para suma y resta 
assign Cout =
    (ALUControl == 4'b0010 || ALUControl == 4'b0110) ? c16 : 1'b0;

// Zero =1 si el resultado es 0
assign Zero = (Result == 16'b0000000000000000);

endmodule