module triangulo(
   input CLOCK_50,
   input [8:0] ax,
   input [8:0] bx,
   input [8:0] cx,
   input [8:0] ay,
   input [8:0] by,
   input [8:0] cy,
   output S
);

reg [8:0] px = 0;
reg [8:0] py = 0;
reg [8:0] AB = 0;
reg [8:0] AC = 0;
reg [8:0] BC = 0;

area T(ax, bx, cx, ay, by, cy, AT);


always @(posedge CLOCK_50) begin
	#dumpvars(S);
	if(py < 20) begin
		area ab(ax, bx, px, ay, by, py, TAB);
		area ac(ax, px, cx, ay, py, cy, TAC);
		area bc(px, bx, cx, py, by, cy, TBC);
		end
	if(TAB + TAC + TBC == AT) begin
		S = 1;
	end else begin
		S = 0;
	end
	
	py = py+1;
	end
		else begin
			px = px+1;
			py = 0;
		end
end

endmodule
