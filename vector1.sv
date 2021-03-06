`default_nettype none     // Disable implicit nets. Reduces some types of bugs.
module top_module( 
    input logic [15:0] in,
    output logic [7:0] out_hi,
    output logic [7:0] out_lo );

    assign out_hi = in[15:8];
    assign out_lo = in[7:0];
    
endmodule
