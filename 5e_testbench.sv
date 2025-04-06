//5(e). WAC to generate 32-bit variable with exactly 16 consecutive 1's, starting from LSB position without using $countones
class my_packet;
  rand bit [31:0] value;
  int start_pos; // It should not be random , so starting position=0 and it will start from it

  // Constraint to ensure exactly 16 consecutive 1's starting from a random position
  constraint consecutive_ones_constraint {
    //start_pos inside {[0:16]};                              // Valid start positions for 16 consecutive 1's
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
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Apr  6 11:25 2025
Randomized value: 00000000000000001111111111111111, Start position from LSB : 0
Randomized value: 00000000000000001111111111111111, Start position from LSB : 0
Randomized value: 00000000000000001111111111111111, Start position from LSB : 0
Randomized value: 00000000000000001111111111111111, Start position from LSB : 0
Randomized value: 00000000000000001111111111111111, Start position from LSB : 0
Randomized value: 00000000000000001111111111111111, Start position from LSB : 0
Randomized value: 00000000000000001111111111111111, Start position from LSB : 0
Randomized value: 00000000000000001111111111111111, Start position from LSB : 0
Randomized value: 00000000000000001111111111111111, Start position from LSB : 0
Randomized value: 00000000000000001111111111111111, Start position from LSB : 0
           V C S   S i m u l a t i o n   R e p o r t 
