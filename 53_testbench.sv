//53.WAC to generate pattern of 010203040506070809
class my_packet;  
  rand int d[];   
  constraint c1 {d.size ()==18;}
  constraint c2 {                      
    foreach (d[i]) 
      if (i%2==0) 
        d[i] == 0; 
      else     
        d[i] == ((i+1)/2);     
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
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Apr  5 00:26 2025
The Generated Pattern in iteration           0 is = '{0, 1, 0, 2, 0, 3, 0, 4, 0, 5, 0, 6, 0, 7, 0, 8, 0, 9} 
The Generated Pattern in iteration           1 is = '{0, 1, 0, 2, 0, 3, 0, 4, 0, 5, 0, 6, 0, 7, 0, 8, 0, 9} 
The Generated Pattern in iteration           2 is = '{0, 1, 0, 2, 0, 3, 0, 4, 0, 5, 0, 6, 0, 7, 0, 8, 0, 9} 
The Generated Pattern in iteration           3 is = '{0, 1, 0, 2, 0, 3, 0, 4, 0, 5, 0, 6, 0, 7, 0, 8, 0, 9} 
The Generated Pattern in iteration           4 is = '{0, 1, 0, 2, 0, 3, 0, 4, 0, 5, 0, 6, 0, 7, 0, 8, 0, 9} 
The Generated Pattern in iteration           5 is = '{0, 1, 0, 2, 0, 3, 0, 4, 0, 5, 0, 6, 0, 7, 0, 8, 0, 9} 
The Generated Pattern in iteration           6 is = '{0, 1, 0, 2, 0, 3, 0, 4, 0, 5, 0, 6, 0, 7, 0, 8, 0, 9} 
The Generated Pattern in iteration           7 is = '{0, 1, 0, 2, 0, 3, 0, 4, 0, 5, 0, 6, 0, 7, 0, 8, 0, 9} 
The Generated Pattern in iteration           8 is = '{0, 1, 0, 2, 0, 3, 0, 4, 0, 5, 0, 6, 0, 7, 0, 8, 0, 9} 
The Generated Pattern in iteration           9 is = '{0, 1, 0, 2, 0, 3, 0, 4, 0, 5, 0, 6, 0, 7, 0, 8, 0, 9} 
           V C S   S i m u l a t i o n   R e p o r t 
