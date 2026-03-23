//HERNANDEZ BARAJAS FATIMA LISETTE 
//ARQUITECTURA DE COMPUTADORAS 
//MODULO QUE INSTANCIA ram demux y alu

//CREACION DEL MODULO con entradas y salidas 

module taco(
    input [4:0] addr,
    input [31:0] data_in,
    input EN,
    input [3:0] alu_op,
    input sel,
    output [31:0] data_out,
    output [31:0] ALUOut
);

// declaracion de cables o registros 

wire [31:0] ram_data;
wire [31:0] demux_out0;
wire [31:0] demux_out1;
wire zero;

reg[31:0]opA;
reg[31:0]opB;

ram U1(
    .addr(addr),
    .data_in(data_in),
    .EN(EN),
    .data_out(ram_data)
);

demux U2(
    .data_in(ram_data),
    .sel(sel),
    .out0(demux_out0),
    .out1(demux_out1)
);

always @(demux_out0,demux_out1,sel)
begin 
    if(sel == 1'b0)
    opA = demux_out0;
    else
    opB = demux_out1;
end 

alu U3(
    .ALUctl(alu_op),
    .A(opA),
    .B(opB),
    .ALUOut(ALUOut),
    .Zero(zero)
);

assign data_out = ram_data;

endmodule 