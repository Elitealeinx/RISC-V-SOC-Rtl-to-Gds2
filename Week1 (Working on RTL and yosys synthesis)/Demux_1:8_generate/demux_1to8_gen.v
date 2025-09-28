
module demux_1to8_gen (output reg [7:0] out , input [2:0] sel  , input i);
integer k;
always @ (*)
begin
out = 8'b0;
for(k = 0; k < 8; k++) begin
	if(k == sel)
		out[k] = i;
end
end
endmodule


