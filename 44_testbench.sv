//44.WAC to generate Number series with fixed increment of 2 in the range 1-30
class series_gen_packet;
  rand int num[]; // Dynamic array to store the series
  constraint series_size {num.size() == 15; } // Generate 15 numbers to cover the range 1 to 30 with increment of 2

  constraint increment_constraint { num[0] == 1; // Start the series at 1
                 foreach (num[i]) {
                   if (i > 0) //begin
                         num[i] == num[i-1] + 2; // Ensure each element is 2 more than the previous
                     //end
                 }
              }
 
endclass

module tb_top;
  initial begin
    series_gen_packet pkt = new();    
    repeat (5) begin
    if (pkt.randomize()) begin
      $display ("The Generated Numbers are : %0p",pkt.num);
    end else begin
      $display("Failed to generate number series.");
    end
  end    
  end
endmodule
//Output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Mar 24 11:12 2025
The Generated Numbers are : '{1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29} 
The Generated Numbers are : '{1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29} 
The Generated Numbers are : '{1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29} 
The Generated Numbers are : '{1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29} 
The Generated Numbers are : '{1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29} 
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns                                   
