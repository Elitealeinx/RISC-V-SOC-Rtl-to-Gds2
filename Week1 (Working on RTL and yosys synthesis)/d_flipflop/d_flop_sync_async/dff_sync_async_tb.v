`timescale 1ns/1ps

module dff_sync_async_tb;
    reg clk;
    reg d;
    reg sync_rst;
    reg async_rst;
    wire q;

    dff_sync_async uut (
        .clk(clk),
        .d(d),
        .sync_rst(sync_rst),
        .async_rst(async_rst),
        .q(q)
    );

    always #5 clk = ~clk;

    initial begin
        $dumpfile("dff_sync_async_tb.vcd");
        $dumpvars(0, dff_sync_async_tb);
       clk = 0;
       sync_rst = 0; async_rst = 0; d = 1; #13
       sync_rst = 1; async_rst = 0; d = 1; #14
       sync_rst = 0; async_rst = 0; d = 1; #15
       sync_rst = 0; async_rst = 0; d = 1; #8
       sync_rst = 0; async_rst = 1; d = 1; #5
       sync_rst = 0; async_rst = 0; d = 1; #10
       $finish; 
  end
endmodule
