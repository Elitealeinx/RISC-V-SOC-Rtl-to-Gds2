

`timescale 1ns / 1ps
module demux_1to8_gen_tb;
	reg i;
	reg [2:0] sel;
	reg clk,reset;
	wire [7:0] out;
	demux_1to8_gen uut (
		.sel(sel),
		.out(out),
		.i(i)
	);

	initial begin
	$dumpfile("demux_1to8_gen_tb.vcd");
	$dumpvars(0,demux_1to8_gen_tb);
	i = 1'b0;
	clk = 1'b0;
	reset = 1'b0 ;  #1;
	reset = 1'b1 ;  #10;
	reset = 1'b0;

	#3900 $finish;
	end

always #17 i = ~i;
always #300 clk = ~clk;

always @ (posedge clk , posedge reset)
begin
	if(reset)
		sel <= 3'b000;
	else
		sel <= sel + 1;
end

endmodule


