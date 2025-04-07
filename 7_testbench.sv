//7.WAC to generate 62-bit variable with specific bit patterns (Ex: requirement is to have 31 consecutive 1's followed by 15 consecutive 0's followed by rest to be random values )
class my_packet;
  rand bit [61:0] pattern;

  constraint specific_pattern { // Set the first 31 bits to 1
    
    foreach (pattern[i]) {
      if (i < 31) {
        pattern[i] == 1;
      }
    }

    
    foreach (pattern[i]) {     // Set the next 15 bits to 0
      if (i >= 31 && i < 46) {
        pattern[i] == 0;
      }
    }

    // The remaining bits (from 46 to 61) are random
    // No specific constraint needed for these bits
  }
endclass
        
module tb_top;
  initial begin
    my_packet pkt = new();
   
    for (int i = 0; i < 10; i++) begin
      assert(pkt.randomize()) else $fatal("Randomization failed");
      $display("Randomized value: %b, Number of 1's: %0d", pkt.pattern, $countones(pkt.pattern));
    end
  end
endmodule
//Output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Apr  7 04:34 2025
Randomized value: 01110010001101010000000000000001111111111111111111111111111111, Number of 1's: 39
Randomized value: 11110011111101000000000000000001111111111111111111111111111111, Number of 1's: 42
Randomized value: 00001001011001100000000000000001111111111111111111111111111111, Number of 1's: 37
Randomized value: 10010110011010100000000000000001111111111111111111111111111111, Number of 1's: 39
Randomized value: 01111111000000010000000000000001111111111111111111111111111111, Number of 1's: 39
Randomized value: 00010011111001000000000000000001111111111111111111111111111111, Number of 1's: 38
Randomized value: 00110100010000010000000000000001111111111111111111111111111111, Number of 1's: 36
Randomized value: 11110010000111100000000000000001111111111111111111111111111111, Number of 1's: 40
Randomized value: 10101101001110100000000000000001111111111111111111111111111111, Number of 1's: 40
Randomized value: 00100011111010100000000000000001111111111111111111111111111111, Number of 1's: 39
           V C S   S i m u l a t i o n   R e p o r t       
