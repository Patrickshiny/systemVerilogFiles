module top_module (
    input logic[3:0] in,
    output logic[1:0] pos  );
    always_comb
        begin
            case(in)
                4'b0000:
                    // pos = 2'd0;
                    pos = 2'b00;
                /* Method 1 */ // incorrect
                // (4'b0001 | 4'b0011 | 4'b0101 | 4'b1001 | 4'b1101 | 4'b1011 | 4'b0111 | 4'b1111):
                    // pos = 2'd0;
                    // pos = 2'b00;
                /* Method 1 */
                /* Method 2 */ // correct
                4'b0001:
                    pos = 2'b00;
                4'b0011:
                    pos = 2'b00;
                4'b0101:
                    pos = 2'b00;
                4'b1001:
                    pos = 2'b00;
                4'b1101:
                    pos = 2'b00;
                4'b1011:
                    pos = 2'b00;
                4'b0111:
		                pos = 2'b00;
                4'b1111:
                    pos = 2'b00;
                /* Method 2 */
                
                /* Method 1 */ // incorrect
                // (4'b0010 | 4'b0110 | 4'b1010 | 4'b1110):
                    // pos = 2'd1;
                    // pos = 2'b01;
                /* Method 1 */
                /* Method 2 */ // correct
                4'b0010:
                    pos = 2'b01;
                4'b0110:
                    pos = 2'b01;
                4'b1010:
                    pos = 2'b01;
                4'b1110:
                    pos = 2'b01;
                /* Method 2 */
                
                /* Method 1 */ // incorrect
                // (4'b0100 | 4'b1100):
                	// pos = 2'd2;
                    // pos = 2'b10;
                /* Method 1 */
                /* Method 2 */ // correct
                4'b0100:
                    pos = 2'b10;
                4'b1100:
                    pos = 2'b10;
                /* Method 2 */
                
                4'b1000:
                    // pos = 2'd3;
	                  pos = 2'b11;
                    default:
                    pos = 2'd0;
            endcase
        end
endmodule
