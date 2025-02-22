//11_WAC to generate 33-bit variable with specific bit patterns(requirement is to have 16 consecutive 1's followed by 16 consecutive 0's followed by rest to be 1's )
// 16 ones, 16 zeros, 1 one - 1_0000000000000000_11111111111111111

class specific_bit_pattern;
  rand bit [32:0] a; // 33-bit variable
  //constraint c1 { a == {1'b1, 16'b0, 16'b1}; }   
  constraint c4 {$countones(a[32])==1;}
  constraint c2 {$countones(a[31:16])==0;}
  constraint c1 {$countones(a)==17;}
  
  function void post_randomize();
    $display("Generated pattern: %b", a);
  endfunction
  
endclass

module tb_top;  
  initial begin    
    specific_bit_pattern ptrn = new();    
    repeat (5) begin
    if (ptrn.randomize()) begin
    end 
      else begin
      $display("Randomization failed.");
    end     
  end    
  end  
endmodule
