
`default_nettype none
module top_module(
    input logic a,
    input logic b,
    input logic c,
    input logic d,
    output logic out,
    output logic out_n   ); 
  
  assign out = (a & b) | (c & d);
  assign out_n = ~((a & b) | (c & d));
  
endmodule
