`include "Sumador1bit.v"

module Sumador_Restador(

    input  [3:0] A,
    input  [3:0] B,
    input  sel,
    output [3:0] So,
    output Co
    
);

    wire C1;
    wire C2;
    wire C3;
    wire C4;
    wire C5;
    wire C6;
    wire C7;

    // XOR para complemento a 1
    assign C4 = B[0] ^ sel;
    assign C5 = B[1] ^ sel;
    assign C6 = B[2] ^ sel;
    assign C7 = B[3] ^ sel;


Sumador1bit modulo_de_0(
    .A(A[0]),
    .B(C4),
    .C(sel),
    .So(So[0]),
    .Co(C1)
);

Sumador1bit modulo_de_1(
    .A(A[1]),
    .B(C5),
    .C(C1),
    .So(So[1]),
    .Co(C2)
);

Sumador1bit modulo_de_2(
    .A(A[2]),
    .B(C6),
    .C(C2),
    .So(So[2]),
    .Co(C3)
);

Sumador1bit modulo_de_3(
    .A(A[3]),
    .B(C7),
    .C(C3),
    .So(So[3]),
    .Co(Co)
);

endmodule