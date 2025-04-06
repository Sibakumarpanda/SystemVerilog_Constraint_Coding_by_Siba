//67.Generate multiples of 7 without using rand keyword and constraints in a class
class multiple_of_seven_packet;
  int starting;
  int ending;
  int index;
  int multiples[];

  // Constructor to initialize the range
  function new(int start_val, int end_val);
    starting = start_val;
    ending   = end_val;
  endfunction

  // Method to calculate multiples of 7
  function void calculate_multiples();
    int count = 0;
    // First, determine the number of multiples to allocate the array size
    for (int i = starting; i <= ending; i++) begin
      if (i % 7 == 0) begin
        count++;
      end
    end

    // Resize the array to hold all multiples
    multiples = new[count];

    // Populate the array with multiples of 7
    //int index = 0;
    for (int i = starting; i <= ending; i++) begin
      if (i % 7 == 0) begin
        multiples[index++] = i;
      end
    end
  endfunction

  // Method to display the multiples
  function void display_multiples();
    $display("Multiples of 7 between %0d and %0d:", starting, ending);
    foreach (multiples[i]) begin
      $display("%0d", multiples[i]);
    end
  endfunction
endclass

module tb_top;
  initial begin
    // Create an instance of the class with the desired range
    multiple_of_seven_packet pkt = new(0, 100);

    // Calculate and display the multiples of 7
    pkt.calculate_multiples();
    pkt.display_multiples();
  end
endmodule

//Output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Apr  6 06:13 2025
Multiples of 7 between 0 and 100:
0
7
14
21
28
35
42
49
56
63
70
77
84
91
98
           V C S   S i m u l a t i o n   R e p o r t 
