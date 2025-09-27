`timescale 1ns/1ps

module dff_async_tb;
    reg clk;
    reg d;
    reg rst;
    wire q;

    dff_async uut (
        .clk(clk),
        .d(d),
        .rst(rst),
        .q(q)
    );

    always #5 clk = ~clk;

    initial begin
        $dumpfile("dff_async_tb.vcd");
        $dumpvars(0, dff_async_tb);
        clk =0;
        rst = 0;  d = 1; #15
        rst = 1;  d = 1; #12
        rst = 0;  d = 1; #16
        rst = 0;  d = 1; #5
        rst = 1;  d = 0; #7
        rst = 0;  d = 0; #8
        $finish;
  end
endmodule


