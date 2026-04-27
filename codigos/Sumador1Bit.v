module Sumador1bit(
    input A,
    input B,
    input C,
    output So,
    output Co
);

wire C1;
wire C2;
wire C3;

assign C1 = (A^B);
assign So = (C1^C);
assign C2= C1 & C;
assign C3= A & B;
assign Co= C2 | C3;

endmodule
