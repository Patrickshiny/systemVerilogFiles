module top_module(
    input logic[31:0] a,
    input logic[31:0] b,
    input logic sub,
    output logic[31:0] sum
);
    logic [31:0] xorResult;
    logic internalWire1, internalWire2;
    assign xorResult = b ^ {32{sub}};
    add16 add16Module1(.a(a[15:0]), .b(xorResult[15:0]), .cin(sub), .cout(internalWire1), .sum(sum[15:0]));
    add16 add16Module2(.a(a[31:16]), .b(xorResult[31:16]), .cin(internalWire1), .cout(internalWire2), .sum(sum[31:16]));
    
endmodule
