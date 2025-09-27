`timescale 1ns/1ps

module dff_sync_tb;
    reg clk;
    reg d;
    reg rst;
    reg set;
    wire q;

    dff_sync uut (
        .clk(clk),
        .d(d),
        .rst(rst),
        .set(set),
        .q(q)
    );

    always #5 clk = ~clk;

    initial begin
        $dumpfile("dff_sync_tb.vcd");
        $dumpvars(0, dff_sync_tb);
        clk =0;
        rst = 0; set = 0; d = 1; #15
        rst = 1; set = 0; d = 1; #15
        rst = 0; set = 0; d = 1; #15
        rst = 0; set = 0; d = 1; #15
        rst = 0; set = 0; d = 0; #15
        rst = 0; set = 1; d = 0; #15
           $finish;
  end
endmodule

