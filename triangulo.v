module piscaleds(
input CLOCK_50, 
output S,
);


reg [8:0] ax = 12;
reg [8:0] ay = 5;
reg [8:0] bx = 5;
reg [8:0] by = 16;
reg [8:0] cx = 2;
reg [8:0] cy = 2;
reg [8:0] px = 0;
reg [8:0] py = 0;
reg [8:0] area = 0;
reg [8:0] AB = 0;
reg [8:0] AC = 0;
reg [8:0] BC = 0;

area T(..., AT);
area t1(..., at1);
area t2(..., at2);
area t3(..., at3;

assign S = AT == at1 + at2 + a3;

initial begin
	A = ((ax * by) + (ay * cx) + (bx * cy)) - ((ay * bx) + (ax * cy) + (by * cx));
	if(area < 0) begin
		area = -area;
	end
end

always @(posedge CLOCK_50) begin
	if(py < 20) begin
		AB = ((ax * by) + (ay * px) + (bx * py)) - ((ay * bx) + (ax * py) + (by * px));
		if(AB < 0) begin
			AB = -AB;
		end
		AC = ((ax * py) + (ay * cx) + (px * cy)) - ((ay * px) + (ax * cy) + (py * cx));
		if(AC < 0) begin
			AC = -AC;
		end
		BC = ((px * by) + (py * cx) + (bx * cy)) - ((py * bx) + (px * cy) + (by * cx));
		if(BC < 0) begin
			BC = -BC;
		end
	if(AB + AC + BC == area) begin
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
