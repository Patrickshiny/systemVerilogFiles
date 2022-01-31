module top_module( 
    input logic[99:0] in,
    output logic[99:0] out
);
    integer count;
    always_comb
        begin
            for(count = 0; count <=99; count++)
                out[count] = in[99-count];
        end
endmodule
