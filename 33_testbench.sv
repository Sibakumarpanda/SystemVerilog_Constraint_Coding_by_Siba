//33.WAC to generate Palindrome numbers between 1-100
class palindrome_generator_packet;  
  rand int number; // The number to be generated
  constraint c1 { number inside {[1:200]};}
  // Function to check if a number is a palindrome
  function bit is_palindrome(int num);
    int reversed = 0;
    int original = num;
    while (num > 0) begin
      reversed = (reversed * 10) + (num % 10);      
      num=num/10; //num /= 10;
    end
    return (original == reversed);
  endfunction

  // Post-randomization function to ensure the number is a palindrome
  function void post_randomize();
    while (!is_palindrome(number)) begin
      randomize();
    end 
    $display("Generated palindrome number: %0d", number);
  endfunction  
endclass

module tb_top;
  initial begin
    palindrome_generator_packet pkt;
    pkt = new();

    repeat (8) begin
      if (pkt.randomize()) begin
        // The number is printed in the post_randomize function
      end else begin
        $display("Randomization failed.");
      end
    end
  end
endmodule
//Output
xcelium> source /xcelium23.09/tools/xcelium/files/xmsimrc
xcelium> run
Generated palindrome number: 181
Generated palindrome number: 181
Generated palindrome number: 181
Generated palindrome number: 181
Generated palindrome number: 181
Generated palindrome number: 88
Generated palindrome number: 88
Generated palindrome number: 88
Generated palindrome number: 88
Generated palindrome number: 88
Generated palindrome number: 88
Generated palindrome number: 88
Generated palindrome number: 88
Generated palindrome number: 88
Generated palindrome number: 88
Generated palindrome number: 4
Generated palindrome number: 6
Generated palindrome number: 6
Generated palindrome number: 6
Generated palindrome number: 6
Generated palindrome number: 11
Generated palindrome number: 11
Generated palindrome number: 11
Generated palindrome number: 11
Generated palindrome number: 11
Generated palindrome number: 11
Generated palindrome number: 11
Generated palindrome number: 11
Generated palindrome number: 11
Generated palindrome number: 11
Generated palindrome number: 11
Generated palindrome number: 11
Generated palindrome number: 11
Generated palindrome number: 11
Generated palindrome number: 9
Generated palindrome number: 9
Generated palindrome number: 9
Generated palindrome number: 9
Generated palindrome number: 9
Generated palindrome number: 9
Generated palindrome number: 9
Generated palindrome number: 9
Generated palindrome number: 9
Generated palindrome number: 9
Generated palindrome number: 9
Generated palindrome number: 9
Generated palindrome number: 9
Generated palindrome number: 9
Generated palindrome number: 9
Generated palindrome number: 44
Generated palindrome number: 44
Generated palindrome number: 44
Generated palindrome number: 44
Generated palindrome number: 44
Generated palindrome number: 44
Generated palindrome number: 44
Generated palindrome number: 2
Generated palindrome number: 2
Generated palindrome number: 2
Generated palindrome number: 2
Generated palindrome number: 2
Generated palindrome number: 2
Generated palindrome number: 2
Generated palindrome number: 2
xmsim: *W,RNQUIE: Simulation is complete.
