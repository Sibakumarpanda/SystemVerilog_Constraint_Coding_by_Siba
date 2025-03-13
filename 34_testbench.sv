//34.WAC to generate Prime numbers between 100
class prime_number_generator;
  randc int number; // The number to be generated
  // Constraint to ensure the number is between 2 and 100
  constraint number_range { number inside {[2:100]};}
  // Function to check if a number is prime
  function bit is_prime(int num);
    if (num < 2) return 0;    
    for (int i = 2; i <= num/2 ; i++) begin 
      //The loop only needs to check up to num/2 because if num is divisible 
      //by any number greater than num/2, it would have already been divisible by a smaller number.
      if (num % i == 0) return 0;
    end    
    return 1;
  endfunction

  // Post-randomization function to ensure the number is prime
  function void post_randomize();
    while (!is_prime(number)) begin
      randomize();
    end
    $display("Generated prime number: %0d", number);
  endfunction
endclass

module tb_top;
  initial begin
    prime_number_generator pkt;
    pkt = new();
    repeat (10) begin
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
Generated prime number: 73
Generated prime number: 73
Generated prime number: 43
Generated prime number: 43
Generated prime number: 43
Generated prime number: 43
Generated prime number: 43
Generated prime number: 43
Generated prime number: 43
Generated prime number: 5
Generated prime number: 5
Generated prime number: 5
Generated prime number: 47
Generated prime number: 47
Generated prime number: 47
Generated prime number: 89
Generated prime number: 89
Generated prime number: 89
Generated prime number: 89
Generated prime number: 89
Generated prime number: 89
Generated prime number: 89
Generated prime number: 89
Generated prime number: 89
Generated prime number: 89
Generated prime number: 97
Generated prime number: 97
Generated prime number: 59
Generated prime number: 59
Generated prime number: 59
Generated prime number: 59
Generated prime number: 59
Generated prime number: 59
Generated prime number: 13
Generated prime number: 17
Generated prime number: 17
Generated prime number: 2
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
TOOL:	xrun	23.09-s001: Exiting on Mar 13, 2025 at 01:21:46 EDT  (total: 00:00:02)
Done
