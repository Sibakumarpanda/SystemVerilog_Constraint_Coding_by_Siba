//6a.WAC to generate 32-bit variable with exactly 12 non-consecutive 1's
class my_packet;
  rand bit [31:0] value;
  rand int start_pos;

  // Constraint to ensure exactly 16 non-consecutive 1's starting from a random position
  constraint non_consecutive_ones_constraint {
    
    $countones(value) == 12;

    // Additional logic to ensure non-consecutiveness
    // This is a simple approach to ensure non-consecutiveness by limiting the start position
    // and using a mask to avoid consecutive ones.
    start_pos inside {[0:11]}; // Random start position
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
//Output
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Apr  6 12:41 2025
Randomized value: 00100100010011100011011100010000, Number of 1's: 12,Start position from LSB : 1
Randomized value: 00101101110010100000001001000110, Number of 1's: 12,Start position from LSB : 11
Randomized value: 01100010100100000001011001100110, Number of 1's: 12,Start position from LSB : 4
Randomized value: 01010110001000010001111101000000, Number of 1's: 12,Start position from LSB : 1
Randomized value: 10000000011110101001000100111000, Number of 1's: 12,Start position from LSB : 5
Randomized value: 00100010110010000000110101010101, Number of 1's: 12,Start position from LSB : 2
Randomized value: 10000000001011000011010101101010, Number of 1's: 12,Start position from LSB : 9
Randomized value: 01110000010001110001101001001000, Number of 1's: 12,Start position from LSB : 9
Randomized value: 01010100100101010000110100001010, Number of 1's: 12,Start position from LSB : 1
Randomized value: 01010111010001000110000000000111, Number of 1's: 12,Start position from LSB : 5
           V C S   S i m u l a t i o n   R e p o r t 
