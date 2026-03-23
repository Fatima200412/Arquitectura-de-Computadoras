//Hernandez Barajas Fatima lisette
//Arquitectura de computadoras
//taco_tb

//creacion e inicializacion del modulo
module taco_tb;

//declaracion de wires y registros 
reg [4:0] addr;
reg[31:0] data_in;
reg EN;
reg [3:0] alu_op;
reg sel;
wire [31:0] data_out;
wire [31:0] alu_result;
//cuerpo del modulo e istancias initial

taco DUV (
    .addr(addr),
    .data_in(data_in),
    .EN(EN),
    .alu_op(alu_op),
    .sel(sel),
    .data_out(data_out),
    .ALUOut(alu_result)
);

initial 
begin 
    //escribir en la ram

    addr = 5'd0; data_in = 32'd10; EN = 1'b1; alu_op = 4'b0010; sel = 1'b0;#100;
    addr = 5'd1; data_in = 32'd5;  EN = 1'b1; alu_op = 4'b0010; sel = 1'b1;#100;
    addr = 5'd2; data_in = 32'd26; EN = 1'b1; alu_op = 4'b0010; sel = 1'b1;#100;
    addr = 5'd3; data_in = 32'd12; EN = 1'b1; alu_op = 4'b0010; sel = 1'b1;#100;
    addr = 5'd4; data_in = 32'd2004; EN = 1'b1; alu_op = 4'b0010; sel = 1'b1;#100;
    addr = 5'd10; data_in = 32'd26; EN = 1'b1; alu_op = 4'b0010; sel = 1'b1;#100;
    addr = 5'd20; data_in = 32'd15; EN = 1'b1; alu_op = 4'b0010; sel = 1'b1;#100;
    addr = 5'd15; data_in = 32'd26; EN = 1'b1; alu_op = 4'b0010; sel = 1'b1;#100;
    addr = 5'd31; data_in = 32'd31; EN = 1'b1; alu_op = 4'b0010; sel = 1'b1;#100;
    
    //desactivar escritura
    EN = 1'b0;#100;

    //lectura en ram
    addr = 5'd0; sel = 1'b0;#100;
    addr = 5'd1; sel = 1'b1;#100;
    addr = 5'd2; sel = 1'b1;#100;
    addr = 5'd3; sel = 1'b1;#100;
    addr = 5'd4; sel = 1'b1;#100;
    addr = 5'd10; sel = 1'b1;#100;
    addr = 5'd15; sel = 1'b1;#100;
    addr = 5'd20; sel = 1'b1;#100;
    addr = 5'd31; sel = 1'b1;#100;
    // operaciones alu
    alu_op = 4'b0010;#100; // suma
    alu_op = 4'b0110;#100; // resta
    alu_op = 4'b0000;#100; // and
    alu_op = 4'b0010;#100; // suma
    alu_op = 4'b0001;#100; // or
    alu_op = 4'b0111;#100; // slt
    alu_op = 4'b1100;#100; // nor


    //demux
    addr = 5'd0; sel = 1'b1;#100;
    addr = 5'd1; sel = 1'b0;#100;
    alu_op = 4'b0010;#100;

    $stop;
end 
endmodule 
    