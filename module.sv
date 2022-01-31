module top_module ( input logic a, input logic b, output logic out );

    /* Method 1 */
    // mod_a modInstance1(a, b, out);
    /* Method 1 */
    
    /* Method 2 */
    mod_a modInstance2(.out(out), .in1(a), .in2(b));
    /* Method 2 */
    
endmodule
