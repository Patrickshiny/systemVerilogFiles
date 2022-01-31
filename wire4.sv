module top_module( 
    input logic a,b,c,
    output logic w,x,y,z );

    // assign output_wire = input_wire;
    assign w = a;
    assign x = b;
    assign y = b;
    assign z = c;
    
endmodule
