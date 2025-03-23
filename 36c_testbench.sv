//36c WAC to generate 10 Unique numbers in between 1-50 using unique keyword in a Dynamic array
class my_darray_packet;
   rand int num[];                            // Dynamic array to store numbers
   constraint num_range { num.size() == 10; }   
   constraint c1 {
      foreach (num[i]) {
      num[i] inside {[1:50]}; // Each number is between 1 and 50
      }
     }
  
  constraint c2 { unique {num}; }     // Constraint to ensure all elements in the array are unique , NOTE:The unique constraint is used to ensure that a collection of values is unique, but it cannot be applied directly to a single variable. it will be used for an array     
endclass
      
module tb_top;  
  initial begin   
    my_darray_packet pkt;
    pkt=new();    
    repeat(5)begin
      pkt.randomize();
      $display("The Generated Pattern is : a=%0p",pkt.num);
      //$display("The Generated Pattern in %0d iteration is : %d", i,pkt.num);
    end 
  end  
endmodule 
//Output     
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Mar 23 05:43 2025
The Generated Pattern is : a='{49, 46, 21, 47, 19, 20, 34, 33, 18, 10} 
The Generated Pattern is : a='{13, 15, 44, 16, 3, 20, 12, 33, 45, 37} 
The Generated Pattern is : a='{26, 44, 18, 17, 47, 50, 21, 14, 9, 12} 
The Generated Pattern is : a='{34, 17, 33, 25, 16, 45, 28, 40, 23, 49} 
The Generated Pattern is : a='{21, 9, 27, 25, 43, 13, 28, 23, 48, 26} 
           V C S   S i m u l a t i o n   R e p o r t 
