module dff_sync (
    input wire clk,
    input wire d,
    input wire rst,    // synchronous reset
    input wire set,    // synchronous set
    output reg q
);
    always @(posedge clk) begin
        if (rst)
            q <= 1'b0;
        else if (set)
            q <= 1'b1;
        else
            q <= d;
    end
endmodule
