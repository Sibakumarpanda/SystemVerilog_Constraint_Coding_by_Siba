//38.WAC to generate 20 dynamic array values in between 1-100 in Ascending order(sorting)
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
        d[i] >= d[i-1]; 
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
      $display ("The Generated values in Ascending Order are =%0p",pkt.d);         
    end
  end  
endmodule
     
//Output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Mar 23 06:34 2025
The Generated values in Ascending Order are ='{68, 75, 85, 97, 97, 97, 97, 97, 97, 97, 97, 97, 100, 100, 100, 100, 100, 100, 100, 100} 
The Generated values in Ascending Order are ='{34, 34, 43, 48, 80, 81, 81, 82, 82, 82, 82, 82, 96, 96, 97, 97, 98, 99, 99, 99} 
The Generated values in Ascending Order are ='{45, 79, 79, 79, 79, 79, 80, 80, 80, 80, 80, 80, 85, 95, 95, 95, 97, 97, 97, 98} 
The Generated values in Ascending Order are ='{4, 6, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 83, 84, 91, 92, 94, 96, 96, 97} 
The Generated values in Ascending Order are ='{14, 18, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 48, 59, 72, 90, 95, 95, 95, 96} 
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns     
