//39.WAC to generate 20 dynamic array values in between 1-100 in Descending order(sorting)
//Ascending order is when things are arranged from smallest to largest,
//while descending order is when things are arranged from largest to smallest

class packet ;  
   randc int d [];
   constraint c1 {d.size() == 20;}  
   constraint c2 {
     foreach (d[i]) {
       d[i] inside {[1:100]}; // Each number is between 1 and 100
     }
   }   
   // Constraint to ensure the values are in ascending order,ensure each value is greater than or equal to the previous value
   constraint c3 {
      foreach (d[i]) {
        if (i > 0) 
          d[i] <= d[i-1]; 
     }
   }             
endclass
       
module tb_top;  
  initial begin
    packet pkt;
    pkt=new ();   
    repeat(5) begin
      pkt.randomize();
      //pkt.d.sort();
      $display ("The Generated values in Descending Order are =%0p",pkt.d);        
    end
  end  
endmodule
     
//Output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Mar 23 06:34 2025
The Generated values in Descending Order are ='{99, 97, 97, 97, 97, 97, 97, 97, 97, 97, 97, 97, 92, 41, 41, 14, 4, 4, 2, 2} 
The Generated values in Descending Order are ='{90, 88, 83, 82, 82, 82, 82, 82, 82, 82, 82, 82, 66, 2, 1, 1, 1, 1, 1, 1} 
The Generated values in Descending Order are ='{93, 93, 88, 81, 81, 81, 80, 80, 80, 80, 80, 80, 23, 23, 11, 3, 3, 3, 3, 3} 
The Generated values in Descending Order are ='{61, 35, 26, 14, 10, 10, 9, 9, 9, 8, 8, 8, 8, 7, 5, 5, 5, 5, 4, 4} 
The Generated values in Descending Order are ='{46, 40, 21, 20, 20, 19, 19, 19, 19, 19, 19, 19, 19, 16, 10, 10, 7, 6, 6, 5} 
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns     
