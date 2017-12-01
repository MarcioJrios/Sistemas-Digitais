module calcTotal(
	input [6:0] clk,
	input [17:0] TAB,
	input [17:0] TAC,
	input [17:0] TBC,
	output [17:0] total
);
	reg [17:0] Tl;
	assign total = Tl;
always @(posedge clk) begin
	Tl = TAB + TAC + TBC;
end

endmodule
