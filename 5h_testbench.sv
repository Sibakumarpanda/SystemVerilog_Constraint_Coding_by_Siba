//5(h).WAC to generate 32-bit variable with exactly 16 Non-consecutive 1's, starting from LSB position with using $countones
class my_packet;
  rand bit [31:0] value;
  // Constraint to ensure exactly 16 non-consecutive 1's starting from LSB
  constraint non_consecutive_ones_constraint {
    // Ensure there are exactly 16 ones in the value
    $countones(value) == 16;

    // Ensure non-consecutiveness by avoiding consecutive 1's
    // This can be done by ensuring that no two adjacent bits are both 1
    foreach (value[i]) {
      if (i > 0) {
        // Ensure that if the current bit is 1, the previous bit is 0
        !(value[i] && value[i-1]);
      }
    }
  }
endclass

module tb_top;
  initial begin
    my_packet pkt = new();
    
    for (int i = 0; i < 10; i++) begin
      assert(pkt.randomize()) else $fatal("Randomization failed");
      $display("Randomized value: %b, Number of 1's: %0d", pkt.value, $countones(pkt.value));
    end
  end
endmodule
//Output
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Apr  6 11:45 2025
Randomized value: 10101010101010101010101010101001, Number of 1's: 16
Randomized value: 10101010101010101010010101010101, Number of 1's: 16
Randomized value: 10101010101010101010010101010101, Number of 1's: 16
Randomized value: 10101010101010101010100101010101, Number of 1's: 16
Randomized value: 10101010101010101010101010101001, Number of 1's: 16
Randomized value: 10101010101010101010010101010101, Number of 1's: 16
Randomized value: 10101010101010101010101010101001, Number of 1's: 16
Randomized value: 10101010101010101010010101010101, Number of 1's: 16
Randomized value: 01010101010101010101010101010101, Number of 1's: 16
Randomized value: 10101010101010101010100101010101, Number of 1's: 16
           V C S   S i m u l a t i o n   R e p o r t      
