//5(k).WAC to generate 32-bit variable with exactly 16 Non-consecutive 1's, starting from LSB position without using $countones

class my_packet;
  rand bit [31:0] pattern;

  constraint non_consecutive_ones {
    // Ensure exactly 16 ones
    (pattern[0] + pattern[1] + pattern[2] + pattern[3] +
     pattern[4] + pattern[5] + pattern[6] + pattern[7] +
     pattern[8] + pattern[9] + pattern[10] + pattern[11] +
     pattern[12] + pattern[13] + pattern[14] + pattern[15] +
     pattern[16] + pattern[17] + pattern[18] + pattern[19] +
     pattern[20] + pattern[21] + pattern[22] + pattern[23] +
     pattern[24] + pattern[25] + pattern[26] + pattern[27] +
     pattern[28] + pattern[29] + pattern[30] + pattern[31]) == 16;

    // Ensure non-consecutive ones starting from LSB
    foreach (pattern[i]) {
      if (i < 31) {
        pattern[i] -> pattern[i+1] == 0;
      }
    }

    // Ensure the first bit is 1 to start from LSB
    pattern[0] == 1;
  }
endclass
      
module tb_top;
  initial begin
    my_packet pkt = new();
    // Perform randomization
    for (int i = 0; i < 10; i++) begin
      assert(pkt.randomize()) else $fatal("Randomization failed");
      $display("Randomized value: %b, Number of 1's: %0d", pkt.pattern, $countones(pkt.pattern));
    end
  end
endmodule  
//Output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Apr  7 04:31 2025
Randomized value: 10101010101010101010101010101001, Number of 1's: 16
Randomized value: 10101010101010101010010101010101, Number of 1's: 16
Randomized value: 10101010101010101010010101010101, Number of 1's: 16
Randomized value: 10101010101010101010100101010101, Number of 1's: 16
Randomized value: 10101010101010101010101010101001, Number of 1's: 16
Randomized value: 10101010101010101010010101010101, Number of 1's: 16
Randomized value: 10101010101010101010101010100101, Number of 1's: 16
Randomized value: 10101010101010101010010101010101, Number of 1's: 16
Randomized value: 01010101010101010101010101010101, Number of 1's: 16
Randomized value: 10101010101010101010100101010101, Number of 1's: 16
           V C S   S i m u l a t i o n   R e p o r t     
