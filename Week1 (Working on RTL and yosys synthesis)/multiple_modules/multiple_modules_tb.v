`timescale 1ns / 1ps
module multiple_modules_tb;
	// Inputs
	reg a,b,c;
	// Outputs
	wire y;

        // Instantiate the Unit Under Test (UUT)
	multiple_modules uut (
		.a(a),
		.b(b),
		.c(c),
		.y(y)
	);

	initial begin
	$dumpfile("multiple_modules_tb.vcd");
	$dumpvars(0,multiple_modules_tb);
	// Initialize Inputs
	a = 0;
	b = 0;
	c = 0;
	#300 $finish;
	end

always #10 a = ~a;
always #55 b = ~b;
always #75 c = ~c;
endmodule
