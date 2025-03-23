//37.WAC to generate Non-randomize unique numbers in between 1-50
//NOTE-If you want to generate non-randomized unique numbers between 1 and 50,
//you can populate the array sequentially within the desired range, rather than relying on randomization.

class packet;
  int a[10]; // Array to hold 10 unique numbers
  // Task to generate non-randomized unique numbers
  function void generate_sequence();
    for (int i = 0; i < 10; i++) begin
      a[i] = i + 1; // Assign numbers sequentially starting from 1
    end
  endfunction  
endclass

module tb_top;
  initial begin
    packet pkt;
    pkt = new();
    pkt.generate_sequence(); // Call the function to populate the array
    // Display the generated numbers
    foreach (pkt.a[i]) begin
      $display("Non-Randomized Unique Number at %0d Place : %0d", i, pkt.a[i]);
    end
  end
endmodule

//Output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Mar 23 05:56 2025
Non-Randomized Unique Number at 0 Place : 1
Non-Randomized Unique Number at 1 Place : 2
Non-Randomized Unique Number at 2 Place : 3
Non-Randomized Unique Number at 3 Place : 4
Non-Randomized Unique Number at 4 Place : 5
Non-Randomized Unique Number at 5 Place : 6
Non-Randomized Unique Number at 6 Place : 7
Non-Randomized Unique Number at 7 Place : 8
Non-Randomized Unique Number at 8 Place : 9
Non-Randomized Unique Number at 9 Place : 10
           V C S   S i m u l a t i o n   R e p o r t 
