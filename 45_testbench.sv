//45.WAC to generate Increasing order value generation
class my_packet;
  rand bit[3:0] num[]; // Dynamic array to store the series
  constraint series_size { num.size() == 10; } // Define the size of the series
  constraint increasing_order_constraint {
    foreach (num[i]) {
      if (i > 0) //begin
        num[i] > num[i-1]; // Ensure each element is greater than the previous
      //end
    }
  }
 
endclass

module test;
  initial begin
    my_packet pkt = new();
    repeat (5) begin
      if (pkt.randomize()) begin
        $display("Generated increasing order seriesis : %0p", pkt.num);
    end else begin
      $display("Failed to generate increasing order series.");
    end
  end
end
endmodule
//Output
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Mar 24 11:14 2025
Generated increasing order seriesis : '{'h1, 'h5, 'h7, 'h8, 'h9, 'ha, 'hc, 'hd, 'he, 'hf} 
Generated increasing order seriesis : '{'h0, 'h1, 'h2, 'h3, 'h4, 'h6, 'h7, 'ha, 'hb, 'hf} 
Generated increasing order seriesis : '{'h1, 'h2, 'h4, 'h6, 'h8, 'h9, 'ha, 'hb, 'hc, 'hd} 
Generated increasing order seriesis : '{'h2, 'h3, 'h5, 'h6, 'h7, 'h8, 'h9, 'hd, 'he, 'hf} 
Generated increasing order seriesis : '{'h0, 'h3, 'h4, 'h5, 'h6, 'ha, 'hb, 'hc, 'hd, 'hf} 
           V C S   S i m u l a t i o n   R e p o r t     
