module area(
   input [8:0] ax,
   input [8:0] bx,
   input [8:0] cx,
   input [8:0] ay,
   input [8:0] by,
   input [8:0] cy,
   output [17:0] area
);

always @( ax or bx or cx or ay or by or cy ) begin
	area = ((ax * by) + (ay * cx) + (bx * cy)) - ((ay * bx) + (ax * cy) + (by * cx));
end
// 

endmodule
