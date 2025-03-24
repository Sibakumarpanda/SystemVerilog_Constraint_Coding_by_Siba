//42b.WAC to generate 10 unique values in range 1-20 in a Queue using Unique keyword
class my_queue_packet;
   rand int num[$];                            // Queue to store numbers
   constraint num_range { num.size() == 10; }   
   constraint c1 {
      foreach (num[i]) {
        num[i] inside {[1:20]}; // Each number is between 1 and 20
      }
     }
  
  constraint c2 { unique {num}; }     // Constraint to ensure all elements in the array are unique , NOTE:The unique constraint is used to ensure that a collection of values is unique, but it cannot be applied directly to a single variable. it will be used for an array
endclass
      
module tb_top;  
  initial begin   
    my_queue_packet pkt;
    pkt=new();    
    repeat(5)begin
      pkt.randomize();
      $display("The Generated Pattern in Queue is : a=%0p",pkt.num);
      //$display("The Generated Pattern in %0d iteration is : %d", i,pkt.num);
    end 
  end  
endmodule 
//Output
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Mar 24 11:09 2025
The Generated Pattern in Queue is : a='{20, 14, 16, 13, 4, 18, 9, 12, 3, 7} 
The Generated Pattern in Queue is : a='{5, 6, 18, 7, 1, 9, 4, 14, 19, 15} 
The Generated Pattern in Queue is : a='{11, 18, 7, 6, 19, 20, 14, 8, 15, 9} 
The Generated Pattern in Queue is : a='{14, 7, 13, 10, 6, 18, 11, 16, 9, 20} 
The Generated Pattern in Queue is : a='{9, 4, 11, 10, 20, 15, 7, 2, 14, 12} 
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns     
