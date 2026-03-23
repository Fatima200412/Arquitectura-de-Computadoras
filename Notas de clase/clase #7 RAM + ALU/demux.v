//HERNANDEZ BARAJAS FATIMA LISETTE 
//ARQUITECTURA DE COMPUTADORAS

module demux(
    input [31:0] data_in,
    input sel,
    output reg [31:0] out0,
    output reg [31:0] out1
);

always @(*)
    begin 
        if(sel == 1'b0)
        begin 
            out0 = data_in;
            out1 = 32'd0;
        end
        else
            begin
                out0 = 32'd0;
                out1 = data_in;
            end
        end 
endmodule 