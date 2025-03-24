//43.WAC to generate alternating positive-negative sequence
class alt_seq_packet;
  rand int q[$];        //Use signed integers to allow negative values
  constraint c1 { q.size() == 16; // Adjust the size as needed
                 }  
   constraint c2 {      
      foreach (q[i]) {
         if (i % 2 == 0) {
           //q[i] > 0; // Positive values at even indices/places
           q[i] inside {[1:15]};
          } 
         else 
           {
            //q[i] < 0; // Negative values at odd indices
             q[i] inside {[-15:-1]}; 
           }
       }
    }

endclass
           
module tb_top;
  initial begin
    alt_seq_packet pkt = new();    
    repeat (5) begin    
    if (pkt.randomize()) begin
      $display("The Generated alternating positive-negative sequence is =%0p",pkt.q);
    end else begin
      $display("Randomization failed!");
    end
  end
end
endmodule
//Output
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Mar 24 11:10 2025
The Generated alternating positive-negative sequence is ='{2, -4, 8, -11, 7, -4, 8, -15, 10, -7, 12, -15, 12, -15, 12, -1} 
The Generated alternating positive-negative sequence is ='{14, -12, 6, -4, 14, -15, 5, -1, 15, -3, 5, -14, 3, -15, 14, -11} 
The Generated alternating positive-negative sequence is ='{6, -1, 6, -1, 13, -14, 10, -9, 14, -13, 4, -7, 8, -11, 12, -14} 
The Generated alternating positive-negative sequence is ='{2, -8, 8, -4, 10, -15, 14, -7, 5, -13, 12, -1, 4, -14, 1, -6} 
The Generated alternating positive-negative sequence is ='{7, -3, 6, -9, 1, -9, 13, -12, 4, -13, 7, -8, 13, -13, 13, -12} 
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns        
