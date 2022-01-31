module top_module (
    input logic[31:0] a,
    input logic[31:0] b,
    output logic[31:0] sum
);//
  
    logic internalWire1,internalWire2;
    add16 add16Module1(.a(a[15:0]), .b(b[15:0]), .cin(1'b0), .sum(sum[15:0]), .cout(internalWire1));
    add16 add16Module2(.a(a[31:16]), .b(b[31:16]), .cin(internalWire1), .sum(sum[31:16]), .cout(internalWire2));
  
endmodule

module add1 ( input logic a, input logic b, input logic cin, output logic sum, output logic cout );
    assign sum = (~a & ~b & cin) | (~a & b & ~cin) | (a & ~b & ~cin) | (a & b & cin);
    assign cout = (~a & b & cin) | (a & ~b & cin) | (a & b & ~cin) | (a & b & cin);
endmodule
