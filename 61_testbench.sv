//61.WAC to generate unique values in a a dynamic array of size 50 without using unique keyword
class my_packet;  
  rand bit [7:0] d[]; 
  constraint c1 {d.size() == 30;}    
  constraint c2 {
    foreach (d[i]) {
      foreach (d[j]) {
        if (i != j) {
          d[i] != d[j]; // Ensure each element is different from others
        }
      }
    }
  }
          
endclass

module tb_top;  
  initial begin    
    my_packet pkt;
    pkt = new();   
    repeat(5) begin
    pkt.randomize();     
    $display("The Generated Pattern is = %0p", pkt.d);
    end
  end 
endmodule
//Output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Apr  6 05:09 2025
The Generated Pattern is = '{'hc7, 'h4f, 'hb3, 'h69, 'h95, 'h92, 'hbc, 'h93, 'ha2, 'hac, 'hb1, 'h9d, 'h56, 'h3e, 'h3c, 'hff, 'hec, 'hc1, 'he7, 'hfc, 'h65, 'h8f, 'h45, 'h5c, 'h2, 'h40, 'hee, 'he, 'hd8, 'h68} 
The Generated Pattern is = '{'hd8, 'had, 'h1b, 'h4, 'hf2, 'h1c, 'hda, 'h60, 'hb1, 'he6, 'h67, 'h22, 'h14, 'hd7, 'h4b, 'hd2, 'h0, 'h7a, 'hf5, 'h6d, 'h77, 'h2b, 'hfd, 'h89, 'hdb, 'hbf, 'h6b, 'hf8, 'h3, 'h71} 
The Generated Pattern is = '{'hf9, 'hfa, 'had, 'hfe, 'h18, 'ha4, 'h74, 'h59, 'he5, 'h8f, 'h21, 'h8d, 'h5d, 'hff, 'h48, 'hdf, 'hc3, 'h1b, 'h55, 'h4e, 'h9, 'h6, 'h27, 'hb9, 'h9d, 'hda, 'ha9, 'h67, 'hbd, 'h32} 
The Generated Pattern is = '{'hfb, 'h19, 'hf3, 'h3e, 'hbc, 'ha8, 'h8a, 'hb4, 'h43, 'hdc, 'hd5, 'hcb, 'h74, 'hbe, 'h42, 'hd7, 'h1, 'h81, 'h88, 'hfd, 'h71, 'h51, 'hb6, 'hd9, 'ha, 'h1d, 'h23, 'h66, 'h94, 'hb0} 
The Generated Pattern is = '{'h4e, 'h26, 'hfd, 'hfa, 'h86, 'h10, 'hd1, 'hec, 'h57, 'h47, 'hbf, 'hcd, 'h17, 'hf0, 'h94, 'he8, 'h6f, 'hda, 'h89, 'hb2, 'h1c, 'h5, 'h49, 'hc, 'h2d, 'h76, 'h0, 'h14, 'h3e, 'hea} 
           V C S   S i m u l a t i o n   R e p o r t         
