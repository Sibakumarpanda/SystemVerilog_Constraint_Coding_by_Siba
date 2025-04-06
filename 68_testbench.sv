//68.Perform cyclic randomization with using rand keyword in system verilog class. Note that , you should not use randc keyword
class packet;
  rand int value;
  int unsigned cycle_length;
  int unsigned current_index;
  int unsigned values[];

  // Constructor to initialize the cycle length and values
  function new(int unsigned cycle_length, int unsigned values[]);
    this.cycle_length = cycle_length;
    this.values = values;
    this.current_index = 0;
  endfunction

  // Constraint to cycle through the values
  constraint cycle_constraint {
    value == values[current_index];
    }

  // Task to perform cyclic randomization
  task randomize_value();
    if (current_index >= cycle_length) begin
      current_index = 0; // Reset index if it exceeds cycle length
    end
    assert(this.randomize()) 
    else $fatal("Randomization failed");
    current_index++;
  endtask
endclass

module tb_top;
  initial begin
    int unsigned values[] = '{10, 20, 30, 40};
    packet pkt = new(values.size(), values);
    // Perform cyclic randomization
    for (int i = 0; i < 10; i++) begin
      pkt.randomize_value();
      $display("Randomized value: %0d", pkt.value);
    end
  end
endmodule
//output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Apr  6 06:27 2025
Randomized value: 10
Randomized value: 20
Randomized value: 30
Randomized value: 40
Randomized value: 10
Randomized value: 20
Randomized value: 30
Randomized value: 40
Randomized value: 10
Randomized value: 20
           V C S   S i m u l a t i o n   R e p o r t 
