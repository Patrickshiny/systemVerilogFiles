module top_module( 
    input logic[99:0] a, b,
    input logic cin,
    output logic[99:0] cout,
    output logic[99:0] sum );
    always @(*) // from truth table
        begin
            {cout[0], sum[0]} = a[0] + b[0] + cin; 
            for(int currentCount=1; currentCount<=99; currentCount++)
                begin
                    {cout[currentCount], sum[currentCount]} = a[currentCount] + b[currentCount] + cout[currentCount - 1];
                end
        end
endmodule
