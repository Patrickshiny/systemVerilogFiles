module top_module(
    input logic a,
    input logic b,
    input logic sel_b1,
    input logic sel_b2,
    output logic out_assign,
    output logic out_always   ); 

    assign out_assign = (sel_b1 == 1'b1 & sel_b2 == 1'b1)?b:a;
    
    always @(*) begin
        if (sel_b1 == 1'b1 & sel_b2 == 1'b1)begin
            out_always = b;
    	end
    	else begin
            out_always = a;
        end
    end
    
endmodule
