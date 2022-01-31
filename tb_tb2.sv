`timescale 1ps/1ps

module top_module();
    logic currentClk;
    logic currentIn;
    logic [2:0]currentS;
    logic currentOut;
    
    q7 currentQ7(.clk(currentClk), .in(currentIn), .s(currentS), .out(currentOut));
  
      initial 
        begin
            currentClk = 1'b0;
            forever #5 currentClk = ~currentClk;
        end
    
    initial
        begin
            currentIn = 1'b0;
            currentS = 3'd2;
            #10;
            currentS = 3'd6;
            #10;
            currentIn = 1'b1;
            currentS = 3'd2;
            #10;
            currentIn = 1'b0;
            currentS = 3'd7;
            #10;
            currentIn = 1'b1;
            currentS = 3'd0;
            #30;
            currentIn = 1'b0;
            #10;
        end
endmodule
