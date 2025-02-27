//28.WAC to generate alternating pairs sum to 30
class packet_alternatingPair;
  rand int a[10]; 
  // Constraint to ensure alternating pairs sum up to 30
  constraint c1 {    
                  foreach (a[i]) {
                     if (i % 2 == 0) 
                          a[i] inside {[0:30]}; // First number in the pair
                     else                                          
                      a[i] == 30 - a[i-1]; // Second number in the pair
                      }
                }
  function void post_randomize();
    // Optionally, print the generated sequence
    $display("Generated sequence with alternating pairs summing to 30 are as below------->");
    foreach (a[i]) begin
      $write("%0d ", a[i]);
    end
    $display();
  endfunction        
endclass

module tb_top;  
  initial begin
    packet_alternatingPair pkt = new();    
    repeat(5) begin
    if (pkt.randomize()) begin  // The output is printed in the post_randomize function
    end else begin
      $display("Randomization failed.");
    end
    end
  end  
endmodule
//Output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Feb 26 22:02 2025
Generated sequence with alternating pairs summing to 30 are as below------->
0 30 14 16 16 14 27 3 5 25  
Generated sequence with alternating pairs summing to 30 are as below------->
24 6 15 15 3 27 7 23 26 4  
Generated sequence with alternating pairs summing to 30 are as below------->
27 3 2 28 12 18 2 28 0 30  
Generated sequence with alternating pairs summing to 30 are as below------->
16 14 24 6 18 12 23 7 9 21  
Generated sequence with alternating pairs summing to 30 are as below------->
1 29 28 2 1 29 28 2 20 10  
           V C S   S i m u l a t i o n   R e p o r t     
