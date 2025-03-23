//40.WAC to generate three consecutive numbers with sum as 33
class packet;
  rand int num1, num2, num3;                 // Three variables to hold the consecutive numbers

  // Constraints to ensure the numbers are consecutive and their sum equals 33
  constraint c1 {
             num2 == num1 + 1;              // Second number is one greater than the first
             num3 == num2 + 1;             // Third number is one greater than the second
             num1 + num2 + num3 == 33;    // Sum of all three numbers equals 33
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
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Mar 23 09:39 2025
Generated Consecutive Numbers are : num1=10, num2=11, num3=12
Generated Consecutive Numbers are : num1=10, num2=11, num3=12
Generated Consecutive Numbers are : num1=10, num2=11, num3=12
Generated Consecutive Numbers are : num1=10, num2=11, num3=12
Generated Consecutive Numbers are : num1=10, num2=11, num3=12
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
