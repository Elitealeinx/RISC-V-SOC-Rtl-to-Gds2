module dff_async (
    input wire clk,
    input wire d,
    input wire rst,  
    output reg q
);
    always @(posedge clk or posedge rst) begin
        if (rst)
            q <= 1'b0;
        else
            q <= d;
    end
endmodule

