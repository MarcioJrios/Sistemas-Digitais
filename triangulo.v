module triangulo(
   input clk,
   input [8:0] ax,
   input [8:0] bx,
   input [8:0] cx,
   input [8:0] ay,
   input [8:0] by,
   input [8:0] cy,
   output S
);
reg [17:0] AT = 0;
reg [17:0] TAB = 0;
reg [17:0] TAC = 0;
reg [17:0] TBC = 0;

area T(ax, bx, cx, ay, by, cy, AT);

area ab(ax, bx, px, ay, by, py, TAB);
area ac(ax, px, cx, ay, py, cy, TAC);
area bc(px, bx, cx, py, by, cy, TBC);

assign S = (TAB + TAC + TBC == AT) ? 1 : 0;

endmodule
