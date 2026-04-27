`timescale 1ns/1ps
`include "Modulo4bits.v"

module sumador_tb;

reg  [3:0] A_tb;
reg  [3:0] B_tb;
reg  sel_tb;
wire [3:0] So_tb;
wire Co_tb;

integer i, j, k;

// Instancia
Sumador_Restador uut(
    .A(A_tb),
    .B(B_tb),
    .sel(sel_tb),
    .So(So_tb),
    .Co(Co_tb)
);

// Estímulos automáticos (prueba TODO)
initial begin
    
    for (k = 0; k < 2; k = k + 1) begin       // 0 = suma, 1 = resta
        for (i = 0; i < 16; i = i + 1) begin  // A
            for (j = 0; j < 16; j = j + 1) begin // B
                A_tb = i;
                B_tb = j;
                sel_tb = k;
                #10;
            end
        end
    end

    $finish;
end

// Archivo de ondas
initial begin
    $dumpfile("Simulacion.vcd");
    $dumpvars(0, sumador_tb);
end

endmodule