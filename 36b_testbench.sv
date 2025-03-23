//36b.WAC to generate 10 Unique numbers in between 1-50 without using unique keyword in a Dynamic array
class my_darray_packet;
   randc int num[];               // Dynamic array to store numbers
   constraint num_range { num.size() == 10; }   
   constraint c1 {
      foreach (num[i]) {
      num[i] inside {[1:50]}; // Each number is between 1 and 50
      }
   }      
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
//output
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Mar 23 05:26 2025
The Generated Pattern is : a='{49, 4, 47, 3, 17, 17, 33, 3, 46, 31} 
The Generated Pattern is : a='{41, 42, 45, 48, 36, 47, 5, 30, 44, 41} 
The Generated Pattern is : a='{40, 15, 49, 30, 24, 9, 17, 38, 31, 18} 
The Generated Pattern is : a='{4, 14, 24, 38, 46, 20, 37, 21, 3, 50} 
The Generated Pattern is : a='{10, 34, 15, 25, 21, 19, 23, 39, 1, 3} 
           V C S   S i m u l a t i o n   R e p o r t      
