
module opt_check (input a , input b , output y);
	assign y = a?b:0;
endmodule

module opt_check2 (input a , input b , output y);
	assign y = a?1:b;
endmodule

module opt_check3 (input a , input b, input c , output y);
	assign y = a?(c?b:0):0;
endmodule
