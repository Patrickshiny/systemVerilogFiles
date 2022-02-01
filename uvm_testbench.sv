`include "uvm_macros.svh"
`include "uvm_custom_pkg.svh"

module firstModule;
  import uvm_pkg::*;
  import uvm_custom_pkg::*;
  
  logic[254:0] currentIn;
  logic[7:0] currentOut;
  integer currentCount;
  
  top_module currentModule(.in(currentIn), .out(currentOut));
  
  initial
    begin
      for(currentCount=0;currentCount<=254;currentCount++)
        currentIn[currentCount] = 0;
      #10;
      for(currentCount=0;currentCount<=254;currentCount++)
        currentIn[currentCount] = 1;
    end  
endmodule
