module triangulo(
   input [6:0] clk,
   input [8:0] ax,
   input [8:0] bx,
   input [8:0] cx,
   input [8:0] ay,
   input [8:0] by,
   input [8:0] cy,
   input [17:0] total,
   output S
);
wire [17:0] at;
wire [17:0] tab;
wire [17:0] tac;
wire [17:0] tbc;
reg [17:0] AT = 0;
reg [17:0] TAB = 0;
reg [17:0] TAC = 0;
reg [17:0] TBC = 0;



area T(ax, bx, cx, ay, by, cy, at);

area ab(ax, bx, px, ay, by, py, tab);
area ac(ax, px, cx, ay, py, cy, tac);
area bc(px, bx, cx, py, by, cy, tbc);
calcTotal Tl(clk, TAB, TAC, TBC, total);
assign S = (total == AT) ? 1 : 0;

endmodule
