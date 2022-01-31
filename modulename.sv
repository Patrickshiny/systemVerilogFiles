module top_module ( 
    input logic a, 
    input logic b, 
    input logic c,
    input logic d,
    output logic out1,
    output logic out2
);

    mod_a instance1(.out1(out1), .in1(a), .in2(b), .in3(c), .out2(out2), .in4(d));
    
endmodule
