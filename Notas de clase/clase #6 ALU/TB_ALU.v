 `timescale 1ns/1ns
 // Hernandez Barajas Fatima Lisette
// Arquitectura de computadoras
// Testbench para ALU 

//1 creacion del modulo 
module TB_ALU;

//2 definicion de registros y wires 

reg [15:0] A_tb;
reg [15:0] B_tb;
reg [3:0] ALUControl_tb;
wire [15:0] Result_tb;
wire Cout_tb;
wire Zero_tb;

//3 instancias 

ALU DUV(
    .A(A_tb),
    .B(B_tb),
    .ALUControl(ALUControl_tb),
    .Result(Result_tb),
    .Cout(Cout_tb),
    .Zero(Zero_tb)
);

initial begin 

//tres pruebas por operacion

//AND (0000)
A_tb = 16'd5;   B_tb = 16'd9;   ALUControl_tb = 4'b0000;#100;
A_tb = 16'd15;  B_tb = 16'd3;   ALUControl_tb = 4'b0000;#100;
A_tb = 16'd10;  B_tb = 16'd12;  ALUControl_tb = 4'b0000;#100;

//OR(0001)
A_tb = 16'd5;   B_tb = 16'd9;   ALUControl_tb = 4'b0001;#100;
A_tb = 16'd15;  B_tb = 16'd3;   ALUControl_tb = 4'b0001;#100;
A_tb = 16'd10;  B_tb = 16'd12;  ALUControl_tb = 4'b0001;#100;

//ADD(0010)
A_tb = 16'd7;   B_tb = 16'd10;  ALUControl_tb = 4'b0010;#100;
A_tb = 16'd20;  B_tb = 16'd5;   ALUControl_tb = 4'b0010;#100;
A_tb = 16'd100; B_tb = 16'd50;  ALUControl_tb = 4'b0010;#100;

//SUB(0110)
A_tb = 16'd10;  B_tb = 16'd7;   ALUControl_tb = 4'b0110;#100;
A_tb = 16'd20;  B_tb = 16'd5;   ALUControl_tb = 4'b0110;#100;
A_tb = 16'd50;  B_tb = 16'd25;  ALUControl_tb = 4'b0110;#100;

//NOR(1100)
A_tb = 16'd5;   B_tb = 16'd9;   ALUControl_tb = 4'b1100;#100;
A_tb = 16'd15;  B_tb = 16'd3;   ALUControl_tb = 4'b1100;#100;
A_tb = 16'd10;  B_tb = 16'd12;  ALUControl_tb = 4'b1100;#100;

        $stop;

    end

endmodule