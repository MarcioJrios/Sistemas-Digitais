module testbench;
	reg [6:0] clk;
	reg [8:0] px;
	reg [8:0] py;
	reg [8:0] ax;
    	reg [8:0] bx;
    	reg [8:0] cx;
    	reg [8:0] ay;
    	reg [8:0] by;
    	reg [8:0] cy;
	reg [17:0] total;
    	wire S;
    
    triangulo P(clk, ax, bx, cx, ay, by, cy, total, S);
always @(posedge clk) begin
	if(py < 20) begin
		
		py = py+1;
	end
	else begin
		px = px+1;
		py = 0;
	end
end
	
initial begin
		$dumpvars;
		#1
		clk<=1;
		ax<=3;
		ay<=3;
		bx<=6;
		by<=12;
		cx<=9;
		cy<=8;
		px<=0;
		py<=0;
end

endmodule
