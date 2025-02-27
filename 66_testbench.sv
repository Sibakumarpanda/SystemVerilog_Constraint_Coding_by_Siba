//66.To find the largest number in a Dynamic array of 10 random element
class my_packet;
  randc bit [3:0] da[];   
  // Task to find the largest element in the dynamic array
  task find_larget_element(output bit [3:0] max_value);
    int i;    
    if (da.size() == 0) begin
      $display("Array is empty.");
      max_value = '0; // Return a default value if the array is empty
      return;
    end
    max_value = da[0]; // Initialize max_value with the first element
    for (i = 1; i < da.size(); i++) begin
      if (da[i] > max_value) begin
        max_value = da[i];
      end
    end    
  endtask
    
endclass
 
module tb_top;
  my_packet pkt;
  bit [3:0] max_value;  
  initial begin
    pkt=new();
    pkt.da=new[10];
    repeat (10)begin
      pkt.randomize();      
      $display("The elements in the Dynamic array is: %0p",pkt.da);
      pkt.find_larget_element(max_value);
      $display("The largest element in the Dynamic array is: %0h", max_value);
    end
  end  
endmodule
//Output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Feb 26 22:20 2025
The elements in the Dynamic array is: '{'he, 'ha, 'ha, 'hb, 'h7, 'hc, 'h4, 'h6, 'h7, 'hf} 
The largest element in the Dynamic array is: f
The elements in the Dynamic array is: '{'h4, 'h4, 'h2, 'hc, 'hb, 'hf, 'h1, 'h1, 'h3, 'h0} 
The largest element in the Dynamic array is: f
The elements in the Dynamic array is: '{'h3, 'h8, 'h4, 'he, 'hd, 'hd, 'ha, 'h0, 'h6, 'h9} 
The largest element in the Dynamic array is: e
The elements in the Dynamic array is: '{'hf, 'h7, 'h1, 'hf, 'he, 'he, 'h0, 'h8, 'hc, 'h2} 
The largest element in the Dynamic array is: f
The elements in the Dynamic array is: '{'ha, 'hf, 'h3, 'h8, 'hc, 'h6, 'h3, 'he, 'h9, 'h1} 
The largest element in the Dynamic array is: f
The elements in the Dynamic array is: '{'h0, 'h9, 'h0, 'hd, 'hf, 'h9, 'h7, 'h4, 'h1, 'he} 
The largest element in the Dynamic array is: f
The elements in the Dynamic array is: '{'h1, 'h3, 'hc, 'ha, 'ha, 'h8, 'hc, 'h5, 'he, 'ha} 
The largest element in the Dynamic array is: e
The elements in the Dynamic array is: '{'hd, 'h5, 'h8, 'h9, 'h3, 'h7, 'h2, 'h7, 'h4, 'h8} 
The largest element in the Dynamic array is: d
The elements in the Dynamic array is: '{'h2, 'h6, 'he, 'h3, 'h1, 'ha, 'h5, 'h9, 'h5, 'h5} 
The largest element in the Dynamic array is: e
The elements in the Dynamic array is: '{'h7, 'hd, 'hb, 'h2, 'h2, 'h3, 'hb, 'hf, 'hb, 'hb} 
The largest element in the Dynamic array is: f
           V C S   S i m u l a t i o n   R e p o r t 
