//5d.WAC to generate 32-bit variable with exactly 16 consecutive 1's ,starting from random place without using $countones
class my_packet;
  rand bit [31:0] value;
  rand int start_pos; 

  // Constraint to ensure exactly 16 consecutive 1's starting from a random position
  constraint consecutive_ones_constraint {
    start_pos inside {[0:16]};                              // Valid start positions for 16 consecutive 1's
    value == ((32'hFFFF << start_pos) & 32'hFFFFFFFF);     // Shift 16 1's to the start position
    //$countones(value) == 16;                               // Ensure there are exactly 16 ones
  }

endclass

module tb_top;
  initial begin
    my_packet pkt = new();

    // Perform randomization
    for (int i = 0; i < 10; i++) begin
      assert(pkt.randomize()) 
        $display("Randomized value: %b, Start position from LSB : %0d", pkt.value, pkt.start_pos);
    end
  end
endmodule
//Output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Apr  6 11:31 2025
Randomized value: 00000000001111111111111111000000, Start position from LSB : 6
Randomized value: 00000011111111111111110000000000, Start position from LSB : 10
Randomized value: 00011111111111111110000000000000, Start position from LSB : 13
Randomized value: 00000001111111111111111000000000, Start position from LSB : 9
Randomized value: 00000000000011111111111111110000, Start position from LSB : 4
Randomized value: 00000111111111111111100000000000, Start position from LSB : 11
Randomized value: 00000000000000011111111111111110, Start position from LSB : 1
Randomized value: 00000011111111111111110000000000, Start position from LSB : 10
Randomized value: 11111111111111110000000000000000, Start position from LSB : 16
Randomized value: 00001111111111111111000000000000, Start position from LSB : 12
           V C S   S i m u l a t i o n   R e p o r t 
