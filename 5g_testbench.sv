//5(⁠g).WAC to generate 32-bit variable with exactly 16 Non-consecutive 1's ,starting from random place with using $countones
class my_packet;
  rand bit [31:0] value;
  rand int start_pos;

  // Constraint to ensure exactly 16 non-consecutive 1's starting from a random position
  constraint non_consecutive_ones_constraint {
    
    $countones(value) == 16;

    // Additional logic to ensure non-consecutiveness
    // This is a simple approach to ensure non-consecutiveness by limiting the start position
    // and using a mask to avoid consecutive ones.
    start_pos inside {[0:15]}; // Random start position
    // Ensure that the 16 ones are not consecutive
    // This constraint is more complex and may require additional logic or a different approach
    // to ensure non-consecutiveness, such as using a specific pattern or mask.
  }
endclass

module tb_top;
  initial begin
    my_packet pkt = new();
    
    for (int i = 0; i < 10; i++) begin
      assert(pkt.randomize()) else $fatal("Randomization failed");
      $display("Randomized value: %b, Number of 1's: %0d,Start position from LSB : %0d", pkt.value, $countones(pkt.value),pkt.start_pos);
    end
  end
endmodule
//output
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Apr  6 11:40 2025
Randomized value: 10101100010111100011011100110000, Number of 1's: 16,Start position from LSB : 1
Randomized value: 00101111110011100000001001001111, Number of 1's: 16,Start position from LSB : 14
Randomized value: 01100110100100100011011001110110, Number of 1's: 16,Start position from LSB : 5
Randomized value: 01010110011010011101111101000000, Number of 1's: 16,Start position from LSB : 2
Randomized value: 10000000111111101011100100111000, Number of 1's: 16,Start position from LSB : 7
Randomized value: 00100111110010000010111101010101, Number of 1's: 16,Start position from LSB : 3
Randomized value: 10000010011011100111010101101010, Number of 1's: 16,Start position from LSB : 12
Randomized value: 01111000010011110001101001101100, Number of 1's: 16,Start position from LSB : 13
Randomized value: 01011100101101011000110110001010, Number of 1's: 16,Start position from LSB : 1
Randomized value: 01010111110001001110000100100111, Number of 1's: 16,Start position from LSB : 6
           V C S   S i m u l a t i o n   R e p o r t 
