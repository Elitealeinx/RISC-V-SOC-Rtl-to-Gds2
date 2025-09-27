module dff_sync_async(
    input wire clk,
    input wire d,
    input wire sync_rst,    
    input wire async_rst,    
    output reg q
);
    always @(posedge clk or posedge async_rst) begin
        if (async_rst)
            q <= 1'b0;
        else begin
            if (sync_rst)
                q <= 1'b0;
            else
                q <= d;
        end
    end
endmodule

