(* top = 1 *)
(* src = "and_gate.v:2.1-8.10" *)
module and_gate(a, b, y);
    (* src = "and_gate.v:3.16-3.17" *)
    wire _0_;
    (* src = "and_gate.v:4.16-4.17" *)
    wire _1_;
    (* src = "and_gate.v:5.17-5.18" *)
    wire _2_;
    (* src = "and_gate.v:3.16-3.17" *)
    input a;
    wire a;
    (* src = "and_gate.v:4.16-4.17" *)
    input b;
    wire b;
    (* src = "and_gate.v:5.17-5.18" *)
    output y;
    wire y;
    sky130_fd_sc_hd__and2_0 _3_ (
        .A(_1_),
        .B(_0_),
        .X(_2_)
    );
    assign _1_ = b;
    assign _0_ = a;
    assign y = _2_;
endmodule
