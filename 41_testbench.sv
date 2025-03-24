//41.WAC to generate three NON consecutive numbers with sum as 33

class packet;
  rand bit [6:0] num1, num2, num3;                 // Three variables to hold the consecutive numbers  
  // Constraints to ensure the numbers are non-consecutive and their sum equals 33  
  constraint c1 {
             num1 + num2 + num3 == 33;                // Ensure the sum of all three numbers is 33

             // Ensure the numbers are not consecutive
             !(num2 == num1 + 1 || num2 == num1 - 1); // num2 is not consecutive to num1
             !(num3 == num2 + 1 || num3 == num2 - 1); // num3 is not consecutive to num2
             !(num3 == num1 + 1 || num3 == num1 - 1); // num3 is not consecutive to num1
    
              }
  
endclass

module tb_top;
  initial begin
    packet pkt;
    pkt = new();    
    repeat (5) begin
    // Randomize the object and display the generated values
    if (pkt.randomize()) begin
      $display("Generated Consecutive Numbers are : num1=%0d, num2=%0d, num3=%0d", pkt.num1, pkt.num2, pkt.num3);
    end else begin
      $display("Randomization failed ");
    end
  end
  end
endmodule
//Output
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Mar 24 10:58 2025
Generated Consecutive Numbers are : num1=19, num2=3, num3=11
Generated Consecutive Numbers are : num1=8, num2=24, num3=1
Generated Consecutive Numbers are : num1=6, num2=26, num3=1
Generated Consecutive Numbers are : num1=5, num2=26, num3=2
Generated Consecutive Numbers are : num1=6, num2=18, num3=9
           V C S   S i m u l a t i o n   R e p o r t 
