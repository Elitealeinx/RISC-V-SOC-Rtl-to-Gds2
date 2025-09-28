
module full_adder (
    input  wire a,  
    input  wire b,    
    input  wire c,    
    output wire sum,  
    output wire co     
);

    assign sum = a ^ b ^ c;
    assign co  = (a & b) | (b & c) | (a & c);

endmodule




module ripple_carry_adder_8bit (input [7:0] A , input [7:0] B , output [8:0] sum);
wire [7:0] int_sum;
wire [7:0]int_co;

genvar i;
generate
	for (i = 1 ; i < 8; i=i+1) begin
		full_adder u1 (.a(A[i]),.b(B[i]),.c(int_co[i-1]),.co(int_co[i]),.sum(int_sum[i]));
	end

endgenerate
full_adder u2 (.a(A[0]),.b(B[0]),.c(1'b0),.co(int_co[0]),.sum(int_sum[0]));


assign sum[7:0] = int_sum;
assign sum[8] = int_co[7];
endmodule

