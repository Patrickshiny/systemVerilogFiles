module top_module( 
    input logic[3:0] in,
    output logic out_and,
    output logic out_or,
    output logic out_xor
);
    // assign out_and = ((in[0:0] & in[1:1]) & in[2:2]) & in[3:3];
    // assign out_and = in[0:0] & in[1:1] & in[2:2] & in[3:3];
    assign out_and = in[0:0] && in[1:1] && in[2:2] && in[3:3];
    // assign out_or = ((in[0:0] | in[1:1]) | in[2:2]) | in[3:3];
    assign out_or = in[0:0] || in[1:1] || in[2:2] || in[3:3];
    // assign out_xor = ((in[0:0] ^ in[1:1]) ^ in[2:2]) ^ in[3:3];
    assign out_xor = in[0:0] ^^ in[1:1] ^^ in[2:2] ^^ in[3:3];

    /* Method 2 */ // correct
    // assign out_and = &in[3:0];
    // assign out_or = |in[3:0];
    // assign out_xor = ^in[3:0];
    /* Method 2 */ 
    
endmodule
