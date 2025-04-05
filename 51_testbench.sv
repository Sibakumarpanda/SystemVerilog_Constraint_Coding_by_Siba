//51.WAC to generate pattern 1100110011001100
//This pattern repeats every four bits, creating a consistent sequence across the entire array. 
//The constraint effectively divides the array into groups of four bits and applies the pattern logic to each group
class my_packet;  
  rand bit d[];   
  constraint c1 {d.size ()==20;}
  constraint c2 {                      
    foreach (d[i]) 
      if ((i % 4) < 2) 
        d[i] == 1; // Set bits 2 and 3 of each group to 1
      else     
        d[i] == 0; // Set bits 0 and 1 of each group to 0     
    }
  
endclass

module tb_top;  
  initial begin    
    my_packet pkt;
    pkt=new();
    
    for (int i=0; i<10;i++) begin
      pkt.randomize();     
      $display("The Generated Pattern in iteration %d is = %0p",i,pkt.d);     
    end    
  end 
endmodule  
//Output
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Apr  5 00:22 2025
The Generated Pattern in iteration           0 is = '{'h1, 'h1, 'h0, 'h0, 'h1, 'h1, 'h0, 'h0, 'h1, 'h1, 'h0, 'h0, 'h1, 'h1, 'h0, 'h0, 'h1, 'h1, 'h0, 'h0} 
The Generated Pattern in iteration           1 is = '{'h1, 'h1, 'h0, 'h0, 'h1, 'h1, 'h0, 'h0, 'h1, 'h1, 'h0, 'h0, 'h1, 'h1, 'h0, 'h0, 'h1, 'h1, 'h0, 'h0} 
The Generated Pattern in iteration           2 is = '{'h1, 'h1, 'h0, 'h0, 'h1, 'h1, 'h0, 'h0, 'h1, 'h1, 'h0, 'h0, 'h1, 'h1, 'h0, 'h0, 'h1, 'h1, 'h0, 'h0} 
The Generated Pattern in iteration           3 is = '{'h1, 'h1, 'h0, 'h0, 'h1, 'h1, 'h0, 'h0, 'h1, 'h1, 'h0, 'h0, 'h1, 'h1, 'h0, 'h0, 'h1, 'h1, 'h0, 'h0} 
The Generated Pattern in iteration           4 is = '{'h1, 'h1, 'h0, 'h0, 'h1, 'h1, 'h0, 'h0, 'h1, 'h1, 'h0, 'h0, 'h1, 'h1, 'h0, 'h0, 'h1, 'h1, 'h0, 'h0} 
The Generated Pattern in iteration           5 is = '{'h1, 'h1, 'h0, 'h0, 'h1, 'h1, 'h0, 'h0, 'h1, 'h1, 'h0, 'h0, 'h1, 'h1, 'h0, 'h0, 'h1, 'h1, 'h0, 'h0} 
The Generated Pattern in iteration           6 is = '{'h1, 'h1, 'h0, 'h0, 'h1, 'h1, 'h0, 'h0, 'h1, 'h1, 'h0, 'h0, 'h1, 'h1, 'h0, 'h0, 'h1, 'h1, 'h0, 'h0} 
The Generated Pattern in iteration           7 is = '{'h1, 'h1, 'h0, 'h0, 'h1, 'h1, 'h0, 'h0, 'h1, 'h1, 'h0, 'h0, 'h1, 'h1, 'h0, 'h0, 'h1, 'h1, 'h0, 'h0} 
The Generated Pattern in iteration           8 is = '{'h1, 'h1, 'h0, 'h0, 'h1, 'h1, 'h0, 'h0, 'h1, 'h1, 'h0, 'h0, 'h1, 'h1, 'h0, 'h0, 'h1, 'h1, 'h0, 'h0} 
The Generated Pattern in iteration           9 is = '{'h1, 'h1, 'h0, 'h0, 'h1, 'h1, 'h0, 'h0, 'h1, 'h1, 'h0, 'h0, 'h1, 'h1, 'h0, 'h0, 'h1, 'h1, 'h0, 'h0} 
           V C S   S i m u l a t i o n   R e p o r t 
